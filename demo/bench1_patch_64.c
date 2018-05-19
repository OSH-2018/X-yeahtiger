#include <stdio.h>

int global_y;
int* global_data;

void fix_init(int* p_global_data) {
    global_data = p_global_data;
    printf("fix_init");
}

__asm__(
    ".global fix_is_prime\n"
    "fix_is_prime:\n"
    "pop %rax\n\t"
    "jmp is_prime\n\t"
);
static int is_prime(int n) {
    (*global_data)+=2;
    global_y++;
    for(int i=2;i*i<n;i++){
        if(n%i==0) return 0;
    }
    printf("fix\n");
    return 1;
}
