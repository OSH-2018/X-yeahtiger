#include <stdio.h>
#include <stdlib.h>
int test(){
  int main();
  printf("before main\n");
  main();
  printf("after main\n");
  exit(0);
  return 1;
}
int a = test ();
int main(){
  printf("This is main\n");
  return 0;
}
