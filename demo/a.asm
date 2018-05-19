
a.out：     文件格式 elf64-x86-64


Disassembly of section .init:

00000000000006d8 <_init>:
 6d8:	48 83 ec 08          	sub    $0x8,%rsp
 6dc:	48 8b 05 05 09 20 00 	mov    0x200905(%rip),%rax        # 200fe8 <__gmon_start__>
 6e3:	48 85 c0             	test   %rax,%rax
 6e6:	74 02                	je     6ea <_init+0x12>
 6e8:	ff d0                	callq  *%rax
 6ea:	48 83 c4 08          	add    $0x8,%rsp
 6ee:	c3                   	retq   

Disassembly of section .plt:

00000000000006f0 <.plt>:
 6f0:	ff 35 9a 08 20 00    	pushq  0x20089a(%rip)        # 200f90 <_GLOBAL_OFFSET_TABLE_+0x8>
 6f6:	ff 25 9c 08 20 00    	jmpq   *0x20089c(%rip)        # 200f98 <_GLOBAL_OFFSET_TABLE_+0x10>
 6fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000700 <signal@plt>:
 700:	ff 25 9a 08 20 00    	jmpq   *0x20089a(%rip)        # 200fa0 <signal@GLIBC_2.2.5>
 706:	68 00 00 00 00       	pushq  $0x0
 70b:	e9 e0 ff ff ff       	jmpq   6f0 <.plt>

0000000000000710 <dlopen@plt>:
 710:	ff 25 92 08 20 00    	jmpq   *0x200892(%rip)        # 200fa8 <dlopen@GLIBC_2.2.5>
 716:	68 01 00 00 00       	pushq  $0x1
 71b:	e9 d0 ff ff ff       	jmpq   6f0 <.plt>

0000000000000720 <__printf_chk@plt>:
 720:	ff 25 8a 08 20 00    	jmpq   *0x20088a(%rip)        # 200fb0 <__printf_chk@GLIBC_2.3.4>
 726:	68 02 00 00 00       	pushq  $0x2
 72b:	e9 c0 ff ff ff       	jmpq   6f0 <.plt>

0000000000000730 <exit@plt>:
 730:	ff 25 82 08 20 00    	jmpq   *0x200882(%rip)        # 200fb8 <exit@GLIBC_2.2.5>
 736:	68 03 00 00 00       	pushq  $0x3
 73b:	e9 b0 ff ff ff       	jmpq   6f0 <.plt>

0000000000000740 <__fprintf_chk@plt>:
 740:	ff 25 7a 08 20 00    	jmpq   *0x20087a(%rip)        # 200fc0 <__fprintf_chk@GLIBC_2.3.4>
 746:	68 04 00 00 00       	pushq  $0x4
 74b:	e9 a0 ff ff ff       	jmpq   6f0 <.plt>

0000000000000750 <sleep@plt>:
 750:	ff 25 72 08 20 00    	jmpq   *0x200872(%rip)        # 200fc8 <sleep@GLIBC_2.2.5>
 756:	68 05 00 00 00       	pushq  $0x5
 75b:	e9 90 ff ff ff       	jmpq   6f0 <.plt>

0000000000000760 <dlerror@plt>:
 760:	ff 25 6a 08 20 00    	jmpq   *0x20086a(%rip)        # 200fd0 <dlerror@GLIBC_2.2.5>
 766:	68 06 00 00 00       	pushq  $0x6
 76b:	e9 80 ff ff ff       	jmpq   6f0 <.plt>

Disassembly of section .plt.got:

