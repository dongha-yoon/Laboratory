	.file	"vector_constructor_test.cpp"
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2508:
	.cfi_startproc
	cmpl	$1, %edi
	je	.L7
.L4:
	ret
.L7:
	cmpl	$65535, %esi
	jne	.L4
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	call	__cxa_atexit@PLT
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2508:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"Arr : "
.LC5:
	.string	" | "
.LC6:
	.string	"Vec : "
.LC7:
	.string	"======================="
	.text
	.globl	main
	.type	main, @function
main:
.LFB1948:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1948
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$80, %rsp
	.cfi_def_cfa_offset 112
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	movq	.LC0(%rip), %rax
	movq	%rax, 32(%rsp)
	movq	.LC1(%rip), %rax
	movq	%rax, 40(%rsp)
	movq	.LC2(%rip), %rax
	movq	%rax, 48(%rsp)
	movq	.LC3(%rip), %rax
	movq	%rax, 56(%rsp)
	movq	$0, (%rsp)
	movl	$32, %edi
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	movq	%rax, %rdi
	movq	%rax, (%rsp)
	leaq	32(%rsp), %rsi
	movl	$32, %edx
	call	memmove@PLT
	movl	$0, %ebp
	jmp	.L9
.L26:
	endbr64
	movq	%rax, %rbx
	movq	(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L11
	call	_ZdlPv@PLT
.L11:
	movq	%rbx, %rdi
.LEHB1:
	call	_Unwind_Resume@PLT
.LEHE1:
.L31:
	movslq	%ebp, %rax
	movsd	32(%rsp,%rax,8), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
.LEHB2:
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rbx
	movl	$3, %edx
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$6, %edx
	leaq	.LC6(%rip), %rsi
	movq	%rbx, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movslq	%ebp, %rax
	salq	$3, %rax
	addq	(%rsp), %rax
	movsd	(%rax), %xmm0
	movq	%rbx, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rbx
	movq	(%rax), %rax
	movq	%rbx, %rcx
	addq	-24(%rax), %rcx
	movq	240(%rcx), %r12
	testq	%r12, %r12
	je	.L29
	cmpb	$0, 56(%r12)
	je	.L14
	movzbl	67(%r12), %esi
.L15:
	movsbl	%sil, %esi
	movq	%rbx, %rdi
	call	_ZNSo3putEc@PLT
	jmp	.L30
.L29:
	call	_ZSt16__throw_bad_castv@PLT
.LEHE2:
.L25:
	endbr64
	movq	%rax, %rbx
	movq	(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L23
	call	_ZdlPv@PLT
.L23:
	movq	%rbx, %rdi
.LEHB3:
	call	_Unwind_Resume@PLT
.LEHE3:
.L14:
	movq	%r12, %rdi
.LEHB4:
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r12), %rax
	movl	$10, %esi
	movq	%r12, %rdi
	call	*48(%rax)
	movl	%eax, %esi
	jmp	.L15
.L30:
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
	addl	$1, %ebp
.L9:
	cmpl	$3, %ebp
	jg	.L12
	movl	$6, %edx
	leaq	.LC4(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	jmp	.L31
.L12:
	movl	$23, %edx
	leaq	.LC7(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	movq	(%rsp), %rax
	movq	.LC8(%rip), %rcx
	movq	%rcx, (%rax)
	movl	$0, %ebp
	jmp	.L20
.L34:
	movslq	%ebp, %rax
	movsd	32(%rsp,%rax,8), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rbx
	movl	$3, %edx
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$6, %edx
	leaq	.LC6(%rip), %rsi
	movq	%rbx, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movslq	%ebp, %rax
	salq	$3, %rax
	addq	(%rsp), %rax
	movsd	(%rax), %xmm0
	movq	%rbx, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rbx
	movq	(%rax), %rax
	movq	%rbx, %rcx
	addq	-24(%rax), %rcx
	movq	240(%rcx), %r12
	testq	%r12, %r12
	je	.L32
	cmpb	$0, 56(%r12)
	je	.L18
	movzbl	67(%r12), %esi
.L19:
	movsbl	%sil, %esi
	movq	%rbx, %rdi
	call	_ZNSo3putEc@PLT
	jmp	.L33
.L32:
	call	_ZSt16__throw_bad_castv@PLT
.L18:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r12), %rax
	movl	$10, %esi
	movq	%r12, %rdi
	call	*48(%rax)
	movl	%eax, %esi
	jmp	.L19
.L33:
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
	addl	$1, %ebp
.L20:
	cmpl	$3, %ebp
	jg	.L16
	movl	$6, %edx
	leaq	.LC4(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.LEHE4:
	jmp	.L34
.L16:
	movq	(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L21
	call	_ZdlPv@PLT
.L21:
	movq	72(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L35
	movl	$0, %eax
	addq	$80, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L35:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1948:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1948:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1948-.LLSDACSB1948
.LLSDACSB1948:
	.uleb128 .LEHB0-.LFB1948
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L26-.LFB1948
	.uleb128 0
	.uleb128 .LEHB1-.LFB1948
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB2-.LFB1948
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L25-.LFB1948
	.uleb128 0
	.uleb128 .LEHB3-.LFB1948
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB1948
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L25-.LFB1948
	.uleb128 0
.LLSDACSE1948:
	.text
	.size	main, .-main
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB2509:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2509:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	1731730814
	.long	1072916804
	.align 8
.LC1:
	.long	2405181686
	.long	1074329026
	.align 8
.LC2:
	.long	2061584302
	.long	1074376212
	.align 8
.LC3:
	.long	1340029796
	.long	1073125261
	.align 8
.LC8:
	.long	3834546802
	.long	1076101106
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
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
