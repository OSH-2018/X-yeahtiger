
libtigerfix.so：     文件格式 elf64-x86-64


Disassembly of section .init:

0000000000000760 <_init>:
 760:	48 83 ec 08          	sub    $0x8,%rsp
 764:	48 8b 05 75 08 20 00 	mov    0x200875(%rip),%rax        # 200fe0 <__gmon_start__>
 76b:	48 85 c0             	test   %rax,%rax
 76e:	74 02                	je     772 <_init+0x12>
 770:	ff d0                	callq  *%rax
 772:	48 83 c4 08          	add    $0x8,%rsp
 776:	c3                   	retq   

Disassembly of section .plt:

0000000000000780 <.plt>:
 780:	ff 35 82 08 20 00    	pushq  0x200882(%rip)        # 201008 <_GLOBAL_OFFSET_TABLE_+0x8>
 786:	ff 25 84 08 20 00    	jmpq   *0x200884(%rip)        # 201010 <_GLOBAL_OFFSET_TABLE_+0x10>
 78c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000790 <__stack_chk_fail@plt>:
 790:	ff 25 82 08 20 00    	jmpq   *0x200882(%rip)        # 201018 <__stack_chk_fail@GLIBC_2.4>
 796:	68 00 00 00 00       	pushq  $0x0
 79b:	e9 e0 ff ff ff       	jmpq   780 <.plt>

00000000000007a0 <dladdr@plt>:
 7a0:	ff 25 7a 08 20 00    	jmpq   *0x20087a(%rip)        # 201020 <dladdr@GLIBC_2.2.5>
 7a6:	68 01 00 00 00       	pushq  $0x1
 7ab:	e9 d0 ff ff ff       	jmpq   780 <.plt>

00000000000007b0 <dlopen@plt>:
 7b0:	ff 25 72 08 20 00    	jmpq   *0x200872(%rip)        # 201028 <dlopen@GLIBC_2.2.5>
 7b6:	68 02 00 00 00       	pushq  $0x2
 7bb:	e9 c0 ff ff ff       	jmpq   780 <.plt>

00000000000007c0 <mprotect@plt>:
 7c0:	ff 25 6a 08 20 00    	jmpq   *0x20086a(%rip)        # 201030 <mprotect@GLIBC_2.2.5>
 7c6:	68 03 00 00 00       	pushq  $0x3
 7cb:	e9 b0 ff ff ff       	jmpq   780 <.plt>

00000000000007d0 <sysconf@plt>:
 7d0:	ff 25 62 08 20 00    	jmpq   *0x200862(%rip)        # 201038 <sysconf@GLIBC_2.2.5>
 7d6:	68 04 00 00 00       	pushq  $0x4
 7db:	e9 a0 ff ff ff       	jmpq   780 <.plt>

00000000000007e0 <exit@plt>:
 7e0:	ff 25 5a 08 20 00    	jmpq   *0x20085a(%rip)        # 201040 <exit@GLIBC_2.2.5>
 7e6:	68 05 00 00 00       	pushq  $0x5
 7eb:	e9 90 ff ff ff       	jmpq   780 <.plt>

00000000000007f0 <__fprintf_chk@plt>:
 7f0:	ff 25 52 08 20 00    	jmpq   *0x200852(%rip)        # 201048 <__fprintf_chk@GLIBC_2.3.4>
 7f6:	68 06 00 00 00       	pushq  $0x6
 7fb:	e9 80 ff ff ff       	jmpq   780 <.plt>

0000000000000800 <dlsym@plt>:
 800:	ff 25 4a 08 20 00    	jmpq   *0x20084a(%rip)        # 201050 <dlsym@GLIBC_2.2.5>
 806:	68 07 00 00 00       	pushq  $0x7
 80b:	e9 70 ff ff ff       	jmpq   780 <.plt>

0000000000000810 <dlerror@plt>:
 810:	ff 25 42 08 20 00    	jmpq   *0x200842(%rip)        # 201058 <dlerror@GLIBC_2.2.5>
 816:	68 08 00 00 00       	pushq  $0x8
 81b:	e9 60 ff ff ff       	jmpq   780 <.plt>

