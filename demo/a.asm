
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
 910:	48 8d 35 79 03 00 00 	lea    0x379(%rip),%rsi        # c90 <signal_handle>
 917:	48 83 ec 08          	sub    $0x8,%rsp
 91b:	bf 0a 00 00 00       	mov    $0xa,%edi
 920:	e8 3b ff ff ff       	callq  860 <signal@plt>
 925:	31 c0                	xor    %eax,%eax
 927:	e8 f4 03 00 00       	callq  d20 <print_prime>
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
 94f:	4c 8d 05 ba 04 00 00 	lea    0x4ba(%rip),%r8        # e10 <__libc_csu_fini>
 956:	48 8d 0d 43 04 00 00 	lea    0x443(%rip),%rcx        # da0 <__libc_csu_init>
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
 a56:	48 8d 35 c7 03 00 00 	lea    0x3c7(%rip),%rsi        # e24 <_IO_stdin_used+0x4>
 a5d:	bf 01 00 00 00       	mov    $0x1,%edi
 a62:	31 c0                	xor    %eax,%eax
 a64:	e9 17 fe ff ff       	jmpq   880 <__printf_chk@plt>
 a69:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000a70 <do_fix>:
 a70:	41 57                	push   %r15
 a72:	41 56                	push   %r14
 a74:	48 8d 3d b9 03 00 00 	lea    0x3b9(%rip),%rdi        # e34 <_IO_stdin_used+0x14>
 a7b:	41 55                	push   %r13
 a7d:	41 54                	push   %r12
 a7f:	be 01 00 00 00       	mov    $0x1,%esi
 a84:	55                   	push   %rbp
 a85:	53                   	push   %rbx
 a86:	48 83 ec 68          	sub    $0x68,%rsp
 a8a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 a91:	00 00 
 a93:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
 a98:	31 c0                	xor    %eax,%eax
 a9a:	e8 d1 fd ff ff       	callq  870 <dlopen@plt>
 a9f:	48 85 c0             	test   %rax,%rax
 aa2:	0f 84 af 01 00 00    	je     c57 <do_fix+0x1e7>
 aa8:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
 aad:	48 8d 3d bc ff ff ff 	lea    -0x44(%rip),%rdi        # a70 <do_fix>
 ab4:	48 89 c3             	mov    %rax,%rbx
 ab7:	e8 94 fd ff ff       	callq  850 <dladdr@plt>
 abc:	85 c0                	test   %eax,%eax
 abe:	0f 84 93 01 00 00    	je     c57 <do_fix+0x1e7>
 ac4:	48 8d 35 76 03 00 00 	lea    0x376(%rip),%rsi        # e41 <_IO_stdin_used+0x21>
 acb:	48 89 df             	mov    %rbx,%rdi
 ace:	e8 fd fd ff ff       	callq  8d0 <dlsym@plt>
 ad3:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
 ad8:	49 89 c5             	mov    %rax,%r13
 adb:	48 89 c7             	mov    %rax,%rdi
 ade:	e8 6d fd ff ff       	callq  850 <dladdr@plt>
 ae3:	4d 85 ed             	test   %r13,%r13
 ae6:	0f 84 6b 01 00 00    	je     c57 <do_fix+0x1e7>
 aec:	85 c0                	test   %eax,%eax
 aee:	0f 84 63 01 00 00    	je     c57 <do_fix+0x1e7>
 af4:	bf 1e 00 00 00       	mov    $0x1e,%edi
 af9:	e8 a2 fd ff ff       	callq  8a0 <sysconf@plt>
 afe:	48 8b 6c 24 18       	mov    0x18(%rsp),%rbp
 b03:	4c 8b 74 24 38       	mov    0x38(%rsp),%r14
 b08:	89 c3                	mov    %eax,%ebx
 b0a:	f7 db                	neg    %ebx
 b0c:	4c 63 e0             	movslq %eax,%r12
 b0f:	ba 07 00 00 00       	mov    $0x7,%edx
 b14:	48 63 db             	movslq %ebx,%rbx
 b17:	4c 89 e6             	mov    %r12,%rsi
 b1a:	4c 8d bd f8 0f 20 00 	lea    0x200ff8(%rbp),%r15
 b21:	49 8d 8e 2c 20 20 00 	lea    0x20202c(%r14),%rcx
 b28:	4c 89 ff             	mov    %r15,%rdi
 b2b:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
 b30:	48 21 df             	and    %rbx,%rdi
 b33:	e8 58 fd ff ff       	callq  890 <mprotect@plt>
 b38:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
 b3d:	48 8d 35 0b 03 00 00 	lea    0x30b(%rip),%rsi        # e4f <_IO_stdin_used+0x2f>
 b44:	4c 89 fa             	mov    %r15,%rdx
 b47:	bf 01 00 00 00       	mov    $0x1,%edi
 b4c:	4c 8d bd f0 0f 20 00 	lea    0x200ff0(%rbp),%r15
 b53:	31 c0                	xor    %eax,%eax
 b55:	48 81 c5 90 03 00 00 	add    $0x390,%rbp
 b5c:	48 89 8d 68 0c 20 00 	mov    %rcx,0x200c68(%rbp)
 b63:	e8 18 fd ff ff       	callq  880 <__printf_chk@plt>
 b68:	49 8d 8e 50 0a 00 00 	lea    0xa50(%r14),%rcx
 b6f:	48 89 df             	mov    %rbx,%rdi
 b72:	ba 07 00 00 00       	mov    $0x7,%edx
 b77:	4c 21 ff             	and    %r15,%rdi
 b7a:	4c 89 e6             	mov    %r12,%rsi
 b7d:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
 b82:	e8 09 fd ff ff       	callq  890 <mprotect@plt>
 b87:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
 b8c:	48 8d 35 bc 02 00 00 	lea    0x2bc(%rip),%rsi        # e4f <_IO_stdin_used+0x2f>
 b93:	4c 89 fa             	mov    %r15,%rdx
 b96:	bf 01 00 00 00       	mov    $0x1,%edi
 b9b:	31 c0                	xor    %eax,%eax
 b9d:	48 89 8d 60 0c 20 00 	mov    %rcx,0x200c60(%rbp)
 ba4:	e8 d7 fc ff ff       	callq  880 <__printf_chk@plt>
 ba9:	48 8d 0d a0 fe ff ff 	lea    -0x160(%rip),%rcx        # a50 <print_global>
 bb0:	48 8d 15 75 14 20 00 	lea    0x201475(%rip),%rdx        # 20202c <global_data>
 bb7:	48 8d 35 9a 02 00 00 	lea    0x29a(%rip),%rsi        # e58 <_IO_stdin_used+0x38>
 bbe:	bf 01 00 00 00       	mov    $0x1,%edi
 bc3:	31 c0                	xor    %eax,%eax
 bc5:	e8 b6 fc ff ff       	callq  880 <__printf_chk@plt>
 bca:	31 c0                	xor    %eax,%eax
 bcc:	41 ff d5             	callq  *%r13
 bcf:	4d 8d ae b0 0c 00 00 	lea    0xcb0(%r14),%r13
 bd6:	48 8d 35 87 02 00 00 	lea    0x287(%rip),%rsi        # e64 <_IO_stdin_used+0x44>
 bdd:	48 89 e9             	mov    %rbp,%rcx
 be0:	bf 01 00 00 00       	mov    $0x1,%edi
 be5:	31 c0                	xor    %eax,%eax
 be7:	4c 21 eb             	and    %r13,%rbx
 bea:	4c 89 ea             	mov    %r13,%rdx
 bed:	e8 8e fc ff ff       	callq  880 <__printf_chk@plt>
 bf2:	ba 07 00 00 00       	mov    $0x7,%edx
 bf7:	4c 89 e6             	mov    %r12,%rsi
 bfa:	48 89 df             	mov    %rbx,%rdi
 bfd:	e8 8e fc ff ff       	callq  890 <mprotect@plt>
 c02:	b8 50 48 00 00       	mov    $0x4850,%eax
 c07:	ba 05 00 00 00       	mov    $0x5,%edx
 c0c:	4c 89 e6             	mov    %r12,%rsi
 c0f:	66 41 89 86 b0 0c 00 	mov    %ax,0xcb0(%r14)
 c16:	00 
 c17:	48 89 df             	mov    %rbx,%rdi
 c1a:	41 c6 45 02 b8       	movb   $0xb8,0x2(%r13)
 c1f:	49 89 ae b3 0c 00 00 	mov    %rbp,0xcb3(%r14)
 c26:	41 c7 45 0b ff e0 90 	movl   $0x9090e0ff,0xb(%r13)
 c2d:	90 
 c2e:	41 c6 45 0f 90       	movb   $0x90,0xf(%r13)
 c33:	e8 58 fc ff ff       	callq  890 <mprotect@plt>
 c38:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
 c3d:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 c44:	00 00 
 c46:	75 3b                	jne    c83 <do_fix+0x213>
 c48:	48 83 c4 68          	add    $0x68,%rsp
 c4c:	5b                   	pop    %rbx
 c4d:	5d                   	pop    %rbp
 c4e:	41 5c                	pop    %r12
 c50:	41 5d                	pop    %r13
 c52:	41 5e                	pop    %r14
 c54:	41 5f                	pop    %r15
 c56:	c3                   	retq   
 c57:	e8 94 fc ff ff       	callq  8f0 <dlerror@plt>
 c5c:	48 8b 3d bd 13 20 00 	mov    0x2013bd(%rip),%rdi        # 202020 <stderr@@GLIBC_2.2.5>
 c63:	48 8d 15 d3 01 00 00 	lea    0x1d3(%rip),%rdx        # e3d <_IO_stdin_used+0x1d>
 c6a:	48 89 c1             	mov    %rax,%rcx
 c6d:	be 01 00 00 00       	mov    $0x1,%esi
 c72:	31 c0                	xor    %eax,%eax
 c74:	e8 47 fc ff ff       	callq  8c0 <__fprintf_chk@plt>
 c79:	bf ff ff ff ff       	mov    $0xffffffff,%edi
 c7e:	e8 2d fc ff ff       	callq  8b0 <exit@plt>
 c83:	e8 b8 fb ff ff       	callq  840 <__stack_chk_fail@plt>
 c88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 c8f:	00 

