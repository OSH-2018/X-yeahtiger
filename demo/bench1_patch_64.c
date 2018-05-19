#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <unistd.h>

extern int global_data;

void fix_init(void*base,int* p_global_data) {
    u_int64_t global_data_off = 0x0000000000200ff8;             //  objdump -R fix.so | grep global_data
    void** global_data_got = (void**)(((u_int64_t)base) + global_data_off);
    const int pagesize = sysconf(_SC_PAGE_SIZE);
    char* pg = (char*) ((size_t) global_data_got & ~(pagesize - 1));
    mprotect(pg, pagesize, PROT_READ | PROT_WRITE | PROT_EXEC);
    *global_data_got = p_global_data;
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
    global_data+=2;
    for(int i=2;i*i<n;i++){
        if(n%i==0) return 0;
    }
    return 1;
}
