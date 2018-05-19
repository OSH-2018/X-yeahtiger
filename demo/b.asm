
fix.so：     文件格式 elf64-x86-64


Disassembly of section .plt:

00000000000003c0 <.plt>:
 3c0:	ff 35 42 0c 20 00    	pushq  0x200c42(%rip)        # 201008 <_GLOBAL_OFFSET_TABLE_+0x8>
 3c6:	ff 25 44 0c 20 00    	jmpq   *0x200c44(%rip)        # 201010 <_GLOBAL_OFFSET_TABLE_+0x10>
 3cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000003d0 <sysconf@plt>:
 3d0:	ff 25 42 0c 20 00    	jmpq   *0x200c42(%rip)        # 201018 <sysconf>
 3d6:	68 00 00 00 00       	pushq  $0x0
 3db:	e9 e0 ff ff ff       	jmpq   3c0 <.plt>

00000000000003e0 <puts@plt>:
 3e0:	ff 25 3a 0c 20 00    	jmpq   *0x200c3a(%rip)        # 201020 <puts>
 3e6:	68 01 00 00 00       	pushq  $0x1
 3eb:	e9 d0 ff ff ff       	jmpq   3c0 <.plt>

00000000000003f0 <print_global@plt>:
 3f0:	ff 25 32 0c 20 00    	jmpq   *0x200c32(%rip)        # 201028 <_GLOBAL_OFFSET_TABLE_+0x28>
 3f6:	68 02 00 00 00       	pushq  $0x2
 3fb:	e9 c0 ff ff ff       	jmpq   3c0 <.plt>

0000000000000400 <mprotect@plt>:
 400:	ff 25 2a 0c 20 00    	jmpq   *0x200c2a(%rip)        # 201030 <mprotect>
 406:	68 03 00 00 00       	pushq  $0x3
 40b:	e9 b0 ff ff ff       	jmpq   3c0 <.plt>

Disassembly of section .text:

0000000000000410 <fix_is_prime>:
 410:	58                   	pop    %rax
 411:	e9 8a 00 00 00       	jmpq   4a0 <is_prime>
 416:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 41d:	00 00 00 

0000000000000420 <fix_init>:
 420:	41 56                	push   %r14
 422:	41 55                	push   %r13
 424:	49 89 f6             	mov    %rsi,%r14
 427:	41 54                	push   %r12
 429:	55                   	push   %rbp
 42a:	49 89 fc             	mov    %rdi,%r12
 42d:	53                   	push   %rbx
 42e:	48 8d af f8 0f 20 00 	lea    0x200ff8(%rdi),%rbp
 435:	bf 1e 00 00 00       	mov    $0x1e,%edi
 43a:	49 89 d5             	mov    %rdx,%r13
 43d:	e8 8e ff ff ff       	callq  3d0 <sysconf@plt>
 442:	89 c3                	mov    %eax,%ebx
 444:	ba 07 00 00 00       	mov    $0x7,%edx
 449:	f7 db                	neg    %ebx
 44b:	48 63 db             	movslq %ebx,%rbx
 44e:	48 21 eb             	and    %rbp,%rbx
 451:	48 63 e8             	movslq %eax,%rbp
 454:	48 89 ee             	mov    %rbp,%rsi
 457:	48 89 df             	mov    %rbx,%rdi
 45a:	e8 a1 ff ff ff       	callq  400 <mprotect@plt>
 45f:	4d 89 b4 24 f8 0f 20 	mov    %r14,0x200ff8(%r12)
 466:	00 
 467:	4d 89 ac 24 28 10 20 	mov    %r13,0x201028(%r12)
 46e:	00 
 46f:	48 89 df             	mov    %rbx,%rdi
 472:	48 89 ee             	mov    %rbp,%rsi
 475:	ba 05 00 00 00       	mov    $0x5,%edx
 47a:	e8 81 ff ff ff       	callq  400 <mprotect@plt>
 47f:	5b                   	pop    %rbx
 480:	5d                   	pop    %rbp
 481:	41 5c                	pop    %r12
 483:	41 5d                	pop    %r13
 485:	41 5e                	pop    %r14
 487:	48 8d 3d 79 00 00 00 	lea    0x79(%rip),%rdi        # 507 <is_prime+0x67>
 48e:	e9 4d ff ff ff       	jmpq   3e0 <puts@plt>
 493:	0f 1f 00             	nopl   (%rax)
 496:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 49d:	00 00 00 

00000000000004a0 <is_prime>:
 4a0:	53                   	push   %rbx
 4a1:	31 c0                	xor    %eax,%eax
 4a3:	89 fb                	mov    %edi,%ebx
 4a5:	e8 46 ff ff ff       	callq  3f0 <print_global@plt>
 4aa:	48 8b 05 47 0b 20 00 	mov    0x200b47(%rip),%rax        # 200ff8 <.got>
 4b1:	83 00 02             	addl   $0x2,(%rax)
 4b4:	83 fb 04             	cmp    $0x4,%ebx
 4b7:	7e 47                	jle    500 <is_prime+0x60>
 4b9:	89 de                	mov    %ebx,%esi
 4bb:	83 e6 01             	and    $0x1,%esi
 4be:	74 25                	je     4e5 <is_prime+0x45>
 4c0:	b9 02 00 00 00       	mov    $0x2,%ecx
 4c5:	eb 12                	jmp    4d9 <is_prime+0x39>
 4c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 4ce:	00 00 
 4d0:	89 d8                	mov    %ebx,%eax
 4d2:	99                   	cltd   
 4d3:	f7 f9                	idiv   %ecx
 4d5:	85 d2                	test   %edx,%edx
 4d7:	74 17                	je     4f0 <is_prime+0x50>
 4d9:	83 c1 01             	add    $0x1,%ecx
 4dc:	89 c8                	mov    %ecx,%eax
 4de:	0f af c1             	imul   %ecx,%eax
 4e1:	39 d8                	cmp    %ebx,%eax
 4e3:	7c eb                	jl     4d0 <is_prime+0x30>
 4e5:	89 f0                	mov    %esi,%eax
 4e7:	5b                   	pop    %rbx
 4e8:	c3                   	retq   
 4e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 4f0:	31 f6                	xor    %esi,%esi
 4f2:	89 f0                	mov    %esi,%eax
 4f4:	5b                   	pop    %rbx
 4f5:	c3                   	retq   
 4f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 4fd:	00 00 00 
 500:	be 01 00 00 00       	mov    $0x1,%esi
 505:	eb de                	jmp    4e5 <is_prime+0x45>