0000000000000c90 <signal_handle>:
 c90:	83 ff 0a             	cmp    $0xa,%edi
 c93:	74 0b                	je     ca0 <signal_handle+0x10>
 c95:	f3 c3                	repz retq 
 c97:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 c9e:	00 00 
 ca0:	31 c0                	xor    %eax,%eax
 ca2:	e9 c9 fd ff ff       	jmpq   a70 <do_fix>
 ca7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 cae:	00 00 

0000000000000cb0 <is_prime>:
 cb0:	8b 15 76 13 20 00    	mov    0x201376(%rip),%edx        # 20202c <global_data>
 cb6:	53                   	push   %rbx
 cb7:	48 8d 35 66 01 00 00 	lea    0x166(%rip),%rsi        # e24 <_IO_stdin_used+0x4>
 cbe:	89 fb                	mov    %edi,%ebx
 cc0:	31 c0                	xor    %eax,%eax
 cc2:	bf 01 00 00 00       	mov    $0x1,%edi
 cc7:	e8 b4 fb ff ff       	callq  880 <__printf_chk@plt>
 ccc:	83 05 59 13 20 00 01 	addl   $0x1,0x201359(%rip)        # 20202c <global_data>
 cd3:	83 fb 02             	cmp    $0x2,%ebx
 cd6:	7e 38                	jle    d10 <is_prime+0x60>
 cd8:	89 de                	mov    %ebx,%esi
 cda:	83 e6 01             	and    $0x1,%esi
 cdd:	74 21                	je     d00 <is_prime+0x50>
 cdf:	b9 02 00 00 00       	mov    $0x2,%ecx
 ce4:	eb 13                	jmp    cf9 <is_prime+0x49>
 ce6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 ced:	00 00 00 
 cf0:	89 d8                	mov    %ebx,%eax
 cf2:	99                   	cltd   
 cf3:	f7 f9                	idiv   %ecx
 cf5:	85 d2                	test   %edx,%edx
 cf7:	74 0f                	je     d08 <is_prime+0x58>
 cf9:	83 c1 01             	add    $0x1,%ecx
 cfc:	39 cb                	cmp    %ecx,%ebx
 cfe:	75 f0                	jne    cf0 <is_prime+0x40>
 d00:	89 f0                	mov    %esi,%eax
 d02:	5b                   	pop    %rbx
 d03:	c3                   	retq   
 d04:	0f 1f 40 00          	nopl   0x0(%rax)
 d08:	31 f6                	xor    %esi,%esi
 d0a:	89 f0                	mov    %esi,%eax
 d0c:	5b                   	pop    %rbx
 d0d:	c3                   	retq   
 d0e:	66 90                	xchg   %ax,%ax
 d10:	be 01 00 00 00       	mov    $0x1,%esi
 d15:	eb e9                	jmp    d00 <is_prime+0x50>
 d17:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 d1e:	00 00 

