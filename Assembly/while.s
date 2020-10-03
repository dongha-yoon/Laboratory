	.file	"while.c"
	.text
	.globl	while_loop
	.type	while_loop, @function
while_loop:
.LFB0:
	.cfi_startproc
	endbr64
	movl	$0, %eax
.L2:
	cmpw	%si, %di
	jle	.L4
	movl	%esi, %edx
	imull	%edi, %edx
	addl	%edx, %eax
	subl	$1, %edi
	jmp	.L2
.L4:
	ret
	.cfi_endproc
.LFE0:
	.size	while_loop, .-while_loop
	.ident	"GCC: (Ubuntu 9.3.0-10ubuntu2) 9.3.0"
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
