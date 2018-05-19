
a.out：     文件格式 elf64-x86-64


Disassembly of section .init:

0000000000000780 <_init>:
 780:	48 83 ec 08          	sub    $0x8,%rsp
 784:	48 8b 05 5d 18 20 00 	mov    0x20185d(%rip),%rax        # 201fe8 <__gmon_start__>
 78b:	48 85 c0             	test   %rax,%rax
 78e:	74 02                	je     792 <_init+0x12>
 790:	ff d0                	callq  *%rax
 792:	48 83 c4 08          	add    $0x8,%rsp
 796:	c3                   	retq   

Disassembly of section .plt:

00000000000007a0 <.plt>:
 7a0:	ff 35 d2 17 20 00    	pushq  0x2017d2(%rip)        # 201f78 <_GLOBAL_OFFSET_TABLE_+0x8>
 7a6:	ff 25 d4 17 20 00    	jmpq   *0x2017d4(%rip)        # 201f80 <_GLOBAL_OFFSET_TABLE_+0x10>
 7ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000007b0 <signal@plt>:
 7b0:	ff 25 d2 17 20 00    	jmpq   *0x2017d2(%rip)        # 201f88 <signal@GLIBC_2.2.5>
 7b6:	68 00 00 00 00       	pushq  $0x0
 7bb:	e9 e0 ff ff ff       	jmpq   7a0 <.plt>

00000000000007c0 <dlopen@plt>:
 7c0:	ff 25 ca 17 20 00    	jmpq   *0x2017ca(%rip)        # 201f90 <dlopen@GLIBC_2.2.5>
 7c6:	68 01 00 00 00       	pushq  $0x1
 7cb:	e9 d0 ff ff ff       	jmpq   7a0 <.plt>

00000000000007d0 <__printf_chk@plt>:
 7d0:	ff 25 c2 17 20 00    	jmpq   *0x2017c2(%rip)        # 201f98 <__printf_chk@GLIBC_2.3.4>
 7d6:	68 02 00 00 00       	pushq  $0x2
 7db:	e9 c0 ff ff ff       	jmpq   7a0 <.plt>

00000000000007e0 <mprotect@plt>:
 7e0:	ff 25 ba 17 20 00    	jmpq   *0x2017ba(%rip)        # 201fa0 <mprotect@GLIBC_2.2.5>
 7e6:	68 03 00 00 00       	pushq  $0x3
 7eb:	e9 b0 ff ff ff       	jmpq   7a0 <.plt>

00000000000007f0 <sysconf@plt>:
 7f0:	ff 25 b2 17 20 00    	jmpq   *0x2017b2(%rip)        # 201fa8 <sysconf@GLIBC_2.2.5>
 7f6:	68 04 00 00 00       	pushq  $0x4
 7fb:	e9 a0 ff ff ff       	jmpq   7a0 <.plt>

0000000000000800 <exit@plt>:
 800:	ff 25 aa 17 20 00    	jmpq   *0x2017aa(%rip)        # 201fb0 <exit@GLIBC_2.2.5>
 806:	68 05 00 00 00       	pushq  $0x5
 80b:	e9 90 ff ff ff       	jmpq   7a0 <.plt>

0000000000000810 <__fprintf_chk@plt>:
 810:	ff 25 a2 17 20 00    	jmpq   *0x2017a2(%rip)        # 201fb8 <__fprintf_chk@GLIBC_2.3.4>
 816:	68 06 00 00 00       	pushq  $0x6
 81b:	e9 80 ff ff ff       	jmpq   7a0 <.plt>

0000000000000820 <dlsym@plt>:
 820:	ff 25 9a 17 20 00    	jmpq   *0x20179a(%rip)        # 201fc0 <dlsym@GLIBC_2.2.5>
 826:	68 07 00 00 00       	pushq  $0x7
 82b:	e9 70 ff ff ff       	jmpq   7a0 <.plt>

