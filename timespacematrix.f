(base) ian@ian-Latitude-E7440:~$ gfortran timespacematrix.f -S
(base) ian@ian-Latitude-E7440:~$ gfortran timespacematrix.s -o timespacematrixf
(base) ian@ian-Latitude-E7440:~$ ./timespacematrixf
   1.0000000000000000        2.0000000000000000        3.0000000000000000        4.0000000000000000        5.0000000000000000        6.0000000000000000        7.0000000000000000        8.0000000000000000        9.0000000000000000        10.000000000000000     
   2.0000000000000000        4.0000000000000000        6.0000000000000000        8.0000000000000000        10.000000000000000        12.000000000000000        14.000000000000000        16.000000000000000        18.000000000000000        20.000000000000000     
   3.0000000000000000        6.0000000000000000        9.0000000000000000        12.000000000000000        15.000000000000000        18.000000000000000        21.000000000000000        24.000000000000000        27.000000000000000        30.000000000000000     
   4.0000000000000000        8.0000000000000000        12.000000000000000        16.000000000000000        20.000000000000000        24.000000000000000        28.000000000000000        32.000000000000000        36.000000000000000        40.000000000000000     
   5.0000000000000000        10.000000000000000        15.000000000000000        20.000000000000000        25.000000000000000        30.000000000000000        35.000000000000000        40.000000000000000        45.000000000000000        50.000000000000000     
   6.0000000000000000        12.000000000000000        18.000000000000000        24.000000000000000        30.000000000000000        36.000000000000000        42.000000000000000        48.000000000000000        54.000000000000000        60.000000000000000     
   7.0000000000000000        14.000000000000000        21.000000000000000        28.000000000000000        35.000000000000000        42.000000000000000        49.000000000000000        56.000000000000000        63.000000000000000        70.000000000000000     
   8.0000000000000000        16.000000000000000        24.000000000000000        32.000000000000000        40.000000000000000        48.000000000000000        56.000000000000000        64.000000000000000        72.000000000000000        80.000000000000000     
   9.0000000000000000        18.000000000000000        27.000000000000000        36.000000000000000        45.000000000000000        54.000000000000000        63.000000000000000        72.000000000000000        81.000000000000000        90.000000000000000     
   10.000000000000000        20.000000000000000        30.000000000000000        40.000000000000000        50.000000000000000        60.000000000000000        70.000000000000000        80.000000000000000        90.000000000000000        100.00000000000000     
(base) ian@ian-Latitude-E7440:~$ cat timespacematrixf.s
cat: timespacematrixf.s: No such file or directory
(base) ian@ian-Latitude-E7440:~$ 
(base) ian@ian-Latitude-E7440:~$ cat timespacematrix.s
	.file	"timespacematrix.f"
	.text
	.section	.rodata
.LC1:
	.string	"timespacematrix.f"
	.text
	.type	MAIN__, @function
MAIN__:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1344, %rsp
	movl	$1, -4(%rbp)
.L5:
	cmpl	$10, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L15
	movl	$1, -8(%rbp)
.L4:
	cmpl	$10, -8(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L16
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$11, %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -816(%rbp,%rax,8)
	addl	$1, -8(%rbp)
	jmp	.L4
.L16:
	nop
	addl	$1, -4(%rbp)
	jmp	.L5
.L15:
	nop
	movl	$1, -4(%rbp)
.L9:
	cmpl	$10, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L17
	movl	$1, -8(%rbp)
.L8:
	cmpl	$10, -8(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L18
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$11, %rax
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -816(%rbp,%rax,8)
	addl	$1, -8(%rbp)
	jmp	.L8
.L18:
	nop
	addl	$1, -4(%rbp)
	jmp	.L9
.L17:
	nop
	movl	$1, -4(%rbp)
.L14:
	cmpl	$10, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L19
	leaq	.LC1(%rip), %rax
	movq	%rax, -1336(%rbp)
	movl	$24, -1328(%rbp)
	movl	$128, -1344(%rbp)
	movl	$6, -1340(%rbp)
	leaq	-1344(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	$1, -8(%rbp)
.L13:
	movl	-1344(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L20
	cmpl	$10, -8(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L21
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$11, %rax
	leaq	-816(%rbp), %rdx
	salq	$3, %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-1344(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -8(%rbp)
	jmp	.L13
.L20:
	nop
	jmp	.L12
.L21:
	nop
.L12:
	leaq	-1344(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	addl	$1, -4(%rbp)
	jmp	.L14
.L19:
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	MAIN__, .-MAIN__
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_gfortran_set_args@PLT
	leaq	options.1.0(%rip), %rax
	movq	%rax, %rsi
	movl	$7, %edi
	call	_gfortran_set_options@PLT
	call	MAIN__
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align 16
	.type	options.1.0, @object
	.size	options.1.0, 28
options.1.0:
	.long	2116
	.long	4095
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
(base) ian@ian-Latitude-E7440:~$ 
