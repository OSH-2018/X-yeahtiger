#define _GNU_SOURCE

#include <dlfcn.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <unistd.h>

typedef u_int64_t ptr_t;

void do_fix() {

  // load
  void *handle = dlopen("./fix.so", RTLD_LAZY); // config: fix.so
  if (!handle) {
    fprintf(stderr, "%s\n", dlerror());
    exit(-1);
  }

  // init
  Dl_info so_info, main_info;
  int rc;

  // get main_info
  rc = dladdr(do_fix, &main_info);
  if (!rc) {
    fprintf(stderr, "%s\n", dlerror());
    exit(-1);
  }

  // void* base_main,void* base_so,void* ext_table[]
  void (*tigerfix_init)() = dlsym(handle, "tigerfix_init");
  rc = dladdr(tigerfix_init, &so_info);
  if (!tigerfix_init || !rc) {
    fprintf(stderr, "%s\n", dlerror());
    exit(-1);
  }

  const int pagesize = sysconf(_SC_PAGE_SIZE);

  // redirect symbols in so
  ptr_t *ext_symbols = malloc(sizeof(ptr_t) * 4); // config: external symbols
  ext_symbols[0] = (ptr_t)0x0000000000200ff8; // objdump -R fix.so | grep global_data
  ext_symbols[1] = (ptr_t)0x000000000020202c; // nm a.out | grep global_data
  ext_symbols[2] = (ptr_t)0x0000000000200ff0; // objdump -R fix.so | grep print_global
  ext_symbols[3] = (ptr_t)0x0000000000000a50; // nm a.out | grep print_global

  ptr_t so_base = (ptr_t)so_info.dli_fbase;
  ptr_t main_base = (ptr_t)main_info.dli_fbase;

  for (int i = 0; i < 2; i++) {
    ptr_t *p_got_item = (ptr_t *)(ext_symbols[2 * i] + so_base);
    ptr_t real_addr = ext_symbols[2 * i + 1] + main_base;

    void *pg = (void *)((ptr_t)p_got_item & ~(pagesize - 1));
    mprotect(pg, pagesize, PROT_READ | PROT_WRITE | PROT_EXEC);

    *p_got_item = real_addr;
    printf("%p : %p\n", p_got_item, (void *)real_addr);
  }

  // fix
  ptr_t *fix_units = malloc(sizeof(ptr_t) * 2); // config: fix units
  fix_units[0] = (ptr_t)0x0000000000000cb0;     // nm a.out | grep is_prime
  fix_units[1] = (ptr_t)0x0000000000000390;     // nm fix.so | grep fix_is_prime
  for (int i = 0; i < 1; i++) {
    ptr_t old_func = main_base + fix_units[2 * i];
    ptr_t new_func = so_base + fix_units[2 * i + 1];
    printf("0x%lx : 0x%lx\n", old_func, new_func);
    void *pg = (void *)(old_func & ~(pagesize - 1));
    mprotect(pg, pagesize, PROT_READ | PROT_WRITE | PROT_EXEC);

    // modify entry
    u_int8_t *old_entry = (u_int8_t *)old_func;

    // push %rax
    old_entry[0] = 0x50;

    // movq %0,%%rax
    old_entry[1] = 0x48;
    old_entry[2] = 0xb8;
    *((ptr_t *)(old_func + 3)) = new_func;

    // jmpq *%eax
    old_entry[11] = 0xff;
    old_entry[12] = 0xe0;

    old_entry[13] = old_entry[14] = old_entry[15] = 0x90;

    mprotect(pg, pagesize, PROT_READ | PROT_EXEC);
  }
}