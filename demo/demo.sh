#!/bin/sh
gcc demo_patch.c -fPIC -c -O2 -o fix.o 
ld fix.o -shared -fno-plt --defsym global_data=0xc0ffee --defsym print_global=0xc0ffee -o fix.so
gcc shell.c -fPIC -shared -ldl -O2 -o libtigerfix.so
sudo cp libtigerfix.so /usr/lib
gcc demo_main.c -ltigerfix -fno-plt