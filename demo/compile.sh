#!/bin/sh
gcc bench1_patch_64.c -fPIC -shared -O2 -g -o fix.so -Wl,-init=init
gcc bench1_main_64.c -ldl -g -O2
objdump -d a.out > a.asm
objdump -d fix.so > b.asm   