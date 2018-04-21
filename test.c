#include <stdio.h>  
#include <signal.h>  
#include <unistd.h>

void signal_handle(int sig_num)  
{  
    if(sig_num == SIGUSR1)  
    {  
        printf("\nCapture SIGUSR1\n");  
    }  
    printf("signal_handle running ...\n");  
}  

int main(int argc,char **argv)  
{  
    signal(SIGUSR1, signal_handle);  
    while(1)   
    {  
        sleep(1); putchar('1'); fflush(stdout);
	sleep(1); putchar('2'); fflush(stdout);
	sleep(1); putchar('3'); fflush(stdout);
	sleep(1); putchar('4'); fflush(stdout);
    }  
    return 0 ;  
}
