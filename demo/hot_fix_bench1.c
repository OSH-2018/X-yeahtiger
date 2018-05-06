#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int is_prime(int n) {
    for(int i=2;i<n;i++){
        if(n%i==0) return 0;
    }
    return 1;
}

int is_prime_fix(int n) {
    for(int i=2;i*i<n;i++){
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