Disassembly of section .plt.got:

0000000000000820 <__cxa_finalize@plt>:
 820:	ff 25 ca 07 20 00    	jmpq   *0x2007ca(%rip)        # 200ff0 <__cxa_finalize@GLIBC_2.2.5>
 826:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000830 <deregister_tm_clones>:
 830:	48 8d 3d 31 08 20 00 	lea    0x200831(%rip),%rdi        # 201068 <_edata>
 837:	55                   	push   %rbp
 838:	48 8d 05 29 08 20 00 	lea    0x200829(%rip),%rax        # 201068 <_edata>
 83f:	48 39 f8             	cmp    %rdi,%rax
 842:	48 89 e5             	mov    %rsp,%rbp
 845:	74 19                	je     860 <deregister_tm_clones+0x30>
 847:	48 8b 05 8a 07 20 00 	mov    0x20078a(%rip),%rax        # 200fd8 <_ITM_deregisterTMCloneTable>
 84e:	48 85 c0             	test   %rax,%rax
 851:	74 0d                	je     860 <deregister_tm_clones+0x30>
 853:	5d                   	pop    %rbp
 854:	ff e0                	jmpq   *%rax
 856:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 85d:	00 00 00 
 860:	5d                   	pop    %rbp
 861:	c3                   	retq   
 862:	0f 1f 40 00          	nopl   0x0(%rax)
 866:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 86d:	00 00 00 

0000000000000870 <register_tm_clones>:
 870:	48 8d 3d f1 07 20 00 	lea    0x2007f1(%rip),%rdi        # 201068 <_edata>
 877:	48 8d 35 ea 07 20 00 	lea    0x2007ea(%rip),%rsi        # 201068 <_edata>
 87e:	55                   	push   %rbp
 87f:	48 29 fe             	sub    %rdi,%rsi
 882:	48 89 e5             	mov    %rsp,%rbp
 885:	48 c1 fe 03          	sar    $0x3,%rsi
 889:	48 89 f0             	mov    %rsi,%rax
 88c:	48 c1 e8 3f          	shr    $0x3f,%rax
 890:	48 01 c6             	add    %rax,%rsi
 893:	48 d1 fe             	sar    %rsi
 896:	74 18                	je     8b0 <register_tm_clones+0x40>
 898:	48 8b 05 49 07 20 00 	mov    0x200749(%rip),%rax        # 200fe8 <_ITM_registerTMCloneTable>
 89f:	48 85 c0             	test   %rax,%rax
 8a2:	74 0c                	je     8b0 <register_tm_clones+0x40>
 8a4:	5d                   	pop    %rbp
 8a5:	ff e0                	jmpq   *%rax
 8a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 8ae:	00 00 
 8b0:	5d                   	pop    %rbp
 8b1:	c3                   	retq   
 8b2:	0f 1f 40 00          	nopl   0x0(%rax)
 8b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 8bd:	00 00 00 

00000000000008c0 <__do_global_dtors_aux>:
 8c0:	80 3d a1 07 20 00 00 	cmpb   $0x0,0x2007a1(%rip)        # 201068 <_edata>
 8c7:	75 2f                	jne    8f8 <__do_global_dtors_aux+0x38>
 8c9:	48 83 3d 1f 07 20 00 	cmpq   $0x0,0x20071f(%rip)        # 200ff0 <__cxa_finalize@GLIBC_2.2.5>
 8d0:	00 
 8d1:	55                   	push   %rbp
 8d2:	48 89 e5             	mov    %rsp,%rbp
 8d5:	74 0c                	je     8e3 <__do_global_dtors_aux+0x23>
 8d7:	48 8b 3d 82 07 20 00 	mov    0x200782(%rip),%rdi        # 201060 <__dso_handle>
 8de:	e8 3d ff ff ff       	callq  820 <__cxa_finalize@plt>
 8e3:	e8 48 ff ff ff       	callq  830 <deregister_tm_clones>
 8e8:	c6 05 79 07 20 00 01 	movb   $0x1,0x200779(%rip)        # 201068 <_edata>
 8ef:	5d                   	pop    %rbp
 8f0:	c3                   	retq   
 8f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 8f8:	f3 c3                	repz retq 
 8fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000900 <frame_dummy>:
 900:	55                   	push   %rbp
 901:	48 89 e5             	mov    %rsp,%rbp
 904:	5d                   	pop    %rbp
 905:	e9 66 ff ff ff       	jmpq   870 <register_tm_clones>
 90a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000910 <do_fix_entry>:
 910:	cc                   	int3   
 911:	e8 0a 00 00 00       	callq  920 <do_fix>
 916:	c9                   	leaveq 
 917:	cc                   	int3   
 918:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 91f:	00 

