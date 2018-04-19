/*
 * change code segment
 * https://stackoverflow.com/a/12952341
 */ 
#include <stdio.h>
#include <sys/mman.h>
#include <unistd.h>
#include <string.h>

int f1()
{
    return 1;
}

int f2()
{
    return 2;
}

int main()
{
    int rc;
    int pagesize;
    char *p;
    int i;

    printf("f1=0x%08X.\n", f1);
    printf("f2=0x%08X.\n", f2);

    printf("f%d\n",f1());
    printf("f%d\n",f2());

    pagesize = sysconf(_SC_PAGE_SIZE);
    printf( "pagesize=%d (0x%08X).\n", pagesize, pagesize );
    if(pagesize == -1) return(2);

    p = (char*) f1;
    printf( "p=0x%08X.\n", p );
    p = (char*) ((size_t) p & ~(pagesize - 1));
    printf( "p=0x%08X.\n", p );

    rc = mprotect( p, pagesize, PROT_READ | PROT_WRITE | PROT_EXEC );
    printf( "rc=%d.\n", rc );
    if(rc!=0) return(2);

    printf("'mprotect()' succeeded.\n");
    memcpy(f2,f1,(size_t)f2-(size_t)f1);

    printf("Write succeeded.\n");
    
    printf("f%d\n",f1());
    printf("f%d\n",f2());

    printf("Call succeeded.\n");

    return 0;
}