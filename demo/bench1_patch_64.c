#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <unistd.h>

extern int global_data;
extern void print_global();

void fix_init(void*base,void* p_global_data,void* p_print_global) {
    u_int64_t global_data_off = 0x0000000000200ff8;             // objdump -R fix.so | grep global_data
    u_int64_t print_global_off = 0x0000000000201028;            // objdump -R fix.so | grep print_global
    void** global_data_got = (void**)(((u_int64_t)base) + global_data_off);
    void** print_global_got = (void**)(((u_int64_t)base) + print_global_off);
    const int pagesize = sysconf(_SC_PAGE_SIZE);
    char* pg = (char*) ((size_t) global_data_got & ~(pagesize - 1));
    mprotect(pg, pagesize, PROT_READ | PROT_WRITE | PROT_EXEC);
    *global_data_got = p_global_data;
    *print_global_got = p_print_global;
    mprotect(pg, pagesize, PROT_READ | PROT_EXEC);
    printf("fix_init\n");
}

__asm__(
    ".global fix_is_prime\n"
    "fix_is_prime:\n"
    "pop %rax\n\t"
    "jmp is_prime\n\t"
);

static __attribute__ ((noinline)) __attribute__ ((__used__)) int is_prime(int n) {
    print_global();
    global_data+=2;
    for(int i=2;i*i<n;i++){
        if(n%i==0) return 0;
    }
    return 1;
}
