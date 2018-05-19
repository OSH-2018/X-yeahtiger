
fix.so：     文件格式 elf64-x86-64


Disassembly of section .init:

00000000000005e8 <_init>:
 5e8:	48 83 ec 08          	sub    $0x8,%rsp
 5ec:	48 8b 05 ed 09 20 00 	mov    0x2009ed(%rip),%rax        # 200fe0 <__gmon_start__>
 5f3:	48 85 c0             	test   %rax,%rax
 5f6:	74 02                	je     5fa <_init+0x12>
 5f8:	ff d0                	callq  *%rax
 5fa:	48 83 c4 08          	add    $0x8,%rsp
 5fe:	c3                   	retq   

Disassembly of section .plt:

0000000000000600 <.plt>:
 600:	ff 35 02 0a 20 00    	pushq  0x200a02(%rip)        # 201008 <_GLOBAL_OFFSET_TABLE_+0x8>
 606:	ff 25 04 0a 20 00    	jmpq   *0x200a04(%rip)        # 201010 <_GLOBAL_OFFSET_TABLE_+0x10>
 60c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000610 <puts@plt>:
 610:	ff 25 02 0a 20 00    	jmpq   *0x200a02(%rip)        # 201018 <puts@GLIBC_2.2.5>
 616:	68 00 00 00 00       	pushq  $0x0
 61b:	e9 e0 ff ff ff       	jmpq   600 <.plt>

0000000000000620 <__printf_chk@plt>:
 620:	ff 25 fa 09 20 00    	jmpq   *0x2009fa(%rip)        # 201020 <__printf_chk@GLIBC_2.3.4>
 626:	68 01 00 00 00       	pushq  $0x1
 62b:	e9 d0 ff ff ff       	jmpq   600 <.plt>

Disassembly of section .plt.got:

