#include <stdio.h>

int vm(int (*pf)()){
    return pf();
}
int fun(){
    return 1;
}
int main(){
    printf("%d\n",vm(fun));
    return 0;
}