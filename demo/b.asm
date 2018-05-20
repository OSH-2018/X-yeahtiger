
fix.so：     文件格式 elf64-x86-64


Disassembly of section .plt:

0000000000000360 <.plt>:
 360:	ff 35 a2 0c 20 00    	pushq  0x200ca2(%rip)        # 201008 <_GLOBAL_OFFSET_TABLE_+0x8>
 366:	ff 25 a4 0c 20 00    	jmpq   *0x200ca4(%rip)        # 201010 <_GLOBAL_OFFSET_TABLE_+0x10>
 36c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000370 <__printf_chk@plt>:
 370:	ff 25 a2 0c 20 00    	jmpq   *0x200ca2(%rip)        # 201018 <__printf_chk>
 376:	68 00 00 00 00       	pushq  $0x0
 37b:	e9 e0 ff ff ff       	jmpq   360 <.plt>

Disassembly of section .plt.got:

0000000000000380 <print_global@plt>:
 380:	ff 25 6a 0c 20 00    	jmpq   *0x200c6a(%rip)        # 200ff0 <.got>
 386:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000390 <fix_is_prime>:
 390:	58                   	pop    %rax
 391:	eb 3d                	jmp    3d0 <is_prime>
 393:	0f 1f 00             	nopl   (%rax)
 396:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 39d:	00 00 00 

00000000000003a0 <tigerfix_init>:
 3a0:	48 8b 0d 49 0c 20 00 	mov    0x200c49(%rip),%rcx        # 200ff0 <.got>
 3a7:	48 8b 15 4a 0c 20 00 	mov    0x200c4a(%rip),%rdx        # 200ff8 <.got+0x8>
 3ae:	48 8d 35 82 00 00 00 	lea    0x82(%rip),%rsi        # 437 <is_prime+0x67>
 3b5:	bf 01 00 00 00       	mov    $0x1,%edi
 3ba:	31 c0                	xor    %eax,%eax
 3bc:	e9 af ff ff ff       	jmpq   370 <__printf_chk@plt>
 3c1:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 3c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 3cd:	00 00 00 

00000000000003d0 <is_prime>:
 3d0:	53                   	push   %rbx
 3d1:	31 c0                	xor    %eax,%eax
 3d3:	89 fb                	mov    %edi,%ebx
 3d5:	e8 a6 ff ff ff       	callq  380 <print_global@plt>
 3da:	48 8b 05 17 0c 20 00 	mov    0x200c17(%rip),%rax        # 200ff8 <.got+0x8>
 3e1:	83 00 02             	addl   $0x2,(%rax)
 3e4:	83 fb 04             	cmp    $0x4,%ebx
 3e7:	7e 47                	jle    430 <is_prime+0x60>
 3e9:	89 de                	mov    %ebx,%esi
 3eb:	83 e6 01             	and    $0x1,%esi
 3ee:	74 25                	je     415 <is_prime+0x45>
 3f0:	b9 02 00 00 00       	mov    $0x2,%ecx
 3f5:	eb 12                	jmp    409 <is_prime+0x39>
 3f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 3fe:	00 00 
 400:	89 d8                	mov    %ebx,%eax
 402:	99                   	cltd   
 403:	f7 f9                	idiv   %ecx
 405:	85 d2                	test   %edx,%edx
 407:	74 17                	je     420 <is_prime+0x50>
 409:	83 c1 01             	add    $0x1,%ecx
 40c:	89 c8                	mov    %ecx,%eax
 40e:	0f af c1             	imul   %ecx,%eax
 411:	39 d8                	cmp    %ebx,%eax
 413:	7c eb                	jl     400 <is_prime+0x30>
 415:	89 f0                	mov    %esi,%eax
 417:	5b                   	pop    %rbx
 418:	c3                   	retq   
 419:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 420:	31 f6                	xor    %esi,%esi
 422:	89 f0                	mov    %esi,%eax
 424:	5b                   	pop    %rbx
 425:	c3                   	retq   
 426:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 42d:	00 00 00 
 430:	be 01 00 00 00       	mov    $0x1,%esi
 435:	eb de                	jmp    415 <is_prime+0x45>