0000000000000630 <__cxa_finalize@plt>:
 630:	ff 25 c2 09 20 00    	jmpq   *0x2009c2(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 636:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000640 <deregister_tm_clones>:
 640:	48 8d 3d e9 09 20 00 	lea    0x2009e9(%rip),%rdi        # 201030 <_edata>
 647:	55                   	push   %rbp
 648:	48 8d 05 e1 09 20 00 	lea    0x2009e1(%rip),%rax        # 201030 <_edata>
 64f:	48 39 f8             	cmp    %rdi,%rax
 652:	48 89 e5             	mov    %rsp,%rbp
 655:	74 19                	je     670 <deregister_tm_clones+0x30>
 657:	48 8b 05 72 09 20 00 	mov    0x200972(%rip),%rax        # 200fd0 <_ITM_deregisterTMCloneTable>
 65e:	48 85 c0             	test   %rax,%rax
 661:	74 0d                	je     670 <deregister_tm_clones+0x30>
 663:	5d                   	pop    %rbp
 664:	ff e0                	jmpq   *%rax
 666:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 66d:	00 00 00 
 670:	5d                   	pop    %rbp
 671:	c3                   	retq   
 672:	0f 1f 40 00          	nopl   0x0(%rax)
 676:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 67d:	00 00 00 

0000000000000680 <register_tm_clones>:
 680:	48 8d 3d a9 09 20 00 	lea    0x2009a9(%rip),%rdi        # 201030 <_edata>
 687:	48 8d 35 a2 09 20 00 	lea    0x2009a2(%rip),%rsi        # 201030 <_edata>
 68e:	55                   	push   %rbp
 68f:	48 29 fe             	sub    %rdi,%rsi
 692:	48 89 e5             	mov    %rsp,%rbp
 695:	48 c1 fe 03          	sar    $0x3,%rsi
 699:	48 89 f0             	mov    %rsi,%rax
 69c:	48 c1 e8 3f          	shr    $0x3f,%rax
 6a0:	48 01 c6             	add    %rax,%rsi
 6a3:	48 d1 fe             	sar    %rsi
 6a6:	74 18                	je     6c0 <register_tm_clones+0x40>
 6a8:	48 8b 05 41 09 20 00 	mov    0x200941(%rip),%rax        # 200ff0 <_ITM_registerTMCloneTable>
 6af:	48 85 c0             	test   %rax,%rax
 6b2:	74 0c                	je     6c0 <register_tm_clones+0x40>
 6b4:	5d                   	pop    %rbp
 6b5:	ff e0                	jmpq   *%rax
 6b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 6be:	00 00 
 6c0:	5d                   	pop    %rbp
 6c1:	c3                   	retq   
 6c2:	0f 1f 40 00          	nopl   0x0(%rax)
 6c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 6cd:	00 00 00 

00000000000006d0 <__do_global_dtors_aux>:
 6d0:	80 3d 59 09 20 00 00 	cmpb   $0x0,0x200959(%rip)        # 201030 <_edata>
 6d7:	75 2f                	jne    708 <__do_global_dtors_aux+0x38>
 6d9:	48 83 3d 17 09 20 00 	cmpq   $0x0,0x200917(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 6e0:	00 
 6e1:	55                   	push   %rbp
 6e2:	48 89 e5             	mov    %rsp,%rbp
 6e5:	74 0c                	je     6f3 <__do_global_dtors_aux+0x23>
 6e7:	48 8b 3d 3a 09 20 00 	mov    0x20093a(%rip),%rdi        # 201028 <__dso_handle>
 6ee:	e8 3d ff ff ff       	callq  630 <__cxa_finalize@plt>
 6f3:	e8 48 ff ff ff       	callq  640 <deregister_tm_clones>
 6f8:	c6 05 31 09 20 00 01 	movb   $0x1,0x200931(%rip)        # 201030 <_edata>
 6ff:	5d                   	pop    %rbp
 700:	c3                   	retq   
 701:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 708:	f3 c3                	repz retq 
 70a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000710 <frame_dummy>:
 710:	55                   	push   %rbp
 711:	48 89 e5             	mov    %rsp,%rbp
 714:	5d                   	pop    %rbp
 715:	e9 66 ff ff ff       	jmpq   680 <register_tm_clones>
 71a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000720 <fix_is_prime>:
 720:	58                   	pop    %rax
 721:	eb 2d                	jmp    750 <is_prime>
 723:	0f 1f 00             	nopl   (%rax)
 726:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 72d:	00 00 00 

0000000000000730 <fix_init>:
 730:	48 8d 35 8e 00 00 00 	lea    0x8e(%rip),%rsi        # 7c5 <_fini+0x9>
 737:	bf 01 00 00 00       	mov    $0x1,%edi
 73c:	31 c0                	xor    %eax,%eax
 73e:	e9 dd fe ff ff       	jmpq   620 <__printf_chk@plt>
 743:	0f 1f 00             	nopl   (%rax)
 746:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 74d:	00 00 00 

0000000000000750 <is_prime>:
 750:	48 8b 05 81 08 20 00 	mov    0x200881(%rip),%rax        # 200fd8 <global_data>
 757:	83 00 02             	addl   $0x2,(%rax)
 75a:	48 8b 05 87 08 20 00 	mov    0x200887(%rip),%rax        # 200fe8 <global_y@@Base-0x4c>
 761:	83 00 01             	addl   $0x1,(%rax)
 764:	83 ff 04             	cmp    $0x4,%edi
 767:	7e 2c                	jle    795 <is_prime+0x45>
 769:	89 fa                	mov    %edi,%edx
 76b:	83 e2 01             	and    $0x1,%edx
 76e:	74 48                	je     7b8 <is_prime+0x68>
 770:	b9 02 00 00 00       	mov    $0x2,%ecx
 775:	eb 12                	jmp    789 <is_prime+0x39>
 777:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 77e:	00 00 
 780:	89 f8                	mov    %edi,%eax
 782:	99                   	cltd   
 783:	f7 f9                	idiv   %ecx
 785:	85 d2                	test   %edx,%edx
 787:	74 2f                	je     7b8 <is_prime+0x68>
 789:	83 c1 01             	add    $0x1,%ecx
 78c:	89 c8                	mov    %ecx,%eax
 78e:	0f af c1             	imul   %ecx,%eax
 791:	39 f8                	cmp    %edi,%eax
 793:	7c eb                	jl     780 <is_prime+0x30>
 795:	48 8d 3d 32 00 00 00 	lea    0x32(%rip),%rdi        # 7ce <_fini+0x12>
 79c:	48 83 ec 08          	sub    $0x8,%rsp
 7a0:	e8 6b fe ff ff       	callq  610 <puts@plt>
 7a5:	ba 01 00 00 00       	mov    $0x1,%edx
 7aa:	48 83 c4 08          	add    $0x8,%rsp
 7ae:	89 d0                	mov    %edx,%eax
 7b0:	c3                   	retq   
 7b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 7b8:	89 d0                	mov    %edx,%eax
 7ba:	c3                   	retq   

Disassembly of section .fini:

00000000000007bc <_fini>:
 7bc:	48 83 ec 08          	sub    $0x8,%rsp
 7c0:	48 83 c4 08          	add    $0x8,%rsp
 7c4:	c3                   	retq   
