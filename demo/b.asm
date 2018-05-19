
fix.so：     文件格式 elf64-x86-64


Disassembly of section .init:

0000000000000600 <_init>:
 600:	48 83 ec 08          	sub    $0x8,%rsp
 604:	48 8b 05 d5 09 20 00 	mov    0x2009d5(%rip),%rax        # 200fe0 <__gmon_start__>
 60b:	48 85 c0             	test   %rax,%rax
 60e:	74 02                	je     612 <_init+0x12>
 610:	ff d0                	callq  *%rax
 612:	48 83 c4 08          	add    $0x8,%rsp
 616:	c3                   	retq   

Disassembly of section .plt:

0000000000000620 <.plt>:
 620:	ff 35 e2 09 20 00    	pushq  0x2009e2(%rip)        # 201008 <_GLOBAL_OFFSET_TABLE_+0x8>
 626:	ff 25 e4 09 20 00    	jmpq   *0x2009e4(%rip)        # 201010 <_GLOBAL_OFFSET_TABLE_+0x10>
 62c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000630 <puts@plt>:
 630:	ff 25 e2 09 20 00    	jmpq   *0x2009e2(%rip)        # 201018 <puts@GLIBC_2.2.5>
 636:	68 00 00 00 00       	pushq  $0x0
 63b:	e9 e0 ff ff ff       	jmpq   620 <.plt>

0000000000000640 <__printf_chk@plt>:
 640:	ff 25 da 09 20 00    	jmpq   *0x2009da(%rip)        # 201020 <__printf_chk@GLIBC_2.3.4>
 646:	68 01 00 00 00       	pushq  $0x1
 64b:	e9 d0 ff ff ff       	jmpq   620 <.plt>

Disassembly of section .plt.got:

