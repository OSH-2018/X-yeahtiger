#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <signal.h>
#include <sys/mman.h>

int is_prime(int n)
{
    for(int i=2; i<n; i++)
    {
        if(n%i==0)
            return 0;
    }
    return 1;
}

//int is_prime_fix(int n)
//{
//    printf("fix!\n");
//    for(int i=2; i*i<n; i++)
//    {
//        if(n%i==0)
//            return 0;
//    }
//    return 1;
//}

void print_prime()
{
    for(int i=2; i<10000000; i++)
    {
        if(is_prime(i))
        {
            sleep(1);
            printf("%d\n",i);
        }
    }
}
/*
#pragma region shell

#define OLDFUNC "is_prime"

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
//
//        //find the address of the old function
//        int pipefd[2];
//        int savestdout = dup(1);
//        pipe(pipefd);
//        dup2(pipefd[1], 1);
//        close(pipefd[1]);
//        system("nm a.out | grep "OLDFUNC);
//        char str[4096];
//        close(1);
//		read(pipefd[0], str, sizeof(str));
//		close(pipefd[0]);
//		dup2(savestdout, 1);
//		close(savestdout);
//		char *pos = strstr(str, " "OLDFUNC"\n");
//		if(!pos){
//			printf("function not found!\n");
//			return;
//		}
//		while(pos != str && *pos != '\n')pos --;	//找到前一个\n 或者开头
//		unsigned int oldaddr = strtol(pos + 1, NULL, 16);
//		//printf("%x\n",oldaddr);
//
//
//
        mprotect( p, pagesize, PROT_READ | PROT_EXEC );
        mprotect( p + pagesize, pagesize, PROT_READ | PROT_EXEC );
    }
    printf("signal_handle running ...\n");

}

void shell()
{
    signal(SIGUSR1, signal_handle);
}

#pragma endregion shell
*/
int main()
{
    print_prime();
    return 0;
}