0000000000000920 <do_fix>:
 920:	41 56                	push   %r14
 922:	41 55                	push   %r13
 924:	be 01 00 00 00       	mov    $0x1,%esi
 929:	41 54                	push   %r12
 92b:	55                   	push   %rbp
 92c:	48 89 fd             	mov    %rdi,%rbp
 92f:	53                   	push   %rbx
 930:	48 8d 3d 8e 01 00 00 	lea    0x18e(%rip),%rdi        # ac5 <_fini+0x9>
 937:	48 83 ec 50          	sub    $0x50,%rsp
 93b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 942:	00 00 
 944:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
 949:	31 c0                	xor    %eax,%eax
 94b:	e8 60 fe ff ff       	callq  7b0 <dlopen@plt>
 950:	48 85 c0             	test   %rax,%rax
 953:	0f 84 2c 01 00 00    	je     a85 <do_fix+0x165>
 959:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
 95e:	48 89 ef             	mov    %rbp,%rdi
 961:	48 89 c3             	mov    %rax,%rbx
 964:	e8 37 fe ff ff       	callq  7a0 <dladdr@plt>
 969:	85 c0                	test   %eax,%eax
 96b:	0f 84 14 01 00 00    	je     a85 <do_fix+0x165>
 971:	48 8d 35 5a 01 00 00 	lea    0x15a(%rip),%rsi        # ad2 <_fini+0x16>
 978:	48 89 df             	mov    %rbx,%rdi
 97b:	e8 80 fe ff ff       	callq  800 <dlsym@plt>
 980:	48 89 e6             	mov    %rsp,%rsi
 983:	49 89 c6             	mov    %rax,%r14
 986:	48 89 c7             	mov    %rax,%rdi
 989:	e8 12 fe ff ff       	callq  7a0 <dladdr@plt>
 98e:	4d 85 f6             	test   %r14,%r14
 991:	0f 84 ee 00 00 00    	je     a85 <do_fix+0x165>
 997:	85 c0                	test   %eax,%eax
 999:	0f 84 e6 00 00 00    	je     a85 <do_fix+0x165>
 99f:	bf 1e 00 00 00       	mov    $0x1e,%edi
 9a4:	e8 27 fe ff ff       	callq  7d0 <sysconf@plt>
 9a9:	4c 8b 64 24 08       	mov    0x8(%rsp),%r12
 9ae:	89 c3                	mov    %eax,%ebx
 9b0:	4c 8b 6c 24 28       	mov    0x28(%rsp),%r13
 9b5:	f7 db                	neg    %ebx
 9b7:	48 63 e8             	movslq %eax,%rbp
 9ba:	ba 07 00 00 00       	mov    $0x7,%edx
 9bf:	48 63 db             	movslq %ebx,%rbx
 9c2:	48 89 ee             	mov    %rbp,%rsi
 9c5:	49 8d bc 24 f8 0f 20 	lea    0x200ff8(%r12),%rdi
 9cc:	00 
 9cd:	48 21 df             	and    %rbx,%rdi
 9d0:	e8 eb fd ff ff       	callq  7c0 <mprotect@plt>
 9d5:	49 8d 85 14 10 20 00 	lea    0x201014(%r13),%rax
 9dc:	49 8d bc 24 18 10 20 	lea    0x201018(%r12),%rdi
 9e3:	00 
 9e4:	ba 07 00 00 00       	mov    $0x7,%edx
 9e9:	48 89 ee             	mov    %rbp,%rsi
 9ec:	48 21 df             	and    %rbx,%rdi
 9ef:	49 89 84 24 f8 0f 20 	mov    %rax,0x200ff8(%r12)
 9f6:	00 
 9f7:	e8 c4 fd ff ff       	callq  7c0 <mprotect@plt>
 9fc:	49 8d 85 7a 07 00 00 	lea    0x77a(%r13),%rax
 a03:	49 89 84 24 18 10 20 	mov    %rax,0x201018(%r12)
 a0a:	00 
 a0b:	31 c0                	xor    %eax,%eax
 a0d:	41 ff d6             	callq  *%r14
 a10:	4d 8d b5 9b 07 00 00 	lea    0x79b(%r13),%r14
 a17:	ba 07 00 00 00       	mov    $0x7,%edx
 a1c:	48 89 ee             	mov    %rbp,%rsi
 a1f:	4c 21 f3             	and    %r14,%rbx
 a22:	48 89 df             	mov    %rbx,%rdi
 a25:	e8 96 fd ff ff       	callq  7c0 <mprotect@plt>
 a2a:	49 8d 94 24 40 03 00 	lea    0x340(%r12),%rdx
 a31:	00 
 a32:	b8 50 48 00 00       	mov    $0x4850,%eax
 a37:	48 89 ee             	mov    %rbp,%rsi
 a3a:	66 41 89 85 9b 07 00 	mov    %ax,0x79b(%r13)
 a41:	00 
 a42:	48 89 df             	mov    %rbx,%rdi
 a45:	41 c6 46 02 b8       	movb   $0xb8,0x2(%r14)
 a4a:	49 89 95 9e 07 00 00 	mov    %rdx,0x79e(%r13)
 a51:	41 c7 46 0b ff e0 90 	movl   $0x9090e0ff,0xb(%r14)
 a58:	90 
 a59:	ba 05 00 00 00       	mov    $0x5,%edx
 a5e:	41 c6 46 0f 90       	movb   $0x90,0xf(%r14)
 a63:	e8 58 fd ff ff       	callq  7c0 <mprotect@plt>
 a68:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
 a6d:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 a74:	00 00 
 a76:	75 3c                	jne    ab4 <do_fix+0x194>
 a78:	48 83 c4 50          	add    $0x50,%rsp
 a7c:	5b                   	pop    %rbx
 a7d:	5d                   	pop    %rbp
 a7e:	41 5c                	pop    %r12
 a80:	41 5d                	pop    %r13
 a82:	41 5e                	pop    %r14
 a84:	c3                   	retq   
 a85:	e8 86 fd ff ff       	callq  810 <dlerror@plt>
 a8a:	48 89 c1             	mov    %rax,%rcx
 a8d:	48 8b 05 64 05 20 00 	mov    0x200564(%rip),%rax        # 200ff8 <stderr@GLIBC_2.2.5>
 a94:	48 8d 15 33 00 00 00 	lea    0x33(%rip),%rdx        # ace <_fini+0x12>
 a9b:	be 01 00 00 00       	mov    $0x1,%esi
 aa0:	48 8b 38             	mov    (%rax),%rdi
 aa3:	31 c0                	xor    %eax,%eax
 aa5:	e8 46 fd ff ff       	callq  7f0 <__fprintf_chk@plt>
 aaa:	bf ff ff ff ff       	mov    $0xffffffff,%edi
 aaf:	e8 2c fd ff ff       	callq  7e0 <exit@plt>
 ab4:	e8 d7 fc ff ff       	callq  790 <__stack_chk_fail@plt>

Disassembly of section .fini:

0000000000000abc <_fini>:
 abc:	48 83 ec 08          	sub    $0x8,%rsp
 ac0:	48 83 c4 08          	add    $0x8,%rsp
 ac4:	c3                   	retq   