0000000000000770 <__cxa_finalize@plt>:
 770:	ff 25 82 08 20 00    	jmpq   *0x200882(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 776:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000780 <main>:
 780:	48 8d 35 39 01 00 00 	lea    0x139(%rip),%rsi        # 8c0 <signal_handle>
 787:	48 83 ec 08          	sub    $0x8,%rsp
 78b:	bf 0a 00 00 00       	mov    $0xa,%edi
 790:	e8 6b ff ff ff       	callq  700 <signal@plt>
 795:	31 c0                	xor    %eax,%eax
 797:	e8 d4 01 00 00       	callq  970 <print_prime>
 79c:	31 c0                	xor    %eax,%eax
 79e:	48 83 c4 08          	add    $0x8,%rsp
 7a2:	c3                   	retq   
 7a3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 7aa:	00 00 00 
 7ad:	0f 1f 00             	nopl   (%rax)

00000000000007b0 <_start>:
 7b0:	31 ed                	xor    %ebp,%ebp
 7b2:	49 89 d1             	mov    %rdx,%r9
 7b5:	5e                   	pop    %rsi
 7b6:	48 89 e2             	mov    %rsp,%rdx
 7b9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 7bd:	50                   	push   %rax
 7be:	54                   	push   %rsp
 7bf:	4c 8d 05 9a 02 00 00 	lea    0x29a(%rip),%r8        # a60 <__libc_csu_fini>
 7c6:	48 8d 0d 23 02 00 00 	lea    0x223(%rip),%rcx        # 9f0 <__libc_csu_init>
 7cd:	48 8d 3d ac ff ff ff 	lea    -0x54(%rip),%rdi        # 780 <main>
 7d4:	ff 15 06 08 20 00    	callq  *0x200806(%rip)        # 200fe0 <__libc_start_main@GLIBC_2.2.5>
 7da:	f4                   	hlt    
 7db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000007e0 <deregister_tm_clones>:
 7e0:	48 8d 3d 29 08 20 00 	lea    0x200829(%rip),%rdi        # 201010 <__TMC_END__>
 7e7:	55                   	push   %rbp
 7e8:	48 8d 05 21 08 20 00 	lea    0x200821(%rip),%rax        # 201010 <__TMC_END__>
 7ef:	48 39 f8             	cmp    %rdi,%rax
 7f2:	48 89 e5             	mov    %rsp,%rbp
 7f5:	74 19                	je     810 <deregister_tm_clones+0x30>
 7f7:	48 8b 05 da 07 20 00 	mov    0x2007da(%rip),%rax        # 200fd8 <_ITM_deregisterTMCloneTable>
 7fe:	48 85 c0             	test   %rax,%rax
 801:	74 0d                	je     810 <deregister_tm_clones+0x30>
 803:	5d                   	pop    %rbp
 804:	ff e0                	jmpq   *%rax
 806:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 80d:	00 00 00 
 810:	5d                   	pop    %rbp
 811:	c3                   	retq   
 812:	0f 1f 40 00          	nopl   0x0(%rax)
 816:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 81d:	00 00 00 

0000000000000820 <register_tm_clones>:
 820:	48 8d 3d e9 07 20 00 	lea    0x2007e9(%rip),%rdi        # 201010 <__TMC_END__>
 827:	48 8d 35 e2 07 20 00 	lea    0x2007e2(%rip),%rsi        # 201010 <__TMC_END__>
 82e:	55                   	push   %rbp
 82f:	48 29 fe             	sub    %rdi,%rsi
 832:	48 89 e5             	mov    %rsp,%rbp
 835:	48 c1 fe 03          	sar    $0x3,%rsi
 839:	48 89 f0             	mov    %rsi,%rax
 83c:	48 c1 e8 3f          	shr    $0x3f,%rax
 840:	48 01 c6             	add    %rax,%rsi
 843:	48 d1 fe             	sar    %rsi
 846:	74 18                	je     860 <register_tm_clones+0x40>
 848:	48 8b 05 a1 07 20 00 	mov    0x2007a1(%rip),%rax        # 200ff0 <_ITM_registerTMCloneTable>
 84f:	48 85 c0             	test   %rax,%rax
 852:	74 0c                	je     860 <register_tm_clones+0x40>
 854:	5d                   	pop    %rbp
 855:	ff e0                	jmpq   *%rax
 857:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 85e:	00 00 
 860:	5d                   	pop    %rbp
 861:	c3                   	retq   
 862:	0f 1f 40 00          	nopl   0x0(%rax)
 866:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 86d:	00 00 00 

0000000000000870 <__do_global_dtors_aux>:
 870:	80 3d b1 07 20 00 00 	cmpb   $0x0,0x2007b1(%rip)        # 201028 <completed.7696>
 877:	75 2f                	jne    8a8 <__do_global_dtors_aux+0x38>
 879:	48 83 3d 77 07 20 00 	cmpq   $0x0,0x200777(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 880:	00 
 881:	55                   	push   %rbp
 882:	48 89 e5             	mov    %rsp,%rbp
 885:	74 0c                	je     893 <__do_global_dtors_aux+0x23>
 887:	48 8b 3d 7a 07 20 00 	mov    0x20077a(%rip),%rdi        # 201008 <__dso_handle>
 88e:	e8 dd fe ff ff       	callq  770 <__cxa_finalize@plt>
 893:	e8 48 ff ff ff       	callq  7e0 <deregister_tm_clones>
 898:	c6 05 89 07 20 00 01 	movb   $0x1,0x200789(%rip)        # 201028 <completed.7696>
 89f:	5d                   	pop    %rbp
 8a0:	c3                   	retq   
 8a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 8a8:	f3 c3                	repz retq 
 8aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000008b0 <frame_dummy>:
 8b0:	55                   	push   %rbp
 8b1:	48 89 e5             	mov    %rsp,%rbp
 8b4:	5d                   	pop    %rbp
 8b5:	e9 66 ff ff ff       	jmpq   820 <register_tm_clones>
 8ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000008c0 <signal_handle>:
 8c0:	83 ff 0a             	cmp    $0xa,%edi
 8c3:	74 0b                	je     8d0 <signal_handle+0x10>
 8c5:	f3 c3                	repz retq 
 8c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 8ce:	00 00 
 8d0:	48 8d 3d 9d 01 00 00 	lea    0x19d(%rip),%rdi        # a74 <_IO_stdin_used+0x4>
 8d7:	48 83 ec 08          	sub    $0x8,%rsp
 8db:	be 01 00 00 00       	mov    $0x1,%esi
 8e0:	e8 2b fe ff ff       	callq  710 <dlopen@plt>
 8e5:	48 85 c0             	test   %rax,%rax
 8e8:	74 05                	je     8ef <signal_handle+0x2f>
 8ea:	48 83 c4 08          	add    $0x8,%rsp
 8ee:	c3                   	retq   
 8ef:	e8 6c fe ff ff       	callq  760 <dlerror@plt>
 8f4:	48 8b 3d 25 07 20 00 	mov    0x200725(%rip),%rdi        # 201020 <stderr@@GLIBC_2.2.5>
 8fb:	48 8d 15 7b 01 00 00 	lea    0x17b(%rip),%rdx        # a7d <_IO_stdin_used+0xd>
 902:	48 89 c1             	mov    %rax,%rcx
 905:	be 01 00 00 00       	mov    $0x1,%esi
 90a:	31 c0                	xor    %eax,%eax
 90c:	e8 2f fe ff ff       	callq  740 <__fprintf_chk@plt>
 911:	83 cf ff             	or     $0xffffffff,%edi
 914:	e8 17 fe ff ff       	callq  730 <exit@plt>
 919:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000920 <is_prime>:
 920:	83 05 05 07 20 00 01 	addl   $0x1,0x200705(%rip)        # 20102c <global_data>
 927:	83 ff 02             	cmp    $0x2,%edi
 92a:	7e 34                	jle    960 <is_prime+0x40>
 92c:	89 fe                	mov    %edi,%esi
 92e:	83 e6 01             	and    $0x1,%esi
 931:	74 1d                	je     950 <is_prime+0x30>
 933:	b9 02 00 00 00       	mov    $0x2,%ecx
 938:	eb 0f                	jmp    949 <is_prime+0x29>
 93a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 940:	89 f8                	mov    %edi,%eax
 942:	99                   	cltd   
 943:	f7 f9                	idiv   %ecx
 945:	85 d2                	test   %edx,%edx
 947:	74 0f                	je     958 <is_prime+0x38>
 949:	83 c1 01             	add    $0x1,%ecx
 94c:	39 cf                	cmp    %ecx,%edi
 94e:	75 f0                	jne    940 <is_prime+0x20>
 950:	89 f0                	mov    %esi,%eax
 952:	c3                   	retq   
 953:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 958:	31 f6                	xor    %esi,%esi
 95a:	89 f0                	mov    %esi,%eax
 95c:	c3                   	retq   
 95d:	0f 1f 00             	nopl   (%rax)
 960:	be 01 00 00 00       	mov    $0x1,%esi
 965:	eb e9                	jmp    950 <is_prime+0x30>
 967:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 96e:	00 00 

0000000000000970 <print_prime>:
 970:	55                   	push   %rbp
 971:	53                   	push   %rbx
 972:	48 8d 2d 08 01 00 00 	lea    0x108(%rip),%rbp        # a81 <_IO_stdin_used+0x11>
 979:	bb 02 00 00 00       	mov    $0x2,%ebx
 97e:	48 83 ec 08          	sub    $0x8,%rsp
 982:	eb 0f                	jmp    993 <print_prime+0x23>
 984:	0f 1f 40 00          	nopl   0x0(%rax)
 988:	83 c3 01             	add    $0x1,%ebx
 98b:	81 fb 80 96 98 00    	cmp    $0x989680,%ebx
 991:	74 31                	je     9c4 <print_prime+0x54>
 993:	89 df                	mov    %ebx,%edi
 995:	e8 86 ff ff ff       	callq  920 <is_prime>
 99a:	85 c0                	test   %eax,%eax
 99c:	74 ea                	je     988 <print_prime+0x18>
 99e:	bf 01 00 00 00       	mov    $0x1,%edi
 9a3:	e8 a8 fd ff ff       	callq  750 <sleep@plt>
 9a8:	89 da                	mov    %ebx,%edx
 9aa:	31 c0                	xor    %eax,%eax
 9ac:	48 89 ee             	mov    %rbp,%rsi
 9af:	bf 01 00 00 00       	mov    $0x1,%edi
 9b4:	83 c3 01             	add    $0x1,%ebx
 9b7:	e8 64 fd ff ff       	callq  720 <__printf_chk@plt>
 9bc:	81 fb 80 96 98 00    	cmp    $0x989680,%ebx
 9c2:	75 cf                	jne    993 <print_prime+0x23>
 9c4:	48 83 c4 08          	add    $0x8,%rsp
 9c8:	5b                   	pop    %rbx
 9c9:	5d                   	pop    %rbp
 9ca:	c3                   	retq   
 9cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000009d0 <shell>:
 9d0:	48 8d 35 e9 fe ff ff 	lea    -0x117(%rip),%rsi        # 8c0 <signal_handle>
 9d7:	bf 0a 00 00 00       	mov    $0xa,%edi
 9dc:	e9 1f fd ff ff       	jmpq   700 <signal@plt>
 9e1:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 9e8:	00 00 00 
 9eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000009f0 <__libc_csu_init>:
 9f0:	41 57                	push   %r15
 9f2:	41 56                	push   %r14
 9f4:	49 89 d7             	mov    %rdx,%r15
 9f7:	41 55                	push   %r13
 9f9:	41 54                	push   %r12
 9fb:	4c 8d 25 76 03 20 00 	lea    0x200376(%rip),%r12        # 200d78 <__frame_dummy_init_array_entry>
 a02:	55                   	push   %rbp
 a03:	48 8d 2d 76 03 20 00 	lea    0x200376(%rip),%rbp        # 200d80 <__init_array_end>
 a0a:	53                   	push   %rbx
 a0b:	41 89 fd             	mov    %edi,%r13d
 a0e:	49 89 f6             	mov    %rsi,%r14
 a11:	4c 29 e5             	sub    %r12,%rbp
 a14:	48 83 ec 08          	sub    $0x8,%rsp
 a18:	48 c1 fd 03          	sar    $0x3,%rbp
 a1c:	e8 b7 fc ff ff       	callq  6d8 <_init>
 a21:	48 85 ed             	test   %rbp,%rbp
 a24:	74 20                	je     a46 <__libc_csu_init+0x56>
 a26:	31 db                	xor    %ebx,%ebx
 a28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 a2f:	00 
 a30:	4c 89 fa             	mov    %r15,%rdx
 a33:	4c 89 f6             	mov    %r14,%rsi
 a36:	44 89 ef             	mov    %r13d,%edi
 a39:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 a3d:	48 83 c3 01          	add    $0x1,%rbx
 a41:	48 39 dd             	cmp    %rbx,%rbp
 a44:	75 ea                	jne    a30 <__libc_csu_init+0x40>
 a46:	48 83 c4 08          	add    $0x8,%rsp
 a4a:	5b                   	pop    %rbx
 a4b:	5d                   	pop    %rbp
 a4c:	41 5c                	pop    %r12
 a4e:	41 5d                	pop    %r13
 a50:	41 5e                	pop    %r14
 a52:	41 5f                	pop    %r15
 a54:	c3                   	retq   
 a55:	90                   	nop
 a56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 a5d:	00 00 00 

0000000000000a60 <__libc_csu_fini>:
 a60:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000a64 <_fini>:
 a64:	48 83 ec 08          	sub    $0x8,%rsp
 a68:	48 83 c4 08          	add    $0x8,%rsp
 a6c:	c3                   	retq   
