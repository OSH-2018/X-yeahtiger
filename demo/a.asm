
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
 910:	48 8d 35 c9 01 00 00 	lea    0x1c9(%rip),%rsi        # ae0 <signal_handle>
 917:	48 83 ec 08          	sub    $0x8,%rsp
 91b:	bf 0a 00 00 00       	mov    $0xa,%edi
 920:	e8 3b ff ff ff       	callq  860 <signal@plt>
 925:	31 c0                	xor    %eax,%eax
 927:	e8 34 03 00 00       	callq  c60 <print_prime>
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
 94f:	4c 8d 05 fa 03 00 00 	lea    0x3fa(%rip),%r8        # d50 <__libc_csu_fini>
 956:	48 8d 0d 83 03 00 00 	lea    0x383(%rip),%rcx        # ce0 <__libc_csu_init>
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

0000000000000a50 <print_global>:
 a50:	8b 15 d6 15 20 00    	mov    0x2015d6(%rip),%edx        # 20202c <global_data>
 a56:	48 8d 35 07 03 00 00 	lea    0x307(%rip),%rsi        # d64 <_IO_stdin_used+0x4>
 a5d:	bf 01 00 00 00       	mov    $0x1,%edi
 a62:	31 c0                	xor    %eax,%eax
 a64:	e9 17 fe ff ff       	jmpq   880 <__printf_chk@plt>
 a69:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000a70 <is_prime>:
 a70:	8b 15 b6 15 20 00    	mov    0x2015b6(%rip),%edx        # 20202c <global_data>
 a76:	53                   	push   %rbx
 a77:	48 8d 35 e6 02 00 00 	lea    0x2e6(%rip),%rsi        # d64 <_IO_stdin_used+0x4>
 a7e:	89 fb                	mov    %edi,%ebx
 a80:	31 c0                	xor    %eax,%eax
 a82:	bf 01 00 00 00       	mov    $0x1,%edi
 a87:	e8 f4 fd ff ff       	callq  880 <__printf_chk@plt>
 a8c:	83 05 99 15 20 00 01 	addl   $0x1,0x201599(%rip)        # 20202c <global_data>
 a93:	83 fb 02             	cmp    $0x2,%ebx
 a96:	7e 38                	jle    ad0 <is_prime+0x60>
 a98:	89 de                	mov    %ebx,%esi
 a9a:	83 e6 01             	and    $0x1,%esi
 a9d:	74 21                	je     ac0 <is_prime+0x50>
 a9f:	b9 02 00 00 00       	mov    $0x2,%ecx
 aa4:	eb 13                	jmp    ab9 <is_prime+0x49>
 aa6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 aad:	00 00 00 
 ab0:	89 d8                	mov    %ebx,%eax
 ab2:	99                   	cltd   
 ab3:	f7 f9                	idiv   %ecx
 ab5:	85 d2                	test   %edx,%edx
 ab7:	74 0f                	je     ac8 <is_prime+0x58>
 ab9:	83 c1 01             	add    $0x1,%ecx
 abc:	39 cb                	cmp    %ecx,%ebx
 abe:	75 f0                	jne    ab0 <is_prime+0x40>
 ac0:	89 f0                	mov    %esi,%eax
 ac2:	5b                   	pop    %rbx
 ac3:	c3                   	retq   
 ac4:	0f 1f 40 00          	nopl   0x0(%rax)
 ac8:	31 f6                	xor    %esi,%esi
 aca:	89 f0                	mov    %esi,%eax
 acc:	5b                   	pop    %rbx
 acd:	c3                   	retq   
 ace:	66 90                	xchg   %ax,%ax
 ad0:	be 01 00 00 00       	mov    $0x1,%esi
 ad5:	eb e9                	jmp    ac0 <is_prime+0x50>
 ad7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 ade:	00 00 

