#!/bin/sh
gcc bench1_patch_64.c -fPIC -c -O2 -o fix.o 
ld fix.o -shared --defsym global_data=0xc0ffee -o fix.so
gcc bench1_main_64.c -ldl -g -O2
objdump -d a.out > a.asm
objdump -d fix.so > b.asm   