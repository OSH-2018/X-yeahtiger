#define _GNU_SOURCE

#include <getopt.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <dlfcn.h>


void identify_function_ptr( void *func)  {   
  Dl_info info;  
  int rc;      

  rc = dladdr(func, &info);   

  if (!rc)  {    
      printf("Problem retrieving program information for %x:  %s\n", func, dlerror()); 
  }  
  
  printf("Address located in function %s within the program %s\n", info.dli_fname, info.dli_sname);  

}

int main(){
    
}