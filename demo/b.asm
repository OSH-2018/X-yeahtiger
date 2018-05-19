
fix.so：     文件格式 elf64-x86-64


Disassembly of section .plt:

0000000000000380 <.plt>:
 380:	ff 35 82 0c 20 00    	pushq  0x200c82(%rip)        # 201008 <_GLOBAL_OFFSET_TABLE_+0x8>
 386:	ff 25 84 0c 20 00    	jmpq   *0x200c84(%rip)        # 201010 <_GLOBAL_OFFSET_TABLE_+0x10>
 38c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000390 <sysconf@plt>:
 390:	ff 25 82 0c 20 00    	jmpq   *0x200c82(%rip)        # 201018 <sysconf>
 396:	68 00 00 00 00       	pushq  $0x0
 39b:	e9 e0 ff ff ff       	jmpq   380 <.plt>

00000000000003a0 <puts@plt>:
 3a0:	ff 25 7a 0c 20 00    	jmpq   *0x200c7a(%rip)        # 201020 <puts>
 3a6:	68 01 00 00 00       	pushq  $0x1
 3ab:	e9 d0 ff ff ff       	jmpq   380 <.plt>

00000000000003b0 <mprotect@plt>:
 3b0:	ff 25 72 0c 20 00    	jmpq   *0x200c72(%rip)        # 201028 <mprotect>
 3b6:	68 02 00 00 00       	pushq  $0x2
 3bb:	e9 c0 ff ff ff       	jmpq   380 <.plt>

Disassembly of section .text:

00000000000003c0 <fix_is_prime>:
 3c0:	58                   	pop    %rax
 3c1:	eb 7d                	jmp    440 <is_prime>
 3c3:	0f 1f 00             	nopl   (%rax)
 3c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 3cd:	00 00 00 

00000000000003d0 <fix_init>:
 3d0:	41 55                	push   %r13
 3d2:	41 54                	push   %r12
 3d4:	49 89 fc             	mov    %rdi,%r12
 3d7:	55                   	push   %rbp
 3d8:	53                   	push   %rbx
 3d9:	48 8d af f8 0f 20 00 	lea    0x200ff8(%rdi),%rbp
 3e0:	bf 1e 00 00 00       	mov    $0x1e,%edi
 3e5:	49 89 f5             	mov    %rsi,%r13
 3e8:	48 83 ec 08          	sub    $0x8,%rsp
 3ec:	e8 9f ff ff ff       	callq  390 <sysconf@plt>
 3f1:	89 c3                	mov    %eax,%ebx
 3f3:	ba 07 00 00 00       	mov    $0x7,%edx
 3f8:	f7 db                	neg    %ebx
 3fa:	48 63 db             	movslq %ebx,%rbx
 3fd:	48 21 eb             	and    %rbp,%rbx
 400:	48 63 e8             	movslq %eax,%rbp
 403:	48 89 ee             	mov    %rbp,%rsi
 406:	48 89 df             	mov    %rbx,%rdi
 409:	e8 a2 ff ff ff       	callq  3b0 <mprotect@plt>
 40e:	4d 89 ac 24 f8 0f 20 	mov    %r13,0x200ff8(%r12)
 415:	00 
 416:	48 89 df             	mov    %rbx,%rdi
 419:	48 89 ee             	mov    %rbp,%rsi
 41c:	ba 05 00 00 00       	mov    $0x5,%edx
 421:	e8 8a ff ff ff       	callq  3b0 <mprotect@plt>
 426:	48 83 c4 08          	add    $0x8,%rsp
 42a:	48 8d 3d 5e 00 00 00 	lea    0x5e(%rip),%rdi        # 48f <is_prime+0x4f>
 431:	5b                   	pop    %rbx
 432:	5d                   	pop    %rbp
 433:	41 5c                	pop    %r12
 435:	41 5d                	pop    %r13
 437:	e9 64 ff ff ff       	jmpq   3a0 <puts@plt>
 43c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000440 <is_prime>:
 440:	48 8b 05 b1 0b 20 00 	mov    0x200bb1(%rip),%rax        # 200ff8 <.got>
 447:	83 00 02             	addl   $0x2,(%rax)
 44a:	83 ff 04             	cmp    $0x4,%edi
 44d:	7e 39                	jle    488 <is_prime+0x48>
 44f:	89 fe                	mov    %edi,%esi
 451:	83 e6 01             	and    $0x1,%esi
 454:	74 1f                	je     475 <is_prime+0x35>
 456:	b9 02 00 00 00       	mov    $0x2,%ecx
 45b:	eb 0c                	jmp    469 <is_prime+0x29>
 45d:	0f 1f 00             	nopl   (%rax)
 460:	89 f8                	mov    %edi,%eax
 462:	99                   	cltd   
 463:	f7 f9                	idiv   %ecx
 465:	85 d2                	test   %edx,%edx
 467:	74 17                	je     480 <is_prime+0x40>
 469:	83 c1 01             	add    $0x1,%ecx
 46c:	89 c8                	mov    %ecx,%eax
 46e:	0f af c1             	imul   %ecx,%eax
 471:	39 f8                	cmp    %edi,%eax
 473:	7c eb                	jl     460 <is_prime+0x20>
 475:	89 f0                	mov    %esi,%eax
 477:	c3                   	retq   
 478:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 47f:	00 
 480:	31 f6                	xor    %esi,%esi
 482:	89 f0                	mov    %esi,%eax
 484:	c3                   	retq   
 485:	0f 1f 00             	nopl   (%rax)
 488:	be 01 00 00 00       	mov    $0x1,%esi
 48d:	eb e6                	jmp    475 <is_prime+0x35>
