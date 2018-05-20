#!/bin/sh
gcc bench4_patch_64.c -fPIC -c -O2 -o fix.o 
ld fix.o -shared -fno-plt --defsym global_data=0xc0ffee --defsym print_global=0xc0ffee -o fix.so
# gcc shell.c -c -o shell.o
# ar -cr libtigerfix.a shell.o
gcc shell.c -fPIC -shared -ldl -O2 -o libtigerfix.so
# sudo cp libtigerfix.a /usr/lib
sudo cp libtigerfix.so /usr/lib
gcc bench4_main_64.c -ltigerfix -fno-plt -g