
a.out：     文件格式 elf64-x86-64


Disassembly of section .init:

0000000000000630 <_init>:
 630:	48 83 ec 08          	sub    $0x8,%rsp
 634:	48 8b 05 a5 09 20 00 	mov    0x2009a5(%rip),%rax        # 200fe0 <__gmon_start__>
 63b:	48 85 c0             	test   %rax,%rax
 63e:	74 02                	je     642 <_init+0x12>
 640:	ff d0                	callq  *%rax
 642:	48 83 c4 08          	add    $0x8,%rsp
 646:	c3                   	retq   

Disassembly of section .plt:

0000000000000650 <.plt>:
 650:	ff 35 5a 09 20 00    	pushq  0x20095a(%rip)        # 200fb0 <_GLOBAL_OFFSET_TABLE_+0x8>
 656:	ff 25 5c 09 20 00    	jmpq   *0x20095c(%rip)        # 200fb8 <_GLOBAL_OFFSET_TABLE_+0x10>
 65c:	0f 1f 40 00          	nopl   0x0(%rax)

Disassembly of section .plt.got:

0000000000000660 <__cxa_finalize@plt>:
 660:	ff 25 92 09 20 00    	jmpq   *0x200992(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 666:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000670 <_start>:
 670:	31 ed                	xor    %ebp,%ebp
 672:	49 89 d1             	mov    %rdx,%r9
 675:	5e                   	pop    %rsi
 676:	48 89 e2             	mov    %rsp,%rdx
 679:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 67d:	50                   	push   %rax
 67e:	54                   	push   %rsp
 67f:	4c 8d 05 8a 02 00 00 	lea    0x28a(%rip),%r8        # 910 <__libc_csu_fini>
 686:	48 8d 0d 13 02 00 00 	lea    0x213(%rip),%rcx        # 8a0 <__libc_csu_init>
 68d:	48 8d 3d d0 01 00 00 	lea    0x1d0(%rip),%rdi        # 864 <main>
 694:	ff 15 3e 09 20 00    	callq  *0x20093e(%rip)        # 200fd8 <__libc_start_main@GLIBC_2.2.5>
 69a:	f4                   	hlt    
 69b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000006a0 <deregister_tm_clones>:
 6a0:	48 8d 3d 69 09 20 00 	lea    0x200969(%rip),%rdi        # 201010 <__TMC_END__>
 6a7:	55                   	push   %rbp
 6a8:	48 8d 05 61 09 20 00 	lea    0x200961(%rip),%rax        # 201010 <__TMC_END__>
 6af:	48 39 f8             	cmp    %rdi,%rax
 6b2:	48 89 e5             	mov    %rsp,%rbp
 6b5:	74 19                	je     6d0 <deregister_tm_clones+0x30>
 6b7:	48 8b 05 0a 09 20 00 	mov    0x20090a(%rip),%rax        # 200fc8 <_ITM_deregisterTMCloneTable>
 6be:	48 85 c0             	test   %rax,%rax
 6c1:	74 0d                	je     6d0 <deregister_tm_clones+0x30>
 6c3:	5d                   	pop    %rbp
 6c4:	ff e0                	jmpq   *%rax
 6c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 6cd:	00 00 00 
 6d0:	5d                   	pop    %rbp
 6d1:	c3                   	retq   
 6d2:	0f 1f 40 00          	nopl   0x0(%rax)
 6d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 6dd:	00 00 00 

00000000000006e0 <register_tm_clones>:
 6e0:	48 8d 3d 29 09 20 00 	lea    0x200929(%rip),%rdi        # 201010 <__TMC_END__>
 6e7:	48 8d 35 22 09 20 00 	lea    0x200922(%rip),%rsi        # 201010 <__TMC_END__>
 6ee:	55                   	push   %rbp
 6ef:	48 29 fe             	sub    %rdi,%rsi
 6f2:	48 89 e5             	mov    %rsp,%rbp
 6f5:	48 c1 fe 03          	sar    $0x3,%rsi
 6f9:	48 89 f0             	mov    %rsi,%rax
 6fc:	48 c1 e8 3f          	shr    $0x3f,%rax
 700:	48 01 c6             	add    %rax,%rsi
 703:	48 d1 fe             	sar    %rsi
 706:	74 18                	je     720 <register_tm_clones+0x40>
 708:	48 8b 05 d9 08 20 00 	mov    0x2008d9(%rip),%rax        # 200fe8 <_ITM_registerTMCloneTable>
 70f:	48 85 c0             	test   %rax,%rax
 712:	74 0c                	je     720 <register_tm_clones+0x40>
 714:	5d                   	pop    %rbp
 715:	ff e0                	jmpq   *%rax
 717:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 71e:	00 00 
 720:	5d                   	pop    %rbp
 721:	c3                   	retq   
 722:	0f 1f 40 00          	nopl   0x0(%rax)
 726:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 72d:	00 00 00 

0000000000000730 <__do_global_dtors_aux>:
 730:	80 3d d9 08 20 00 00 	cmpb   $0x0,0x2008d9(%rip)        # 201010 <__TMC_END__>
 737:	75 2f                	jne    768 <__do_global_dtors_aux+0x38>
 739:	48 83 3d b7 08 20 00 	cmpq   $0x0,0x2008b7(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 740:	00 
 741:	55                   	push   %rbp
 742:	48 89 e5             	mov    %rsp,%rbp
 745:	74 0c                	je     753 <__do_global_dtors_aux+0x23>
 747:	48 8b 3d ba 08 20 00 	mov    0x2008ba(%rip),%rdi        # 201008 <__dso_handle>
 74e:	e8 0d ff ff ff       	callq  660 <__cxa_finalize@plt>
 753:	e8 48 ff ff ff       	callq  6a0 <deregister_tm_clones>
 758:	c6 05 b1 08 20 00 01 	movb   $0x1,0x2008b1(%rip)        # 201010 <__TMC_END__>
 75f:	5d                   	pop    %rbp
 760:	c3                   	retq   
 761:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 768:	f3 c3                	repz retq 
 76a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000770 <frame_dummy>:
 770:	55                   	push   %rbp
 771:	48 89 e5             	mov    %rsp,%rbp
 774:	5d                   	pop    %rbp
 775:	e9 66 ff ff ff       	jmpq   6e0 <register_tm_clones>

000000000000077a <print_global>:
 77a:	55                   	push   %rbp
 77b:	48 89 e5             	mov    %rsp,%rbp
 77e:	8b 05 90 08 20 00    	mov    0x200890(%rip),%eax        # 201014 <global_data>
 784:	89 c6                	mov    %eax,%esi
 786:	48 8d 3d 97 01 00 00 	lea    0x197(%rip),%rdi        # 924 <_IO_stdin_used+0x4>
 78d:	b8 00 00 00 00       	mov    $0x0,%eax
 792:	ff 15 38 08 20 00    	callq  *0x200838(%rip)        # 200fd0 <printf@GLIBC_2.2.5>
 798:	90                   	nop
 799:	5d                   	pop    %rbp
 79a:	c3                   	retq   

000000000000079b <is_prime>:
 79b:	55                   	push   %rbp
 79c:	48 89 e5             	mov    %rsp,%rbp
 79f:	48 83 ec 20          	sub    $0x20,%rsp
 7a3:	89 7d ec             	mov    %edi,-0x14(%rbp)
 7a6:	48 8d 3d 87 01 00 00 	lea    0x187(%rip),%rdi        # 934 <_IO_stdin_used+0x14>
 7ad:	b8 00 00 00 00       	mov    $0x0,%eax
 7b2:	ff 15 18 08 20 00    	callq  *0x200818(%rip)        # 200fd0 <printf@GLIBC_2.2.5>
 7b8:	b8 00 00 00 00       	mov    $0x0,%eax
 7bd:	e8 b8 ff ff ff       	callq  77a <print_global>
 7c2:	8b 05 4c 08 20 00    	mov    0x20084c(%rip),%eax        # 201014 <global_data>
 7c8:	83 c0 01             	add    $0x1,%eax
 7cb:	89 05 43 08 20 00    	mov    %eax,0x200843(%rip)        # 201014 <global_data>
 7d1:	c7 45 fc 02 00 00 00 	movl   $0x2,-0x4(%rbp)
 7d8:	eb 18                	jmp    7f2 <is_prime+0x57>
 7da:	8b 45 ec             	mov    -0x14(%rbp),%eax
 7dd:	99                   	cltd   
 7de:	f7 7d fc             	idivl  -0x4(%rbp)
 7e1:	89 d0                	mov    %edx,%eax
 7e3:	85 c0                	test   %eax,%eax
 7e5:	75 07                	jne    7ee <is_prime+0x53>
 7e7:	b8 00 00 00 00       	mov    $0x0,%eax
 7ec:	eb 11                	jmp    7ff <is_prime+0x64>
 7ee:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
 7f2:	8b 45 fc             	mov    -0x4(%rbp),%eax
 7f5:	3b 45 ec             	cmp    -0x14(%rbp),%eax
 7f8:	7c e0                	jl     7da <is_prime+0x3f>
 7fa:	b8 01 00 00 00       	mov    $0x1,%eax
 7ff:	c9                   	leaveq 
 800:	c3                   	retq   

0000000000000801 <print_prime>:
 801:	55                   	push   %rbp
 802:	48 89 e5             	mov    %rsp,%rbp
 805:	48 83 ec 10          	sub    $0x10,%rsp
 809:	c7 45 fc 02 00 00 00 	movl   $0x2,-0x4(%rbp)
 810:	eb 34                	jmp    846 <print_prime+0x45>
 812:	8b 45 fc             	mov    -0x4(%rbp),%eax
 815:	89 c7                	mov    %eax,%edi
 817:	e8 7f ff ff ff       	callq  79b <is_prime>
 81c:	85 c0                	test   %eax,%eax
 81e:	74 22                	je     842 <print_prime+0x41>
 820:	bf 01 00 00 00       	mov    $0x1,%edi
 825:	ff 15 c5 07 20 00    	callq  *0x2007c5(%rip)        # 200ff0 <sleep@GLIBC_2.2.5>
 82b:	8b 45 fc             	mov    -0x4(%rbp),%eax
 82e:	89 c6                	mov    %eax,%esi
 830:	48 8d 3d 07 01 00 00 	lea    0x107(%rip),%rdi        # 93e <_IO_stdin_used+0x1e>
 837:	b8 00 00 00 00       	mov    $0x0,%eax
 83c:	ff 15 8e 07 20 00    	callq  *0x20078e(%rip)        # 200fd0 <printf@GLIBC_2.2.5>
 842:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
 846:	81 7d fc 7f 96 98 00 	cmpl   $0x98967f,-0x4(%rbp)
 84d:	7e c3                	jle    812 <print_prime+0x11>
 84f:	90                   	nop
 850:	c9                   	leaveq 
 851:	c3                   	retq   

0000000000000852 <dummy>:
 852:	55                   	push   %rbp
 853:	48 89 e5             	mov    %rsp,%rbp
 856:	b8 00 00 00 00       	mov    $0x0,%eax
 85b:	ff 15 5f 07 20 00    	callq  *0x20075f(%rip)        # 200fc0 <do_fix_entry>
 861:	90                   	nop
 862:	5d                   	pop    %rbp
 863:	c3                   	retq   

0000000000000864 <main>:
 864:	55                   	push   %rbp
 865:	48 89 e5             	mov    %rsp,%rbp
 868:	48 8b 05 51 07 20 00 	mov    0x200751(%rip),%rax        # 200fc0 <do_fix_entry>
 86f:	48 89 c6             	mov    %rax,%rsi
 872:	48 8d 3d c9 00 00 00 	lea    0xc9(%rip),%rdi        # 942 <_IO_stdin_used+0x22>
 879:	b8 00 00 00 00       	mov    $0x0,%eax
 87e:	ff 15 4c 07 20 00    	callq  *0x20074c(%rip)        # 200fd0 <printf@GLIBC_2.2.5>
 884:	b8 00 00 00 00       	mov    $0x0,%eax
 889:	e8 73 ff ff ff       	callq  801 <print_prime>
 88e:	b8 00 00 00 00       	mov    $0x0,%eax
 893:	5d                   	pop    %rbp
 894:	c3                   	retq   
 895:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 89c:	00 00 00 
 89f:	90                   	nop

00000000000008a0 <__libc_csu_init>:
 8a0:	41 57                	push   %r15
 8a2:	41 56                	push   %r14
 8a4:	49 89 d7             	mov    %rdx,%r15
 8a7:	41 55                	push   %r13
 8a9:	41 54                	push   %r12
 8ab:	4c 8d 25 16 05 20 00 	lea    0x200516(%rip),%r12        # 200dc8 <__frame_dummy_init_array_entry>
 8b2:	55                   	push   %rbp
 8b3:	48 8d 2d 16 05 20 00 	lea    0x200516(%rip),%rbp        # 200dd0 <__init_array_end>
 8ba:	53                   	push   %rbx
 8bb:	41 89 fd             	mov    %edi,%r13d
 8be:	49 89 f6             	mov    %rsi,%r14
 8c1:	4c 29 e5             	sub    %r12,%rbp
 8c4:	48 83 ec 08          	sub    $0x8,%rsp
 8c8:	48 c1 fd 03          	sar    $0x3,%rbp
 8cc:	e8 5f fd ff ff       	callq  630 <_init>
 8d1:	48 85 ed             	test   %rbp,%rbp
 8d4:	74 20                	je     8f6 <__libc_csu_init+0x56>
 8d6:	31 db                	xor    %ebx,%ebx
 8d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 8df:	00 
 8e0:	4c 89 fa             	mov    %r15,%rdx
 8e3:	4c 89 f6             	mov    %r14,%rsi
 8e6:	44 89 ef             	mov    %r13d,%edi
 8e9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 8ed:	48 83 c3 01          	add    $0x1,%rbx
 8f1:	48 39 dd             	cmp    %rbx,%rbp
 8f4:	75 ea                	jne    8e0 <__libc_csu_init+0x40>
 8f6:	48 83 c4 08          	add    $0x8,%rsp
 8fa:	5b                   	pop    %rbx
 8fb:	5d                   	pop    %rbp
 8fc:	41 5c                	pop    %r12
 8fe:	41 5d                	pop    %r13
 900:	41 5e                	pop    %r14
 902:	41 5f                	pop    %r15
 904:	c3                   	retq   
 905:	90                   	nop
 906:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 90d:	00 00 00 

0000000000000910 <__libc_csu_fini>:
 910:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000914 <_fini>:
 914:	48 83 ec 08          	sub    $0x8,%rsp
 918:	48 83 c4 08          	add    $0x8,%rsp
 91c:	c3                   	retq   
