#include <stdio.h>
#include <unistd.h>
#include <sys/ptrace.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <sys/reg.h>   /* For constants ORIG_RAX etc */
#include <sys/mman.h>

void signal_handle(int sig_num)  
{  
    if(sig_num == SIGTRAP)  
    {  
        printf("\nCapture SIGTRAP\n");  
    }  
    printf("signal_handle running ...\n");  
}  

int main(){
    signal(SIGTRAP, signal_handle);  
    __asm("INT $0x03");
    while(1){}
    return 0;
}