0000000000000830 <sleep@plt>:
 830:	ff 25 92 17 20 00    	jmpq   *0x201792(%rip)        # 201fc8 <sleep@GLIBC_2.2.5>
 836:	68 08 00 00 00       	pushq  $0x8
 83b:	e9 60 ff ff ff       	jmpq   7a0 <.plt>

0000000000000840 <dlerror@plt>:
 840:	ff 25 8a 17 20 00    	jmpq   *0x20178a(%rip)        # 201fd0 <dlerror@GLIBC_2.2.5>
 846:	68 09 00 00 00       	pushq  $0x9
 84b:	e9 50 ff ff ff       	jmpq   7a0 <.plt>

Disassembly of section .plt.got:

0000000000000850 <__cxa_finalize@plt>:
 850:	ff 25 a2 17 20 00    	jmpq   *0x2017a2(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 856:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000860 <main>:
 860:	48 8d 35 89 01 00 00 	lea    0x189(%rip),%rsi        # 9f0 <signal_handle>
 867:	48 83 ec 08          	sub    $0x8,%rsp
 86b:	bf 0a 00 00 00       	mov    $0xa,%edi
 870:	e8 3b ff ff ff       	callq  7b0 <signal@plt>
 875:	31 c0                	xor    %eax,%eax
 877:	e8 d4 02 00 00       	callq  b50 <print_prime>
 87c:	31 c0                	xor    %eax,%eax
 87e:	48 83 c4 08          	add    $0x8,%rsp
 882:	c3                   	retq   
 883:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 88a:	00 00 00 
 88d:	0f 1f 00             	nopl   (%rax)

0000000000000890 <_start>:
 890:	31 ed                	xor    %ebp,%ebp
 892:	49 89 d1             	mov    %rdx,%r9
 895:	5e                   	pop    %rsi
 896:	48 89 e2             	mov    %rsp,%rdx
 899:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 89d:	50                   	push   %rax
 89e:	54                   	push   %rsp
 89f:	4c 8d 05 9a 03 00 00 	lea    0x39a(%rip),%r8        # c40 <__libc_csu_fini>
 8a6:	48 8d 0d 23 03 00 00 	lea    0x323(%rip),%rcx        # bd0 <__libc_csu_init>
 8ad:	48 8d 3d ac ff ff ff 	lea    -0x54(%rip),%rdi        # 860 <main>
 8b4:	ff 15 26 17 20 00    	callq  *0x201726(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 8ba:	f4                   	hlt    
 8bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000008c0 <deregister_tm_clones>:
 8c0:	48 8d 3d 49 17 20 00 	lea    0x201749(%rip),%rdi        # 202010 <__TMC_END__>
 8c7:	55                   	push   %rbp
 8c8:	48 8d 05 41 17 20 00 	lea    0x201741(%rip),%rax        # 202010 <__TMC_END__>
 8cf:	48 39 f8             	cmp    %rdi,%rax
 8d2:	48 89 e5             	mov    %rsp,%rbp
 8d5:	74 19                	je     8f0 <deregister_tm_clones+0x30>
 8d7:	48 8b 05 fa 16 20 00 	mov    0x2016fa(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 8de:	48 85 c0             	test   %rax,%rax
 8e1:	74 0d                	je     8f0 <deregister_tm_clones+0x30>
 8e3:	5d                   	pop    %rbp
 8e4:	ff e0                	jmpq   *%rax
 8e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 8ed:	00 00 00 
 8f0:	5d                   	pop    %rbp
 8f1:	c3                   	retq   
 8f2:	0f 1f 40 00          	nopl   0x0(%rax)
 8f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 8fd:	00 00 00 

0000000000000900 <register_tm_clones>:
 900:	48 8d 3d 09 17 20 00 	lea    0x201709(%rip),%rdi        # 202010 <__TMC_END__>
 907:	48 8d 35 02 17 20 00 	lea    0x201702(%rip),%rsi        # 202010 <__TMC_END__>
 90e:	55                   	push   %rbp
 90f:	48 29 fe             	sub    %rdi,%rsi
 912:	48 89 e5             	mov    %rsp,%rbp
 915:	48 c1 fe 03          	sar    $0x3,%rsi
 919:	48 89 f0             	mov    %rsi,%rax
 91c:	48 c1 e8 3f          	shr    $0x3f,%rax
 920:	48 01 c6             	add    %rax,%rsi
 923:	48 d1 fe             	sar    %rsi
 926:	74 18                	je     940 <register_tm_clones+0x40>
 928:	48 8b 05 c1 16 20 00 	mov    0x2016c1(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 92f:	48 85 c0             	test   %rax,%rax
 932:	74 0c                	je     940 <register_tm_clones+0x40>
 934:	5d                   	pop    %rbp
 935:	ff e0                	jmpq   *%rax
 937:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 93e:	00 00 
 940:	5d                   	pop    %rbp
 941:	c3                   	retq   
 942:	0f 1f 40 00          	nopl   0x0(%rax)
 946:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 94d:	00 00 00 

0000000000000950 <__do_global_dtors_aux>:
 950:	80 3d d1 16 20 00 00 	cmpb   $0x0,0x2016d1(%rip)        # 202028 <completed.7696>
 957:	75 2f                	jne    988 <__do_global_dtors_aux+0x38>
 959:	48 83 3d 97 16 20 00 	cmpq   $0x0,0x201697(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 960:	00 
 961:	55                   	push   %rbp
 962:	48 89 e5             	mov    %rsp,%rbp
 965:	74 0c                	je     973 <__do_global_dtors_aux+0x23>
 967:	48 8b 3d 9a 16 20 00 	mov    0x20169a(%rip),%rdi        # 202008 <__dso_handle>
 96e:	e8 dd fe ff ff       	callq  850 <__cxa_finalize@plt>
 973:	e8 48 ff ff ff       	callq  8c0 <deregister_tm_clones>
 978:	c6 05 a9 16 20 00 01 	movb   $0x1,0x2016a9(%rip)        # 202028 <completed.7696>
 97f:	5d                   	pop    %rbp
 980:	c3                   	retq   
 981:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 988:	f3 c3                	repz retq 
 98a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000990 <frame_dummy>:
 990:	55                   	push   %rbp
 991:	48 89 e5             	mov    %rsp,%rbp
 994:	5d                   	pop    %rbp
 995:	e9 66 ff ff ff       	jmpq   900 <register_tm_clones>
 99a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000009a0 <is_prime>:
 9a0:	83 05 85 16 20 00 01 	addl   $0x1,0x201685(%rip)        # 20202c <global_data>
 9a7:	83 ff 02             	cmp    $0x2,%edi
 9aa:	7e 34                	jle    9e0 <is_prime+0x40>
 9ac:	89 fe                	mov    %edi,%esi
 9ae:	83 e6 01             	and    $0x1,%esi
 9b1:	74 1d                	je     9d0 <is_prime+0x30>
 9b3:	b9 02 00 00 00       	mov    $0x2,%ecx
 9b8:	eb 0f                	jmp    9c9 <is_prime+0x29>
 9ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 9c0:	89 f8                	mov    %edi,%eax
 9c2:	99                   	cltd   
 9c3:	f7 f9                	idiv   %ecx
 9c5:	85 d2                	test   %edx,%edx
 9c7:	74 0f                	je     9d8 <is_prime+0x38>
 9c9:	83 c1 01             	add    $0x1,%ecx
 9cc:	39 cf                	cmp    %ecx,%edi
 9ce:	75 f0                	jne    9c0 <is_prime+0x20>
 9d0:	89 f0                	mov    %esi,%eax
 9d2:	c3                   	retq   
 9d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 9d8:	31 f6                	xor    %esi,%esi
 9da:	89 f0                	mov    %esi,%eax
 9dc:	c3                   	retq   
 9dd:	0f 1f 00             	nopl   (%rax)
 9e0:	be 01 00 00 00       	mov    $0x1,%esi
 9e5:	eb e9                	jmp    9d0 <is_prime+0x30>
 9e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 9ee:	00 00 

00000000000009f0 <signal_handle>:
 9f0:	83 ff 0a             	cmp    $0xa,%edi
 9f3:	74 0b                	je     a00 <signal_handle+0x10>
 9f5:	f3 c3                	repz retq 
 9f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 9fe:	00 00 
 a00:	41 55                	push   %r13
 a02:	41 54                	push   %r12
 a04:	48 8d 3d 49 02 00 00 	lea    0x249(%rip),%rdi        # c54 <_IO_stdin_used+0x4>
 a0b:	55                   	push   %rbp
 a0c:	53                   	push   %rbx
 a0d:	be 01 00 00 00       	mov    $0x1,%esi
 a12:	48 83 ec 08          	sub    $0x8,%rsp
 a16:	e8 a5 fd ff ff       	callq  7c0 <dlopen@plt>
 a1b:	48 85 c0             	test   %rax,%rax
 a1e:	48 89 c3             	mov    %rax,%rbx
 a21:	0f 84 cb 00 00 00    	je     af2 <signal_handle+0x102>
 a27:	48 8d 35 33 02 00 00 	lea    0x233(%rip),%rsi        # c61 <_IO_stdin_used+0x11>
 a2e:	48 89 c7             	mov    %rax,%rdi
 a31:	e8 ea fd ff ff       	callq  820 <dlsym@plt>
 a36:	48 85 c0             	test   %rax,%rax
 a39:	0f 84 dd 00 00 00    	je     b1c <signal_handle+0x12c>
 a3f:	48 8d 3d e6 15 20 00 	lea    0x2015e6(%rip),%rdi        # 20202c <global_data>
 a46:	ff d0                	callq  *%rax
 a48:	48 8d 35 1b 02 00 00 	lea    0x21b(%rip),%rsi        # c6a <_IO_stdin_used+0x1a>
 a4f:	48 89 df             	mov    %rbx,%rdi
 a52:	e8 c9 fd ff ff       	callq  820 <dlsym@plt>
 a57:	bf 1e 00 00 00       	mov    $0x1e,%edi
 a5c:	49 89 c5             	mov    %rax,%r13
 a5f:	e8 8c fd ff ff       	callq  7f0 <sysconf@plt>
 a64:	89 c5                	mov    %eax,%ebp
 a66:	48 8d 15 33 ff ff ff 	lea    -0xcd(%rip),%rdx        # 9a0 <is_prime>
 a6d:	48 63 d8             	movslq %eax,%rbx
 a70:	f7 dd                	neg    %ebp
 a72:	48 89 de             	mov    %rbx,%rsi
 a75:	48 63 ed             	movslq %ebp,%rbp
 a78:	48 21 d5             	and    %rdx,%rbp
 a7b:	ba 07 00 00 00       	mov    $0x7,%edx
 a80:	4c 8d 64 1d 00       	lea    0x0(%rbp,%rbx,1),%r12
 a85:	48 89 ef             	mov    %rbp,%rdi
 a88:	e8 53 fd ff ff       	callq  7e0 <mprotect@plt>
 a8d:	48 89 de             	mov    %rbx,%rsi
 a90:	4c 89 e7             	mov    %r12,%rdi
 a93:	ba 07 00 00 00       	mov    $0x7,%edx
 a98:	e8 43 fd ff ff       	callq  7e0 <mprotect@plt>
 a9d:	48 89 de             	mov    %rbx,%rsi
 aa0:	48 89 ef             	mov    %rbp,%rdi
 aa3:	b8 50 48 00 00       	mov    $0x4850,%eax
 aa8:	ba 05 00 00 00       	mov    $0x5,%edx
 aad:	4c 89 2d ef fe ff ff 	mov    %r13,-0x111(%rip)        # 9a3 <is_prime+0x3>
 ab4:	66 89 05 e5 fe ff ff 	mov    %ax,-0x11b(%rip)        # 9a0 <is_prime>
 abb:	c6 05 e0 fe ff ff b8 	movb   $0xb8,-0x120(%rip)        # 9a2 <is_prime+0x2>
 ac2:	c7 05 df fe ff ff ff 	movl   $0x9090e0ff,-0x121(%rip)        # 9ab <is_prime+0xb>
 ac9:	e0 90 90 
 acc:	c6 05 dc fe ff ff 90 	movb   $0x90,-0x124(%rip)        # 9af <is_prime+0xf>
 ad3:	e8 08 fd ff ff       	callq  7e0 <mprotect@plt>
 ad8:	48 83 c4 08          	add    $0x8,%rsp
 adc:	48 89 de             	mov    %rbx,%rsi
 adf:	4c 89 e7             	mov    %r12,%rdi
 ae2:	5b                   	pop    %rbx
 ae3:	5d                   	pop    %rbp
 ae4:	41 5c                	pop    %r12
 ae6:	41 5d                	pop    %r13
 ae8:	ba 05 00 00 00       	mov    $0x5,%edx
 aed:	e9 ee fc ff ff       	jmpq   7e0 <mprotect@plt>
 af2:	e8 49 fd ff ff       	callq  840 <dlerror@plt>
 af7:	48 8b 3d 22 15 20 00 	mov    0x201522(%rip),%rdi        # 202020 <stderr@@GLIBC_2.2.5>
 afe:	48 8d 15 58 01 00 00 	lea    0x158(%rip),%rdx        # c5d <_IO_stdin_used+0xd>
 b05:	48 89 c1             	mov    %rax,%rcx
 b08:	be 01 00 00 00       	mov    $0x1,%esi
 b0d:	31 c0                	xor    %eax,%eax
 b0f:	e8 fc fc ff ff       	callq  810 <__fprintf_chk@plt>
 b14:	83 cf ff             	or     $0xffffffff,%edi
 b17:	e8 e4 fc ff ff       	callq  800 <exit@plt>
 b1c:	e8 1f fd ff ff       	callq  840 <dlerror@plt>
 b21:	48 8b 3d f8 14 20 00 	mov    0x2014f8(%rip),%rdi        # 202020 <stderr@@GLIBC_2.2.5>
 b28:	48 8d 15 2e 01 00 00 	lea    0x12e(%rip),%rdx        # c5d <_IO_stdin_used+0xd>
 b2f:	48 89 c1             	mov    %rax,%rcx
 b32:	be 01 00 00 00       	mov    $0x1,%esi
 b37:	31 c0                	xor    %eax,%eax
 b39:	e8 d2 fc ff ff       	callq  810 <__fprintf_chk@plt>
 b3e:	83 cf ff             	or     $0xffffffff,%edi
 b41:	e8 ba fc ff ff       	callq  800 <exit@plt>
 b46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 b4d:	00 00 00 

0000000000000b50 <print_prime>:
 b50:	55                   	push   %rbp
 b51:	53                   	push   %rbx
 b52:	48 8d 2d 1e 01 00 00 	lea    0x11e(%rip),%rbp        # c77 <_IO_stdin_used+0x27>
 b59:	bb 02 00 00 00       	mov    $0x2,%ebx
 b5e:	48 83 ec 08          	sub    $0x8,%rsp
 b62:	eb 0f                	jmp    b73 <print_prime+0x23>
 b64:	0f 1f 40 00          	nopl   0x0(%rax)
 b68:	83 c3 01             	add    $0x1,%ebx
 b6b:	81 fb 80 96 98 00    	cmp    $0x989680,%ebx
 b71:	74 31                	je     ba4 <print_prime+0x54>
 b73:	89 df                	mov    %ebx,%edi
 b75:	e8 26 fe ff ff       	callq  9a0 <is_prime>
 b7a:	85 c0                	test   %eax,%eax
 b7c:	74 ea                	je     b68 <print_prime+0x18>
 b7e:	bf 01 00 00 00       	mov    $0x1,%edi
 b83:	e8 a8 fc ff ff       	callq  830 <sleep@plt>
 b88:	89 da                	mov    %ebx,%edx
 b8a:	31 c0                	xor    %eax,%eax
 b8c:	48 89 ee             	mov    %rbp,%rsi
 b8f:	bf 01 00 00 00       	mov    $0x1,%edi
 b94:	83 c3 01             	add    $0x1,%ebx
 b97:	e8 34 fc ff ff       	callq  7d0 <__printf_chk@plt>
 b9c:	81 fb 80 96 98 00    	cmp    $0x989680,%ebx
 ba2:	75 cf                	jne    b73 <print_prime+0x23>
 ba4:	48 83 c4 08          	add    $0x8,%rsp
 ba8:	5b                   	pop    %rbx
 ba9:	5d                   	pop    %rbp
 baa:	c3                   	retq   
 bab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000bb0 <shell>:
 bb0:	48 8d 35 39 fe ff ff 	lea    -0x1c7(%rip),%rsi        # 9f0 <signal_handle>
 bb7:	bf 0a 00 00 00       	mov    $0xa,%edi
 bbc:	e9 ef fb ff ff       	jmpq   7b0 <signal@plt>
 bc1:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 bc8:	00 00 00 
 bcb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000bd0 <__libc_csu_init>:
 bd0:	41 57                	push   %r15
 bd2:	41 56                	push   %r14
 bd4:	49 89 d7             	mov    %rdx,%r15
 bd7:	41 55                	push   %r13
 bd9:	41 54                	push   %r12
 bdb:	4c 8d 25 7e 11 20 00 	lea    0x20117e(%rip),%r12        # 201d60 <__frame_dummy_init_array_entry>
 be2:	55                   	push   %rbp
 be3:	48 8d 2d 7e 11 20 00 	lea    0x20117e(%rip),%rbp        # 201d68 <__init_array_end>
 bea:	53                   	push   %rbx
 beb:	41 89 fd             	mov    %edi,%r13d
 bee:	49 89 f6             	mov    %rsi,%r14
 bf1:	4c 29 e5             	sub    %r12,%rbp
 bf4:	48 83 ec 08          	sub    $0x8,%rsp
 bf8:	48 c1 fd 03          	sar    $0x3,%rbp
 bfc:	e8 7f fb ff ff       	callq  780 <_init>
 c01:	48 85 ed             	test   %rbp,%rbp
 c04:	74 20                	je     c26 <__libc_csu_init+0x56>
 c06:	31 db                	xor    %ebx,%ebx
 c08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 c0f:	00 
 c10:	4c 89 fa             	mov    %r15,%rdx
 c13:	4c 89 f6             	mov    %r14,%rsi
 c16:	44 89 ef             	mov    %r13d,%edi
 c19:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 c1d:	48 83 c3 01          	add    $0x1,%rbx
 c21:	48 39 dd             	cmp    %rbx,%rbp
 c24:	75 ea                	jne    c10 <__libc_csu_init+0x40>
 c26:	48 83 c4 08          	add    $0x8,%rsp
 c2a:	5b                   	pop    %rbx
 c2b:	5d                   	pop    %rbp
 c2c:	41 5c                	pop    %r12
 c2e:	41 5d                	pop    %r13
 c30:	41 5e                	pop    %r14
 c32:	41 5f                	pop    %r15
 c34:	c3                   	retq   
 c35:	90                   	nop
 c36:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 c3d:	00 00 00 

0000000000000c40 <__libc_csu_fini>:
 c40:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000c44 <_fini>:
 c44:	48 83 ec 08          	sub    $0x8,%rsp
 c48:	48 83 c4 08          	add    $0x8,%rsp
 c4c:	c3                   	retq   