0000000000000ae0 <signal_handle>:
 ae0:	41 55                	push   %r13
 ae2:	41 54                	push   %r12
 ae4:	55                   	push   %rbp
 ae5:	53                   	push   %rbx
 ae6:	48 83 ec 38          	sub    $0x38,%rsp
 aea:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 af1:	00 00 
 af3:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
 af8:	31 c0                	xor    %eax,%eax
 afa:	83 ff 0a             	cmp    $0xa,%edi
 afd:	74 21                	je     b20 <signal_handle+0x40>
 aff:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
 b04:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 b0b:	00 00 
 b0d:	0f 85 12 01 00 00    	jne    c25 <signal_handle+0x145>
 b13:	48 83 c4 38          	add    $0x38,%rsp
 b17:	5b                   	pop    %rbx
 b18:	5d                   	pop    %rbp
 b19:	41 5c                	pop    %r12
 b1b:	41 5d                	pop    %r13
 b1d:	c3                   	retq   
 b1e:	66 90                	xchg   %ax,%ax
 b20:	48 8d 3d 4d 02 00 00 	lea    0x24d(%rip),%rdi        # d74 <_IO_stdin_used+0x14>
 b27:	be 01 00 00 00       	mov    $0x1,%esi
 b2c:	e8 3f fd ff ff       	callq  870 <dlopen@plt>
 b31:	48 85 c0             	test   %rax,%rax
 b34:	48 89 c3             	mov    %rax,%rbx
 b37:	0f 84 ed 00 00 00    	je     c2a <signal_handle+0x14a>
 b3d:	48 8d 35 3d 02 00 00 	lea    0x23d(%rip),%rsi        # d81 <_IO_stdin_used+0x21>
 b44:	48 89 c7             	mov    %rax,%rdi
 b47:	e8 84 fd ff ff       	callq  8d0 <dlsym@plt>
 b4c:	48 89 e6             	mov    %rsp,%rsi
 b4f:	48 89 c5             	mov    %rax,%rbp
 b52:	48 89 c7             	mov    %rax,%rdi
 b55:	e8 f6 fc ff ff       	callq  850 <dladdr@plt>
 b5a:	48 85 ed             	test   %rbp,%rbp
 b5d:	0f 84 c7 00 00 00    	je     c2a <signal_handle+0x14a>
 b63:	85 c0                	test   %eax,%eax
 b65:	0f 84 bf 00 00 00    	je     c2a <signal_handle+0x14a>
 b6b:	48 8d 15 de fe ff ff 	lea    -0x122(%rip),%rdx        # a50 <print_global>
 b72:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
 b77:	48 8d 35 ae 14 20 00 	lea    0x2014ae(%rip),%rsi        # 20202c <global_data>
 b7e:	ff d5                	callq  *%rbp
 b80:	48 8d 35 03 02 00 00 	lea    0x203(%rip),%rsi        # d8a <_IO_stdin_used+0x2a>
 b87:	48 89 df             	mov    %rbx,%rdi
 b8a:	e8 41 fd ff ff       	callq  8d0 <dlsym@plt>
 b8f:	bf 1e 00 00 00       	mov    $0x1e,%edi
 b94:	49 89 c5             	mov    %rax,%r13
 b97:	e8 04 fd ff ff       	callq  8a0 <sysconf@plt>
 b9c:	89 c5                	mov    %eax,%ebp
 b9e:	48 8d 15 cb fe ff ff 	lea    -0x135(%rip),%rdx        # a70 <is_prime>
 ba5:	48 63 d8             	movslq %eax,%rbx
 ba8:	f7 dd                	neg    %ebp
 baa:	48 89 de             	mov    %rbx,%rsi
 bad:	48 63 ed             	movslq %ebp,%rbp
 bb0:	48 21 d5             	and    %rdx,%rbp
 bb3:	ba 07 00 00 00       	mov    $0x7,%edx
 bb8:	4c 8d 64 1d 00       	lea    0x0(%rbp,%rbx,1),%r12
 bbd:	48 89 ef             	mov    %rbp,%rdi
 bc0:	e8 cb fc ff ff       	callq  890 <mprotect@plt>
 bc5:	48 89 de             	mov    %rbx,%rsi
 bc8:	4c 89 e7             	mov    %r12,%rdi
 bcb:	ba 07 00 00 00       	mov    $0x7,%edx
 bd0:	e8 bb fc ff ff       	callq  890 <mprotect@plt>
 bd5:	48 89 de             	mov    %rbx,%rsi
 bd8:	48 89 ef             	mov    %rbp,%rdi
 bdb:	b8 50 48 00 00       	mov    $0x4850,%eax
 be0:	ba 05 00 00 00       	mov    $0x5,%edx
 be5:	4c 89 2d 87 fe ff ff 	mov    %r13,-0x179(%rip)        # a73 <is_prime+0x3>
 bec:	66 89 05 7d fe ff ff 	mov    %ax,-0x183(%rip)        # a70 <is_prime>
 bf3:	c6 05 78 fe ff ff b8 	movb   $0xb8,-0x188(%rip)        # a72 <is_prime+0x2>
 bfa:	c7 05 77 fe ff ff ff 	movl   $0x9090e0ff,-0x189(%rip)        # a7b <is_prime+0xb>
 c01:	e0 90 90 
 c04:	c6 05 74 fe ff ff 90 	movb   $0x90,-0x18c(%rip)        # a7f <is_prime+0xf>
 c0b:	e8 80 fc ff ff       	callq  890 <mprotect@plt>
 c10:	ba 05 00 00 00       	mov    $0x5,%edx
 c15:	48 89 de             	mov    %rbx,%rsi
 c18:	4c 89 e7             	mov    %r12,%rdi
 c1b:	e8 70 fc ff ff       	callq  890 <mprotect@plt>
 c20:	e9 da fe ff ff       	jmpq   aff <signal_handle+0x1f>
 c25:	e8 16 fc ff ff       	callq  840 <__stack_chk_fail@plt>
 c2a:	e8 c1 fc ff ff       	callq  8f0 <dlerror@plt>
 c2f:	48 8b 3d ea 13 20 00 	mov    0x2013ea(%rip),%rdi        # 202020 <stderr@@GLIBC_2.2.5>
 c36:	48 8d 15 40 01 00 00 	lea    0x140(%rip),%rdx        # d7d <_IO_stdin_used+0x1d>
 c3d:	48 89 c1             	mov    %rax,%rcx
 c40:	be 01 00 00 00       	mov    $0x1,%esi
 c45:	31 c0                	xor    %eax,%eax
 c47:	e8 74 fc ff ff       	callq  8c0 <__fprintf_chk@plt>
 c4c:	83 cf ff             	or     $0xffffffff,%edi
 c4f:	e8 5c fc ff ff       	callq  8b0 <exit@plt>
 c54:	66 90                	xchg   %ax,%ax
 c56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 c5d:	00 00 00 

