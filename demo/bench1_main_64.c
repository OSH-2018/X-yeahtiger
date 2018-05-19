// gcc bench1_main_64.c -ldl -g -O2
#define _GNU_SOURCE

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
        printf("global_data:%d\n",global_data);
        if(is_prime(i)){
            sleep(1);
            printf("%d\n",i);
        }
    }
}

void signal_handle(int sig_num)
{
    if(sig_num == SIGUSR1)
    {
        // load
        void* handle = dlopen("./fix.so", RTLD_LAZY);
        if(!handle){
            fprintf(stderr, "%s\n", dlerror());
            exit(-1);
        }
        
        // init
        Dl_info so_info;  
        int rc;      
        void (*fix_init)(void*,int*) =  dlsym(handle,"fix_init");
        rc = dladdr(fix_init, &so_info);
        if(!fix_init || !rc){
            fprintf(stderr, "%s\n", dlerror());
            exit(-1);
        }
        void* so_base = so_info.dli_fbase;
        fix_init(so_base,&global_data);

        // fix
        char* new_func = dlsym(handle,"fix_is_prime");
        char *old_func = (char *)is_prime;
        const int pagesize = sysconf(_SC_PAGE_SIZE);
        char* pg = (char*) ((size_t) old_func & ~(pagesize - 1));
        mprotect(pg, pagesize, PROT_READ | PROT_WRITE | PROT_EXEC );
        mprotect(pg + pagesize, pagesize, PROT_READ | PROT_WRITE | PROT_EXEC );

        // push %rax
        old_func[0] = 0x50;     
        
        // movq %0,%%rax
        old_func[1] = 0x48;     
        old_func[2] = 0xb8;
        *((u_int64_t*)(old_func+3)) = (u_int64_t) new_func;

        // jmpq *%eax
        old_func[11] = 0xff;
        old_func[12] = 0xe0;

        old_func[13] = old_func[14] = old_func[15] = 0x90;

        mprotect(pg, pagesize, PROT_READ | PROT_EXEC );
        mprotect(pg + pagesize, pagesize, PROT_READ | PROT_EXEC );
    }
}

void shell() {
    signal(SIGUSR1, signal_handle);
}

int main(){
    shell();
    print_prime();
    return 0;
}