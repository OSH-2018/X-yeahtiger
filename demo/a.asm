
a.out：     文件格式 elf64-x86-64


Disassembly of section .init:

0000000000000818 <_init>:
 818:	48 83 ec 08          	sub    $0x8,%rsp
 81c:	48 8b 05 c5 17 20 00 	mov    0x2017c5(%rip),%rax        # 201fe8 <__gmon_start__>
 823:	48 85 c0             	test   %rax,%rax
 826:	74 02                	je     82a <_init+0x12>
 828:	ff d0                	callq  *%rax
 82a:	48 83 c4 08          	add    $0x8,%rsp
 82e:	c3                   	retq   

Disassembly of section .plt:

0000000000000830 <.plt>:
 830:	ff 35 32 17 20 00    	pushq  0x201732(%rip)        # 201f68 <_GLOBAL_OFFSET_TABLE_+0x8>
 836:	ff 25 34 17 20 00    	jmpq   *0x201734(%rip)        # 201f70 <_GLOBAL_OFFSET_TABLE_+0x10>
 83c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000840 <__stack_chk_fail@plt>:
 840:	ff 25 32 17 20 00    	jmpq   *0x201732(%rip)        # 201f78 <__stack_chk_fail@GLIBC_2.4>
 846:	68 00 00 00 00       	pushq  $0x0
 84b:	e9 e0 ff ff ff       	jmpq   830 <.plt>

0000000000000850 <dladdr@plt>:
 850:	ff 25 2a 17 20 00    	jmpq   *0x20172a(%rip)        # 201f80 <dladdr@GLIBC_2.2.5>
 856:	68 01 00 00 00       	pushq  $0x1
 85b:	e9 d0 ff ff ff       	jmpq   830 <.plt>

0000000000000860 <signal@plt>:
 860:	ff 25 22 17 20 00    	jmpq   *0x201722(%rip)        # 201f88 <signal@GLIBC_2.2.5>
 866:	68 02 00 00 00       	pushq  $0x2
 86b:	e9 c0 ff ff ff       	jmpq   830 <.plt>

0000000000000870 <dlopen@plt>:
 870:	ff 25 1a 17 20 00    	jmpq   *0x20171a(%rip)        # 201f90 <dlopen@GLIBC_2.2.5>
 876:	68 03 00 00 00       	pushq  $0x3
 87b:	e9 b0 ff ff ff       	jmpq   830 <.plt>

0000000000000880 <__printf_chk@plt>:
 880:	ff 25 12 17 20 00    	jmpq   *0x201712(%rip)        # 201f98 <__printf_chk@GLIBC_2.3.4>
 886:	68 04 00 00 00       	pushq  $0x4
 88b:	e9 a0 ff ff ff       	jmpq   830 <.plt>

0000000000000890 <mprotect@plt>:
 890:	ff 25 0a 17 20 00    	jmpq   *0x20170a(%rip)        # 201fa0 <mprotect@GLIBC_2.2.5>
 896:	68 05 00 00 00       	pushq  $0x5
 89b:	e9 90 ff ff ff       	jmpq   830 <.plt>

00000000000008a0 <sysconf@plt>:
 8a0:	ff 25 02 17 20 00    	jmpq   *0x201702(%rip)        # 201fa8 <sysconf@GLIBC_2.2.5>
 8a6:	68 06 00 00 00       	pushq  $0x6
 8ab:	e9 80 ff ff ff       	jmpq   830 <.plt>

00000000000008b0 <exit@plt>:
 8b0:	ff 25 fa 16 20 00    	jmpq   *0x2016fa(%rip)        # 201fb0 <exit@GLIBC_2.2.5>
 8b6:	68 07 00 00 00       	pushq  $0x7
 8bb:	e9 70 ff ff ff       	jmpq   830 <.plt>

00000000000008c0 <__fprintf_chk@plt>:
 8c0:	ff 25 f2 16 20 00    	jmpq   *0x2016f2(%rip)        # 201fb8 <__fprintf_chk@GLIBC_2.3.4>
 8c6:	68 08 00 00 00       	pushq  $0x8
 8cb:	e9 60 ff ff ff       	jmpq   830 <.plt>

