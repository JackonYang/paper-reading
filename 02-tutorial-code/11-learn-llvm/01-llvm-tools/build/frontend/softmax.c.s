	.file	"softmax.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function softmax
.LCPI0_0:
	.quad	0xffefffffffffffff              # double -1.7976931348623157E+308
	.text
	.globl	softmax
	.p2align	4
	.type	softmax,@function
softmax:                                # @softmax
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -32(%rbp)
	movl	%esi, -16(%rbp)
	movq	%rdx, -48(%rbp)
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = [-1.7976931348623157E+308,0.0E+0]
	movsd	%xmm0, -24(%rbp)
	movl	$0, -8(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-8(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB0_6
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-8(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm0            # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB0_4
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-8(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm0            # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
.LBB0_4:                                # %if.end
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_5
.LBB0_5:                                # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_1
.LBB0_6:                                # %for.end
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)
	movl	$0, -12(%rbp)
.LBB0_7:                                # %for.cond5
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB0_10
# %bb.8:                                # %for.body7
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	-32(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm0            # xmm0 = mem[0],zero
	subsd	-24(%rbp), %xmm0
	callq	exp@PLT
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
# %bb.9:                                # %for.inc10
                                        #   in Loop: Header=BB0_7 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_7
.LBB0_10:                               # %for.end12
	movl	$0, -4(%rbp)
.LBB0_11:                               # %for.cond14
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB0_14
# %bb.12:                               # %for.body16
                                        #   in Loop: Header=BB0_11 Depth=1
	movq	-32(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm0            # xmm0 = mem[0],zero
	subsd	-24(%rbp), %xmm0
	callq	exp@PLT
	divsd	-40(%rbp), %xmm0
	movq	-48(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movsd	%xmm0, (%rax,%rcx,8)
# %bb.13:                               # %for.inc23
                                        #   in Loop: Header=BB0_11 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_11
.LBB0_14:                               # %for.end25
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	softmax, .Lfunc_end0-softmax
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 20.0.0git (git@gitlab-arch.yizhu.local:awesome-arch/llvm-project.git f590963db836ccbf7c547a3dea9dc719f24444d1)"
	.section	".note.GNU-stack","",@progbits
