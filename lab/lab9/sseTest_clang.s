	.text
	.file	"sseTest.c"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$512, %rsp              # imm = 0x200
	leaq	-400(%rbp), %rax
	xorl	%ecx, %ecx
	movl	$0, -284(%rbp)
	movl	%edi, -288(%rbp)
	movq	%rsi, -296(%rbp)
	movq	.L__const.main.A, %rdx
	movq	%rdx, -336(%rbp)
	movq	.L__const.main.A+8, %rdx
	movq	%rdx, -328(%rbp)
	movq	.L__const.main.A+16, %rdx
	movq	%rdx, -320(%rbp)
	movq	.L__const.main.A+24, %rdx
	movq	%rdx, -312(%rbp)
	movq	.L__const.main.B, %rdx
	movq	%rdx, -368(%rbp)
	movq	.L__const.main.B+8, %rdx
	movq	%rdx, -360(%rbp)
	movq	.L__const.main.B+16, %rdx
	movq	%rdx, -352(%rbp)
	movq	.L__const.main.B+24, %rdx
	movq	%rdx, -344(%rbp)
	movq	%rax, %rdx
	movq	%rdx, %rdi
	movl	%ecx, %esi
	movl	$32, %edx
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	memset
	movq	-504(%rbp), %rax        # 8-byte Reload
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rdx
	movupd	(%rdx), %xmm0
	movapd	%xmm0, -416(%rbp)
	addq	$16, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movupd	(%rax), %xmm0
	movapd	%xmm0, -432(%rbp)
	movl	$0, -436(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$2, -436(%rbp)
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-436(%rbp), %eax
	addl	%eax, %eax
	movslq	%eax, %rcx
	leaq	-336(%rbp,%rcx,8), %rcx
	movq	%rcx, -16(%rbp)
	movq	-16(%rbp), %rcx
	movupd	(%rcx), %xmm0
	movapd	%xmm0, -464(%rbp)
	movslq	-436(%rbp), %rcx
	leaq	-368(%rbp,%rcx,8), %rcx
	movq	%rcx, -24(%rbp)
	movq	-24(%rbp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	unpcklpd	%xmm0, %xmm0    # xmm0 = xmm0[0,0]
	movapd	%xmm0, -48(%rbp)
	movapd	-48(%rbp), %xmm0
	movapd	%xmm0, -480(%rbp)
	movslq	-436(%rbp), %rcx
	leaq	-352(%rbp,%rcx,8), %rcx
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	unpcklpd	%xmm0, %xmm0    # xmm0 = xmm0[0,0]
	movapd	%xmm0, -80(%rbp)
	movapd	-80(%rbp), %xmm0
	movapd	%xmm0, -496(%rbp)
	movapd	-416(%rbp), %xmm0
	movapd	-464(%rbp), %xmm1
	movapd	-480(%rbp), %xmm2
	movapd	%xmm1, -96(%rbp)
	movapd	%xmm2, -112(%rbp)
	movapd	-96(%rbp), %xmm1
	mulpd	-112(%rbp), %xmm1
	movapd	%xmm0, -128(%rbp)
	movapd	%xmm1, -144(%rbp)
	movapd	-128(%rbp), %xmm0
	addpd	-144(%rbp), %xmm0
	movapd	%xmm0, -416(%rbp)
	movapd	-432(%rbp), %xmm0
	movapd	-464(%rbp), %xmm1
	movapd	-496(%rbp), %xmm2
	movapd	%xmm1, -160(%rbp)
	movapd	%xmm2, -176(%rbp)
	movapd	-160(%rbp), %xmm1
	mulpd	-176(%rbp), %xmm1
	movapd	%xmm0, -192(%rbp)
	movapd	%xmm1, -208(%rbp)
	movapd	-192(%rbp), %xmm0
	addpd	-208(%rbp), %xmm0
	movapd	%xmm0, -432(%rbp)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-436(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -436(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	leaq	-400(%rbp), %rax
	movapd	-416(%rbp), %xmm0
	movq	%rax, -216(%rbp)
	movapd	%xmm0, -240(%rbp)
	movapd	-240(%rbp), %xmm0
	movq	-216(%rbp), %rcx
	movupd	%xmm0, (%rcx)
	addq	$16, %rax
	movapd	-432(%rbp), %xmm0
	movq	%rax, -248(%rbp)
	movapd	%xmm0, -272(%rbp)
	movapd	-272(%rbp), %xmm0
	movq	-248(%rbp), %rax
	movupd	%xmm0, (%rax)
	movsd	-336(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-320(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-368(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-352(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-400(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-384(%rbp), %xmm5       # xmm5 = mem[0],zero
	movabsq	$.L.str, %rdi
	movb	$6, %al
	callq	printf
	movsd	-328(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-312(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-360(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-344(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-392(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-376(%rbp), %xmm5       # xmm5 = mem[0],zero
	movabsq	$.L.str.1, %rdi
	movl	%eax, -508(%rbp)        # 4-byte Spill
	movb	$6, %al
	callq	printf
	xorl	%edx, %edx
	movl	%eax, -512(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	addq	$512, %rsp              # imm = 0x200
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	.L__const.main.A,@object # @__const.main.A
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	4
.L__const.main.A:
	.quad	4607182418800017408     # double 1
	.quad	4611686018427387904     # double 2
	.quad	4613937818241073152     # double 3
	.quad	4616189618054758400     # double 4
	.size	.L__const.main.A, 32

	.type	.L__const.main.B,@object # @__const.main.B
	.p2align	4
.L__const.main.B:
	.quad	4613937818241073152     # double 3
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4611686018427387904     # double 2
	.size	.L__const.main.B, 32

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"|%g %g| * |%g %g| = |%g %g|\n"
	.size	.L.str, 29

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"|%g %g|   |%g %g|   |%g %g|\n"
	.size	.L.str.1, 29

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