00000000000008d0 <dlsym@plt>:
 8d0:	ff 25 ea 16 20 00    	jmpq   *0x2016ea(%rip)        # 201fc0 <dlsym@GLIBC_2.2.5>
 8d6:	68 09 00 00 00       	pushq  $0x9
 8db:	e9 50 ff ff ff       	jmpq   830 <.plt>

00000000000008e0 <sleep@plt>:
 8e0:	ff 25 e2 16 20 00    	jmpq   *0x2016e2(%rip)        # 201fc8 <sleep@GLIBC_2.2.5>
 8e6:	68 0a 00 00 00       	pushq  $0xa
 8eb:	e9 40 ff ff ff       	jmpq   830 <.plt>

00000000000008f0 <dlerror@plt>:
 8f0:	ff 25 da 16 20 00    	jmpq   *0x2016da(%rip)        # 201fd0 <dlerror@GLIBC_2.2.5>
 8f6:	68 0b 00 00 00       	pushq  $0xb
 8fb:	e9 30 ff ff ff       	jmpq   830 <.plt>

Disassembly of section .plt.got:

0000000000000900 <__cxa_finalize@plt>:
 900:	ff 25 f2 16 20 00    	jmpq   *0x2016f2(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 906:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000910 <main>:
 910:	48 8d 35 89 01 00 00 	lea    0x189(%rip),%rsi        # aa0 <signal_handle>
 917:	48 83 ec 08          	sub    $0x8,%rsp
 91b:	bf 0a 00 00 00       	mov    $0xa,%edi
 920:	e8 3b ff ff ff       	callq  860 <signal@plt>
 925:	31 c0                	xor    %eax,%eax
 927:	e8 e4 02 00 00       	callq  c10 <print_prime>
 92c:	31 c0                	xor    %eax,%eax
 92e:	48 83 c4 08          	add    $0x8,%rsp
 932:	c3                   	retq   
 933:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 93a:	00 00 00 
 93d:	0f 1f 00             	nopl   (%rax)

0000000000000940 <_start>:
 940:	31 ed                	xor    %ebp,%ebp
 942:	49 89 d1             	mov    %rdx,%r9
 945:	5e                   	pop    %rsi
 946:	48 89 e2             	mov    %rsp,%rdx
 949:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 94d:	50                   	push   %rax
 94e:	54                   	push   %rsp
 94f:	4c 8d 05 ca 03 00 00 	lea    0x3ca(%rip),%r8        # d20 <__libc_csu_fini>
 956:	48 8d 0d 53 03 00 00 	lea    0x353(%rip),%rcx        # cb0 <__libc_csu_init>
 95d:	48 8d 3d ac ff ff ff 	lea    -0x54(%rip),%rdi        # 910 <main>
 964:	ff 15 76 16 20 00    	callq  *0x201676(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 96a:	f4                   	hlt    
 96b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000970 <deregister_tm_clones>:
 970:	48 8d 3d 99 16 20 00 	lea    0x201699(%rip),%rdi        # 202010 <__TMC_END__>
 977:	55                   	push   %rbp
 978:	48 8d 05 91 16 20 00 	lea    0x201691(%rip),%rax        # 202010 <__TMC_END__>
 97f:	48 39 f8             	cmp    %rdi,%rax
 982:	48 89 e5             	mov    %rsp,%rbp
 985:	74 19                	je     9a0 <deregister_tm_clones+0x30>
 987:	48 8b 05 4a 16 20 00 	mov    0x20164a(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 98e:	48 85 c0             	test   %rax,%rax
 991:	74 0d                	je     9a0 <deregister_tm_clones+0x30>
 993:	5d                   	pop    %rbp
 994:	ff e0                	jmpq   *%rax
 996:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 99d:	00 00 00 
 9a0:	5d                   	pop    %rbp
 9a1:	c3                   	retq   
 9a2:	0f 1f 40 00          	nopl   0x0(%rax)
 9a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 9ad:	00 00 00 

00000000000009b0 <register_tm_clones>:
 9b0:	48 8d 3d 59 16 20 00 	lea    0x201659(%rip),%rdi        # 202010 <__TMC_END__>
 9b7:	48 8d 35 52 16 20 00 	lea    0x201652(%rip),%rsi        # 202010 <__TMC_END__>
 9be:	55                   	push   %rbp
 9bf:	48 29 fe             	sub    %rdi,%rsi
 9c2:	48 89 e5             	mov    %rsp,%rbp
 9c5:	48 c1 fe 03          	sar    $0x3,%rsi
 9c9:	48 89 f0             	mov    %rsi,%rax
 9cc:	48 c1 e8 3f          	shr    $0x3f,%rax
 9d0:	48 01 c6             	add    %rax,%rsi
 9d3:	48 d1 fe             	sar    %rsi
 9d6:	74 18                	je     9f0 <register_tm_clones+0x40>
 9d8:	48 8b 05 11 16 20 00 	mov    0x201611(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 9df:	48 85 c0             	test   %rax,%rax
 9e2:	74 0c                	je     9f0 <register_tm_clones+0x40>
 9e4:	5d                   	pop    %rbp
 9e5:	ff e0                	jmpq   *%rax
 9e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 9ee:	00 00 
 9f0:	5d                   	pop    %rbp
 9f1:	c3                   	retq   
 9f2:	0f 1f 40 00          	nopl   0x0(%rax)
 9f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 9fd:	00 00 00 

0000000000000a00 <__do_global_dtors_aux>:
 a00:	80 3d 21 16 20 00 00 	cmpb   $0x0,0x201621(%rip)        # 202028 <completed.7696>
 a07:	75 2f                	jne    a38 <__do_global_dtors_aux+0x38>
 a09:	48 83 3d e7 15 20 00 	cmpq   $0x0,0x2015e7(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 a10:	00 
 a11:	55                   	push   %rbp
 a12:	48 89 e5             	mov    %rsp,%rbp
 a15:	74 0c                	je     a23 <__do_global_dtors_aux+0x23>
 a17:	48 8b 3d ea 15 20 00 	mov    0x2015ea(%rip),%rdi        # 202008 <__dso_handle>
 a1e:	e8 dd fe ff ff       	callq  900 <__cxa_finalize@plt>
 a23:	e8 48 ff ff ff       	callq  970 <deregister_tm_clones>
 a28:	c6 05 f9 15 20 00 01 	movb   $0x1,0x2015f9(%rip)        # 202028 <completed.7696>
 a2f:	5d                   	pop    %rbp
 a30:	c3                   	retq   
 a31:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 a38:	f3 c3                	repz retq 
 a3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000a40 <frame_dummy>:
 a40:	55                   	push   %rbp
 a41:	48 89 e5             	mov    %rsp,%rbp
 a44:	5d                   	pop    %rbp
 a45:	e9 66 ff ff ff       	jmpq   9b0 <register_tm_clones>
 a4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000a50 <is_prime>:
 a50:	83 05 d5 15 20 00 01 	addl   $0x1,0x2015d5(%rip)        # 20202c <global_data>
 a57:	83 ff 02             	cmp    $0x2,%edi
 a5a:	7e 34                	jle    a90 <is_prime+0x40>
 a5c:	89 fe                	mov    %edi,%esi
 a5e:	83 e6 01             	and    $0x1,%esi
 a61:	74 1d                	je     a80 <is_prime+0x30>
 a63:	b9 02 00 00 00       	mov    $0x2,%ecx
 a68:	eb 0f                	jmp    a79 <is_prime+0x29>
 a6a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 a70:	89 f8                	mov    %edi,%eax
 a72:	99                   	cltd   
 a73:	f7 f9                	idiv   %ecx
 a75:	85 d2                	test   %edx,%edx
 a77:	74 0f                	je     a88 <is_prime+0x38>
 a79:	83 c1 01             	add    $0x1,%ecx
 a7c:	39 cf                	cmp    %ecx,%edi
 a7e:	75 f0                	jne    a70 <is_prime+0x20>
 a80:	89 f0                	mov    %esi,%eax
 a82:	c3                   	retq   
 a83:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 a88:	31 f6                	xor    %esi,%esi
 a8a:	89 f0                	mov    %esi,%eax
 a8c:	c3                   	retq   
 a8d:	0f 1f 00             	nopl   (%rax)
 a90:	be 01 00 00 00       	mov    $0x1,%esi
 a95:	eb e9                	jmp    a80 <is_prime+0x30>
 a97:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 a9e:	00 00 

0000000000000aa0 <signal_handle>:
 aa0:	41 55                	push   %r13
 aa2:	41 54                	push   %r12
 aa4:	55                   	push   %rbp
 aa5:	53                   	push   %rbx
 aa6:	48 83 ec 38          	sub    $0x38,%rsp
 aaa:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 ab1:	00 00 
 ab3:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
 ab8:	31 c0                	xor    %eax,%eax
 aba:	83 ff 0a             	cmp    $0xa,%edi
 abd:	74 21                	je     ae0 <signal_handle+0x40>
 abf:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
 ac4:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 acb:	00 00 
 acd:	0f 85 0b 01 00 00    	jne    bde <signal_handle+0x13e>
 ad3:	48 83 c4 38          	add    $0x38,%rsp
 ad7:	5b                   	pop    %rbx
 ad8:	5d                   	pop    %rbp
 ad9:	41 5c                	pop    %r12
 adb:	41 5d                	pop    %r13
 add:	c3                   	retq   
 ade:	66 90                	xchg   %ax,%ax
 ae0:	48 8d 3d 4d 02 00 00 	lea    0x24d(%rip),%rdi        # d34 <_IO_stdin_used+0x4>
 ae7:	be 01 00 00 00       	mov    $0x1,%esi
 aec:	e8 7f fd ff ff       	callq  870 <dlopen@plt>
 af1:	48 85 c0             	test   %rax,%rax
 af4:	48 89 c3             	mov    %rax,%rbx
 af7:	0f 84 e6 00 00 00    	je     be3 <signal_handle+0x143>
 afd:	48 8d 35 3d 02 00 00 	lea    0x23d(%rip),%rsi        # d41 <_IO_stdin_used+0x11>
 b04:	48 89 c7             	mov    %rax,%rdi
 b07:	e8 c4 fd ff ff       	callq  8d0 <dlsym@plt>
 b0c:	48 89 e6             	mov    %rsp,%rsi
 b0f:	48 89 c5             	mov    %rax,%rbp
 b12:	48 89 c7             	mov    %rax,%rdi
 b15:	e8 36 fd ff ff       	callq  850 <dladdr@plt>
 b1a:	48 85 ed             	test   %rbp,%rbp
 b1d:	0f 84 c0 00 00 00    	je     be3 <signal_handle+0x143>
 b23:	85 c0                	test   %eax,%eax
 b25:	0f 84 b8 00 00 00    	je     be3 <signal_handle+0x143>
 b2b:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
 b30:	48 8d 35 f5 14 20 00 	lea    0x2014f5(%rip),%rsi        # 20202c <global_data>
 b37:	ff d5                	callq  *%rbp
 b39:	48 8d 35 0a 02 00 00 	lea    0x20a(%rip),%rsi        # d4a <_IO_stdin_used+0x1a>
 b40:	48 89 df             	mov    %rbx,%rdi
 b43:	e8 88 fd ff ff       	callq  8d0 <dlsym@plt>
 b48:	bf 1e 00 00 00       	mov    $0x1e,%edi
 b4d:	49 89 c5             	mov    %rax,%r13
 b50:	e8 4b fd ff ff       	callq  8a0 <sysconf@plt>
 b55:	89 c5                	mov    %eax,%ebp
 b57:	48 8d 15 f2 fe ff ff 	lea    -0x10e(%rip),%rdx        # a50 <is_prime>
 b5e:	48 63 d8             	movslq %eax,%rbx
 b61:	f7 dd                	neg    %ebp
 b63:	48 89 de             	mov    %rbx,%rsi
 b66:	48 63 ed             	movslq %ebp,%rbp
 b69:	48 21 d5             	and    %rdx,%rbp
 b6c:	ba 07 00 00 00       	mov    $0x7,%edx
 b71:	4c 8d 64 1d 00       	lea    0x0(%rbp,%rbx,1),%r12
 b76:	48 89 ef             	mov    %rbp,%rdi
 b79:	e8 12 fd ff ff       	callq  890 <mprotect@plt>
 b7e:	48 89 de             	mov    %rbx,%rsi
 b81:	4c 89 e7             	mov    %r12,%rdi
 b84:	ba 07 00 00 00       	mov    $0x7,%edx
 b89:	e8 02 fd ff ff       	callq  890 <mprotect@plt>
 b8e:	48 89 de             	mov    %rbx,%rsi
 b91:	48 89 ef             	mov    %rbp,%rdi
 b94:	b8 50 48 00 00       	mov    $0x4850,%eax
 b99:	ba 05 00 00 00       	mov    $0x5,%edx
 b9e:	4c 89 2d ae fe ff ff 	mov    %r13,-0x152(%rip)        # a53 <is_prime+0x3>
 ba5:	66 89 05 a4 fe ff ff 	mov    %ax,-0x15c(%rip)        # a50 <is_prime>
 bac:	c6 05 9f fe ff ff b8 	movb   $0xb8,-0x161(%rip)        # a52 <is_prime+0x2>
 bb3:	c7 05 9e fe ff ff ff 	movl   $0x9090e0ff,-0x162(%rip)        # a5b <is_prime+0xb>
 bba:	e0 90 90 
 bbd:	c6 05 9b fe ff ff 90 	movb   $0x90,-0x165(%rip)        # a5f <is_prime+0xf>
 bc4:	e8 c7 fc ff ff       	callq  890 <mprotect@plt>
 bc9:	ba 05 00 00 00       	mov    $0x5,%edx
 bce:	48 89 de             	mov    %rbx,%rsi
 bd1:	4c 89 e7             	mov    %r12,%rdi
 bd4:	e8 b7 fc ff ff       	callq  890 <mprotect@plt>
 bd9:	e9 e1 fe ff ff       	jmpq   abf <signal_handle+0x1f>
 bde:	e8 5d fc ff ff       	callq  840 <__stack_chk_fail@plt>
 be3:	e8 08 fd ff ff       	callq  8f0 <dlerror@plt>
 be8:	48 8b 3d 31 14 20 00 	mov    0x201431(%rip),%rdi        # 202020 <stderr@@GLIBC_2.2.5>
 bef:	48 8d 15 47 01 00 00 	lea    0x147(%rip),%rdx        # d3d <_IO_stdin_used+0xd>
 bf6:	48 89 c1             	mov    %rax,%rcx
 bf9:	be 01 00 00 00       	mov    $0x1,%esi
 bfe:	31 c0                	xor    %eax,%eax
 c00:	e8 bb fc ff ff       	callq  8c0 <__fprintf_chk@plt>
 c05:	83 cf ff             	or     $0xffffffff,%edi
 c08:	e8 a3 fc ff ff       	callq  8b0 <exit@plt>
 c0d:	0f 1f 00             	nopl   (%rax)

0000000000000c10 <print_prime>:
 c10:	55                   	push   %rbp
 c11:	53                   	push   %rbx
 c12:	48 8d 2d 3e 01 00 00 	lea    0x13e(%rip),%rbp        # d57 <_IO_stdin_used+0x27>
 c19:	bb 02 00 00 00       	mov    $0x2,%ebx
 c1e:	48 83 ec 08          	sub    $0x8,%rsp
 c22:	eb 0f                	jmp    c33 <print_prime+0x23>
 c24:	0f 1f 40 00          	nopl   0x0(%rax)
 c28:	83 c3 01             	add    $0x1,%ebx
 c2b:	81 fb 80 96 98 00    	cmp    $0x989680,%ebx
 c31:	74 4a                	je     c7d <print_prime+0x6d>
 c33:	8b 15 f3 13 20 00    	mov    0x2013f3(%rip),%edx        # 20202c <global_data>
 c39:	48 89 ee             	mov    %rbp,%rsi
 c3c:	bf 01 00 00 00       	mov    $0x1,%edi
 c41:	31 c0                	xor    %eax,%eax
 c43:	e8 38 fc ff ff       	callq  880 <__printf_chk@plt>
 c48:	89 df                	mov    %ebx,%edi
 c4a:	e8 01 fe ff ff       	callq  a50 <is_prime>
 c4f:	85 c0                	test   %eax,%eax
 c51:	74 d5                	je     c28 <print_prime+0x18>
 c53:	bf 01 00 00 00       	mov    $0x1,%edi
 c58:	e8 83 fc ff ff       	callq  8e0 <sleep@plt>
 c5d:	48 8d 35 ff 00 00 00 	lea    0xff(%rip),%rsi        # d63 <_IO_stdin_used+0x33>
 c64:	89 da                	mov    %ebx,%edx
 c66:	31 c0                	xor    %eax,%eax
 c68:	bf 01 00 00 00       	mov    $0x1,%edi
 c6d:	83 c3 01             	add    $0x1,%ebx
 c70:	e8 0b fc ff ff       	callq  880 <__printf_chk@plt>
 c75:	81 fb 80 96 98 00    	cmp    $0x989680,%ebx
 c7b:	75 b6                	jne    c33 <print_prime+0x23>
 c7d:	48 83 c4 08          	add    $0x8,%rsp
 c81:	5b                   	pop    %rbx
 c82:	5d                   	pop    %rbp
 c83:	c3                   	retq   
 c84:	66 90                	xchg   %ax,%ax
 c86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 c8d:	00 00 00 

0000000000000c90 <shell>:
 c90:	48 8d 35 09 fe ff ff 	lea    -0x1f7(%rip),%rsi        # aa0 <signal_handle>
 c97:	bf 0a 00 00 00       	mov    $0xa,%edi
 c9c:	e9 bf fb ff ff       	jmpq   860 <signal@plt>
 ca1:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 ca8:	00 00 00 
 cab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000cb0 <__libc_csu_init>:
 cb0:	41 57                	push   %r15
 cb2:	41 56                	push   %r14
 cb4:	49 89 d7             	mov    %rdx,%r15
 cb7:	41 55                	push   %r13
 cb9:	41 54                	push   %r12
 cbb:	4c 8d 25 8e 10 20 00 	lea    0x20108e(%rip),%r12        # 201d50 <__frame_dummy_init_array_entry>
 cc2:	55                   	push   %rbp
 cc3:	48 8d 2d 8e 10 20 00 	lea    0x20108e(%rip),%rbp        # 201d58 <__init_array_end>
 cca:	53                   	push   %rbx
 ccb:	41 89 fd             	mov    %edi,%r13d
 cce:	49 89 f6             	mov    %rsi,%r14
 cd1:	4c 29 e5             	sub    %r12,%rbp
 cd4:	48 83 ec 08          	sub    $0x8,%rsp
 cd8:	48 c1 fd 03          	sar    $0x3,%rbp
 cdc:	e8 37 fb ff ff       	callq  818 <_init>
 ce1:	48 85 ed             	test   %rbp,%rbp
 ce4:	74 20                	je     d06 <__libc_csu_init+0x56>
 ce6:	31 db                	xor    %ebx,%ebx
 ce8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 cef:	00 
 cf0:	4c 89 fa             	mov    %r15,%rdx
 cf3:	4c 89 f6             	mov    %r14,%rsi
 cf6:	44 89 ef             	mov    %r13d,%edi
 cf9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 cfd:	48 83 c3 01          	add    $0x1,%rbx
 d01:	48 39 dd             	cmp    %rbx,%rbp
 d04:	75 ea                	jne    cf0 <__libc_csu_init+0x40>
 d06:	48 83 c4 08          	add    $0x8,%rsp
 d0a:	5b                   	pop    %rbx
 d0b:	5d                   	pop    %rbp
 d0c:	41 5c                	pop    %r12
 d0e:	41 5d                	pop    %r13
 d10:	41 5e                	pop    %r14
 d12:	41 5f                	pop    %r15
 d14:	c3                   	retq   
 d15:	90                   	nop
 d16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 d1d:	00 00 00 

0000000000000d20 <__libc_csu_fini>:
 d20:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000d24 <_fini>:
 d24:	48 83 ec 08          	sub    $0x8,%rsp
 d28:	48 83 c4 08          	add    $0x8,%rsp
 d2c:	c3                   	retq   
