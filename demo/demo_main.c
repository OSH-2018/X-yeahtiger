#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

int global_data;

void print_global() { printf("global_data:%d\n", global_data); }

__attribute__((noinline)) int is_prime(int n) {
  printf("is_prime-");
  print_global();
  global_data++;
  for (int i = 2; i < n; i++) {
    if (n % i == 0)
      return 0;
  }
  return 1;
}

void print_prime() {
  for (int i = 2; i < 10000000; i++) {
    if (is_prime(i)) {
      sleep(1);
      printf("%d\n", i);
    }
  }
}

extern void do_fix_entry();
void dummy(){
  do_fix_entry();
}

int main() {
  printf("main:%p\n",do_fix_entry);
  print_prime();
  return 0;
}