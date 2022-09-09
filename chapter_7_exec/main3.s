	.file	"main3.c"
	.text
	.section	.rodata
.LC0:
	.string	"%c%c%c%c"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, %eax
	call	h@PLT
	movl	%eax, -12(%rbp)
	movl	$0, %eax
	call	x@PLT
	movl	%eax, -8(%rbp)
	movl	$0, %eax
	call	y@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	cltd
	shrl	$24, %edx
	addl	%edx, %eax
	movzbl	%al, %eax
	subl	%edx, %eax
	movb	%al, -16(%rbp)
	sarl	$8, -4(%rbp)
	movl	-4(%rbp), %eax
	cltd
	shrl	$24, %edx
	addl	%edx, %eax
	movzbl	%al, %eax
	subl	%edx, %eax
	movb	%al, -15(%rbp)
	sarl	$8, -4(%rbp)
	movl	-4(%rbp), %eax
	cltd
	shrl	$24, %edx
	addl	%edx, %eax
	movzbl	%al, %eax
	subl	%edx, %eax
	movb	%al, -14(%rbp)
	sarl	$8, -4(%rbp)
	movl	-4(%rbp), %eax
	cltd
	shrl	$24, %edx
	addl	%edx, %eax
	movzbl	%al, %eax
	subl	%edx, %eax
	movb	%al, -13(%rbp)
	movsbl	-16(%rbp), %esi
	movsbl	-15(%rbp), %ecx
	movsbl	-14(%rbp), %edx
	movsbl	-13(%rbp), %eax
	movl	%esi, %r8d
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
