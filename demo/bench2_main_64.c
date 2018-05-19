#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <signal.h>
#include <sys/mman.h>
#include <dlfcn.h>
#include <setjmp.h>

int global_data;

__attribute__ ((noinline)) int is_prime(int n) {
    global_data++;
    for(int i=2;i<n;i++){
        if(n%i==0) return 0;
    }
    return 1;
}

void print_prime() {
    for(int i=2;i<10000000;i++) {
        if(is_prime(i)){
            sleep(1);
            printf("%d\n",i);
        }
    }
}

int main(){
    print_prime();
    return 0;
}