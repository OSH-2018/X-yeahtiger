#include <stdio.h>

int global_y;
int* global_data;

void fix_init(int* p_global_data) {
    global_data = p_global_data;
    printf("fix_init");
}

int fix_is_prime(int n) {
    *global_data++;
    global_y++;
    return 0;
    printf("fix\n");
    for(int i=2;i*i<n;i++){
        if(n%i==0) return 0;
    }
    return 1;
}
