#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <unistd.h>

extern int global_data;
extern void print_global();

__attribute__ ((noinline)) __attribute__ ((__used__)) void tigerfix_init() {
}

__asm__(
    ".global fix_is_prime\n"
    "fix_is_prime:\n"
    "pop %rax\n\t"
    "jmp is_prime\n\t"
);

static __attribute__ ((noinline,used)) int is_prime(int n) {
    print_global();
    global_data+=2;
    for(int i=2;i*i<n;i++){
        if(n%i==0) return 0;
    }
    return 1;
}