0000000000000d20 <print_prime>:
 d20:	55                   	push   %rbp
 d21:	53                   	push   %rbx
 d22:	48 8d 2d 07 01 00 00 	lea    0x107(%rip),%rbp        # e30 <_IO_stdin_used+0x10>
 d29:	bb 02 00 00 00       	mov    $0x2,%ebx
 d2e:	48 83 ec 08          	sub    $0x8,%rsp
 d32:	eb 0f                	jmp    d43 <print_prime+0x23>
 d34:	0f 1f 40 00          	nopl   0x0(%rax)
 d38:	83 c3 01             	add    $0x1,%ebx
 d3b:	81 fb 80 96 98 00    	cmp    $0x989680,%ebx
 d41:	74 31                	je     d74 <print_prime+0x54>
 d43:	89 df                	mov    %ebx,%edi
 d45:	e8 66 ff ff ff       	callq  cb0 <is_prime>
 d4a:	85 c0                	test   %eax,%eax
 d4c:	74 ea                	je     d38 <print_prime+0x18>
 d4e:	bf 01 00 00 00       	mov    $0x1,%edi
 d53:	e8 88 fb ff ff       	callq  8e0 <sleep@plt>
 d58:	89 da                	mov    %ebx,%edx
 d5a:	31 c0                	xor    %eax,%eax
 d5c:	48 89 ee             	mov    %rbp,%rsi
 d5f:	bf 01 00 00 00       	mov    $0x1,%edi
 d64:	83 c3 01             	add    $0x1,%ebx
 d67:	e8 14 fb ff ff       	callq  880 <__printf_chk@plt>
 d6c:	81 fb 80 96 98 00    	cmp    $0x989680,%ebx
 d72:	75 cf                	jne    d43 <print_prime+0x23>
 d74:	48 83 c4 08          	add    $0x8,%rsp
 d78:	5b                   	pop    %rbx
 d79:	5d                   	pop    %rbp
 d7a:	c3                   	retq   
 d7b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000d80 <shell>:
 d80:	48 8d 35 09 ff ff ff 	lea    -0xf7(%rip),%rsi        # c90 <signal_handle>
 d87:	bf 0a 00 00 00       	mov    $0xa,%edi
 d8c:	e9 cf fa ff ff       	jmpq   860 <signal@plt>
 d91:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 d98:	00 00 00 
 d9b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000da0 <__libc_csu_init>:
 da0:	41 57                	push   %r15
 da2:	41 56                	push   %r14
 da4:	49 89 d7             	mov    %rdx,%r15
 da7:	41 55                	push   %r13
 da9:	41 54                	push   %r12
 dab:	4c 8d 25 9e 0f 20 00 	lea    0x200f9e(%rip),%r12        # 201d50 <__frame_dummy_init_array_entry>
 db2:	55                   	push   %rbp
 db3:	48 8d 2d 9e 0f 20 00 	lea    0x200f9e(%rip),%rbp        # 201d58 <__init_array_end>
 dba:	53                   	push   %rbx
 dbb:	41 89 fd             	mov    %edi,%r13d
 dbe:	49 89 f6             	mov    %rsi,%r14
 dc1:	4c 29 e5             	sub    %r12,%rbp
 dc4:	48 83 ec 08          	sub    $0x8,%rsp
 dc8:	48 c1 fd 03          	sar    $0x3,%rbp
 dcc:	e8 47 fa ff ff       	callq  818 <_init>
 dd1:	48 85 ed             	test   %rbp,%rbp
 dd4:	74 20                	je     df6 <__libc_csu_init+0x56>
 dd6:	31 db                	xor    %ebx,%ebx
 dd8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 ddf:	00 
 de0:	4c 89 fa             	mov    %r15,%rdx
 de3:	4c 89 f6             	mov    %r14,%rsi
 de6:	44 89 ef             	mov    %r13d,%edi
 de9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 ded:	48 83 c3 01          	add    $0x1,%rbx
 df1:	48 39 dd             	cmp    %rbx,%rbp
 df4:	75 ea                	jne    de0 <__libc_csu_init+0x40>
 df6:	48 83 c4 08          	add    $0x8,%rsp
 dfa:	5b                   	pop    %rbx
 dfb:	5d                   	pop    %rbp
 dfc:	41 5c                	pop    %r12
 dfe:	41 5d                	pop    %r13
 e00:	41 5e                	pop    %r14
 e02:	41 5f                	pop    %r15
 e04:	c3                   	retq   
 e05:	90                   	nop
 e06:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 e0d:	00 00 00 

0000000000000e10 <__libc_csu_fini>:
 e10:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000e14 <_fini>:
 e14:	48 83 ec 08          	sub    $0x8,%rsp
 e18:	48 83 c4 08          	add    $0x8,%rsp
 e1c:	c3                   	retq   