0000000000000c60 <print_prime>:
 c60:	55                   	push   %rbp
 c61:	53                   	push   %rbx
 c62:	48 8d 2d 07 01 00 00 	lea    0x107(%rip),%rbp        # d70 <_IO_stdin_used+0x10>
 c69:	bb 02 00 00 00       	mov    $0x2,%ebx
 c6e:	48 83 ec 08          	sub    $0x8,%rsp
 c72:	eb 0f                	jmp    c83 <print_prime+0x23>
 c74:	0f 1f 40 00          	nopl   0x0(%rax)
 c78:	83 c3 01             	add    $0x1,%ebx
 c7b:	81 fb 80 96 98 00    	cmp    $0x989680,%ebx
 c81:	74 31                	je     cb4 <print_prime+0x54>
 c83:	89 df                	mov    %ebx,%edi
 c85:	e8 e6 fd ff ff       	callq  a70 <is_prime>
 c8a:	85 c0                	test   %eax,%eax
 c8c:	74 ea                	je     c78 <print_prime+0x18>
 c8e:	bf 01 00 00 00       	mov    $0x1,%edi
 c93:	e8 48 fc ff ff       	callq  8e0 <sleep@plt>
 c98:	89 da                	mov    %ebx,%edx
 c9a:	31 c0                	xor    %eax,%eax
 c9c:	48 89 ee             	mov    %rbp,%rsi
 c9f:	bf 01 00 00 00       	mov    $0x1,%edi
 ca4:	83 c3 01             	add    $0x1,%ebx
 ca7:	e8 d4 fb ff ff       	callq  880 <__printf_chk@plt>
 cac:	81 fb 80 96 98 00    	cmp    $0x989680,%ebx
 cb2:	75 cf                	jne    c83 <print_prime+0x23>
 cb4:	48 83 c4 08          	add    $0x8,%rsp
 cb8:	5b                   	pop    %rbx
 cb9:	5d                   	pop    %rbp
 cba:	c3                   	retq   
 cbb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000cc0 <shell>:
 cc0:	48 8d 35 19 fe ff ff 	lea    -0x1e7(%rip),%rsi        # ae0 <signal_handle>
 cc7:	bf 0a 00 00 00       	mov    $0xa,%edi
 ccc:	e9 8f fb ff ff       	jmpq   860 <signal@plt>
 cd1:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 cd8:	00 00 00 
 cdb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000ce0 <__libc_csu_init>:
 ce0:	41 57                	push   %r15
 ce2:	41 56                	push   %r14
 ce4:	49 89 d7             	mov    %rdx,%r15
 ce7:	41 55                	push   %r13
 ce9:	41 54                	push   %r12
 ceb:	4c 8d 25 5e 10 20 00 	lea    0x20105e(%rip),%r12        # 201d50 <__frame_dummy_init_array_entry>
 cf2:	55                   	push   %rbp
 cf3:	48 8d 2d 5e 10 20 00 	lea    0x20105e(%rip),%rbp        # 201d58 <__init_array_end>
 cfa:	53                   	push   %rbx
 cfb:	41 89 fd             	mov    %edi,%r13d
 cfe:	49 89 f6             	mov    %rsi,%r14
 d01:	4c 29 e5             	sub    %r12,%rbp
 d04:	48 83 ec 08          	sub    $0x8,%rsp
 d08:	48 c1 fd 03          	sar    $0x3,%rbp
 d0c:	e8 07 fb ff ff       	callq  818 <_init>
 d11:	48 85 ed             	test   %rbp,%rbp
 d14:	74 20                	je     d36 <__libc_csu_init+0x56>
 d16:	31 db                	xor    %ebx,%ebx
 d18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 d1f:	00 
 d20:	4c 89 fa             	mov    %r15,%rdx
 d23:	4c 89 f6             	mov    %r14,%rsi
 d26:	44 89 ef             	mov    %r13d,%edi
 d29:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 d2d:	48 83 c3 01          	add    $0x1,%rbx
 d31:	48 39 dd             	cmp    %rbx,%rbp
 d34:	75 ea                	jne    d20 <__libc_csu_init+0x40>
 d36:	48 83 c4 08          	add    $0x8,%rsp
 d3a:	5b                   	pop    %rbx
 d3b:	5d                   	pop    %rbp
 d3c:	41 5c                	pop    %r12
 d3e:	41 5d                	pop    %r13
 d40:	41 5e                	pop    %r14
 d42:	41 5f                	pop    %r15
 d44:	c3                   	retq   
 d45:	90                   	nop
 d46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 d4d:	00 00 00 

0000000000000d50 <__libc_csu_fini>:
 d50:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000d54 <_fini>:
 d54:	48 83 ec 08          	sub    $0x8,%rsp
 d58:	48 83 c4 08          	add    $0x8,%rsp
 d5c:	c3                   	retq   
