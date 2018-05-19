#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <signal.h>
#include <sys/mman.h>
extern int is_prime(int);

int is_prime_fix(int n)
{
    printf("fix!\n");
    for(int i=2; i*i<n; i++)
    {
        if(n%i==0)
            return 0;
    }
    return 1;
}


void signal_handle(int sig_num)
{
    if(sig_num == SIGUSR1)
    {
        printf("\nCapture SIGUSR1\n");

        char *p = (char *)is_prime;
        int pagesize = sysconf(_SC_PAGE_SIZE);
        p = (char*) ((size_t) p & ~(pagesize - 1));
        mprotect( p, pagesize, PROT_READ | PROT_WRITE | PROT_EXEC );
        mprotect( p + pagesize, pagesize, PROT_READ | PROT_WRITE | PROT_EXEC );
		 //change the code
        p = (char *)is_prime;
        *p = (char)0xeb;
        *(p + 1) = (char)((char *)is_prime_fix - (p + 2));

        mprotect( p, pagesize, PROT_READ | PROT_EXEC );
        mprotect( p + pagesize, pagesize, PROT_READ | PROT_EXEC );
    }
    printf("signal_handle running ...\n");

}

void shell()
{
    signal(SIGUSR1, signal_handle);
}
