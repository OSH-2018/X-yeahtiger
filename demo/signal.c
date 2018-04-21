/*
 * signal
 * 运行上面的程序 在另一个终端中输入
 * $ pgrep -l test		（获取进程test的pid）
 * 7816 test
 * $ kill -s SIGUSR1 7816		（发送信号）
 * 则会执行signal_handle函数
 */
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