0000000000000650 <__cxa_finalize@plt>:
 650:	ff 25 a2 09 20 00    	jmpq   *0x2009a2(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 656:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000660 <deregister_tm_clones>:
 660:	48 8d 3d c9 09 20 00 	lea    0x2009c9(%rip),%rdi        # 201030 <_edata>
 667:	55                   	push   %rbp
 668:	48 8d 05 c1 09 20 00 	lea    0x2009c1(%rip),%rax        # 201030 <_edata>
 66f:	48 39 f8             	cmp    %rdi,%rax
 672:	48 89 e5             	mov    %rsp,%rbp
 675:	74 19                	je     690 <deregister_tm_clones+0x30>
 677:	48 8b 05 52 09 20 00 	mov    0x200952(%rip),%rax        # 200fd0 <_ITM_deregisterTMCloneTable>
 67e:	48 85 c0             	test   %rax,%rax
 681:	74 0d                	je     690 <deregister_tm_clones+0x30>
 683:	5d                   	pop    %rbp
 684:	ff e0                	jmpq   *%rax
 686:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 68d:	00 00 00 
 690:	5d                   	pop    %rbp
 691:	c3                   	retq   
 692:	0f 1f 40 00          	nopl   0x0(%rax)
 696:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 69d:	00 00 00 

00000000000006a0 <register_tm_clones>:
 6a0:	48 8d 3d 89 09 20 00 	lea    0x200989(%rip),%rdi        # 201030 <_edata>
 6a7:	48 8d 35 82 09 20 00 	lea    0x200982(%rip),%rsi        # 201030 <_edata>
 6ae:	55                   	push   %rbp
 6af:	48 29 fe             	sub    %rdi,%rsi
 6b2:	48 89 e5             	mov    %rsp,%rbp
 6b5:	48 c1 fe 03          	sar    $0x3,%rsi
 6b9:	48 89 f0             	mov    %rsi,%rax
 6bc:	48 c1 e8 3f          	shr    $0x3f,%rax
 6c0:	48 01 c6             	add    %rax,%rsi
 6c3:	48 d1 fe             	sar    %rsi
 6c6:	74 18                	je     6e0 <register_tm_clones+0x40>
 6c8:	48 8b 05 21 09 20 00 	mov    0x200921(%rip),%rax        # 200ff0 <_ITM_registerTMCloneTable>
 6cf:	48 85 c0             	test   %rax,%rax
 6d2:	74 0c                	je     6e0 <register_tm_clones+0x40>
 6d4:	5d                   	pop    %rbp
 6d5:	ff e0                	jmpq   *%rax
 6d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 6de:	00 00 
 6e0:	5d                   	pop    %rbp
 6e1:	c3                   	retq   
 6e2:	0f 1f 40 00          	nopl   0x0(%rax)
 6e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 6ed:	00 00 00 

00000000000006f0 <__do_global_dtors_aux>:
 6f0:	80 3d 39 09 20 00 00 	cmpb   $0x0,0x200939(%rip)        # 201030 <_edata>
 6f7:	75 2f                	jne    728 <__do_global_dtors_aux+0x38>
 6f9:	48 83 3d f7 08 20 00 	cmpq   $0x0,0x2008f7(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 700:	00 
 701:	55                   	push   %rbp
 702:	48 89 e5             	mov    %rsp,%rbp
 705:	74 0c                	je     713 <__do_global_dtors_aux+0x23>
 707:	48 8b 3d 1a 09 20 00 	mov    0x20091a(%rip),%rdi        # 201028 <__dso_handle>
 70e:	e8 3d ff ff ff       	callq  650 <__cxa_finalize@plt>
 713:	e8 48 ff ff ff       	callq  660 <deregister_tm_clones>
 718:	c6 05 11 09 20 00 01 	movb   $0x1,0x200911(%rip)        # 201030 <_edata>
 71f:	5d                   	pop    %rbp
 720:	c3                   	retq   
 721:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 728:	f3 c3                	repz retq 
 72a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000730 <frame_dummy>:
 730:	55                   	push   %rbp
 731:	48 89 e5             	mov    %rsp,%rbp
 734:	5d                   	pop    %rbp
 735:	e9 66 ff ff ff       	jmpq   6a0 <register_tm_clones>
 73a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000740 <fix_is_prime>:
 740:	58                   	pop    %rax
 741:	eb 3d                	jmp    780 <is_prime>
 743:	0f 1f 00             	nopl   (%rax)
 746:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 74d:	00 00 00 

0000000000000750 <init>:
 750:	48 8d 3d 9e 00 00 00 	lea    0x9e(%rip),%rdi        # 7f5 <_fini+0x9>
 757:	e9 d4 fe ff ff       	jmpq   630 <puts@plt>
 75c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000760 <fix_init>:
 760:	48 8d 35 99 00 00 00 	lea    0x99(%rip),%rsi        # 800 <_fini+0x14>
 767:	bf 01 00 00 00       	mov    $0x1,%edi
 76c:	31 c0                	xor    %eax,%eax
 76e:	e9 cd fe ff ff       	jmpq   640 <__printf_chk@plt>
 773:	0f 1f 00             	nopl   (%rax)
 776:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 77d:	00 00 00 

0000000000000780 <is_prime>:
 780:	48 8b 05 51 08 20 00 	mov    0x200851(%rip),%rax        # 200fd8 <global_data>
 787:	83 00 02             	addl   $0x2,(%rax)
 78a:	48 8b 05 57 08 20 00 	mov    0x200857(%rip),%rax        # 200fe8 <global_y@@Base-0x4c>
 791:	83 00 01             	addl   $0x1,(%rax)
 794:	83 ff 04             	cmp    $0x4,%edi
 797:	7e 2c                	jle    7c5 <is_prime+0x45>
 799:	89 fa                	mov    %edi,%edx
 79b:	83 e2 01             	and    $0x1,%edx
 79e:	74 48                	je     7e8 <is_prime+0x68>
 7a0:	b9 02 00 00 00       	mov    $0x2,%ecx
 7a5:	eb 12                	jmp    7b9 <is_prime+0x39>
 7a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 7ae:	00 00 
 7b0:	89 f8                	mov    %edi,%eax
 7b2:	99                   	cltd   
 7b3:	f7 f9                	idiv   %ecx
 7b5:	85 d2                	test   %edx,%edx
 7b7:	74 2f                	je     7e8 <is_prime+0x68>
 7b9:	83 c1 01             	add    $0x1,%ecx
 7bc:	89 c8                	mov    %ecx,%eax
 7be:	0f af c1             	imul   %ecx,%eax
 7c1:	39 f8                	cmp    %edi,%eax
 7c3:	7c eb                	jl     7b0 <is_prime+0x30>
 7c5:	48 8d 3d 3d 00 00 00 	lea    0x3d(%rip),%rdi        # 809 <_fini+0x1d>
 7cc:	48 83 ec 08          	sub    $0x8,%rsp
 7d0:	e8 5b fe ff ff       	callq  630 <puts@plt>
 7d5:	ba 01 00 00 00       	mov    $0x1,%edx
 7da:	48 83 c4 08          	add    $0x8,%rsp
 7de:	89 d0                	mov    %edx,%eax
 7e0:	c3                   	retq   
 7e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 7e8:	89 d0                	mov    %edx,%eax
 7ea:	c3                   	retq   

Disassembly of section .fini:

00000000000007ec <_fini>:
 7ec:	48 83 ec 08          	sub    $0x8,%rsp
 7f0:	48 83 c4 08          	add    $0x8,%rsp
 7f4:	c3                   	retq   
