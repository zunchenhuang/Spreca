	.text
	.file	"llvm-link"
	.file	1 "/home/fase2022/artifact/Test/test.c"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.loc	1 5 0                   # test.c:5:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movl	Inst_Counter(%rip), %eax
	addl	$4, %eax
	movl	%eax, Inst_Counter(%rip)
	movl	Inst_Counter(%rip), %edi
	callq	printCounter
	leaq	-24(%rbp), %rdi
	movl	$3, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	printStoreAddr
	movl	$0, -24(%rbp)
	movl	$3, %edi
	movl	$3, %esi
	callq	printDDep
.Ltmp0:
	.loc	1 6 3 prologue_end      # test.c:6:3
	movl	$3, %edi
	movl	$6, %esi
	callq	printDDep
	movl	$6, %edi
	movl	$6, %esi
	callq	printDDep
	.loc	1 7 5                   # test.c:7:5
	movl	Inst_Counter(%rip), %eax
	addl	$4, %eax
	movl	%eax, Inst_Counter(%rip)
	movl	Inst_Counter(%rip), %edi
	callq	printCounter
	leaq	-20(%rbp), %rdi
	movl	$7, %esi
	movl	$7, %edx
	movl	$5, %ecx
	callq	printStoreAddr
	movl	$0, -20(%rbp)
	movl	$7, %edi
	movl	$7, %esi
	callq	printDDep
	movl	$6, %edi
	movl	$7, %esi
	callq	printDDep
	movl	$6, %edi
	movl	$7, %esi
	callq	printDDep
	.loc	1 9 3                   # test.c:9:3
	movl	Inst_Counter(%rip), %eax
	addl	$2, %eax
	movl	%eax, Inst_Counter(%rip)
	movl	Inst_Counter(%rip), %edi
	callq	printCounter
	leaq	A(%rip), %rdi
	movl	$9, %esi
	movl	$9, %edx
	movl	$3, %ecx
	callq	printLoadAddr
	movl	$6, %edi
	movl	$9, %esi
	callq	printDDep
	movl	$6, %edi
	movl	$9, %esi
	callq	printDDep
	.loc	1 10 3                  # test.c:10:3
	movl	Inst_Counter(%rip), %eax
	addl	$3, %eax
	movl	%eax, Inst_Counter(%rip)
	movl	Inst_Counter(%rip), %edi
	callq	printCounter
	leaq	A(%rip), %rdi
	addq	$4, %rdi
	movl	$12, %esi
	movl	$10, %edx
	movl	$3, %ecx
	callq	printLoadAddr
	movl	$6, %edi
	movl	$12, %esi
	callq	printDDep
	movl	$6, %edi
	movl	$12, %esi
	callq	printDDep
	.loc	1 11 3                  # test.c:11:3
	movl	Inst_Counter(%rip), %eax
	addl	$3, %eax
	movl	%eax, Inst_Counter(%rip)
	movl	Inst_Counter(%rip), %edi
	callq	printCounter
	leaq	A(%rip), %rdi
	addq	$8, %rdi
	movl	$15, %esi
	movl	$11, %edx
	movl	$3, %ecx
	callq	printLoadAddr
	movl	$6, %edi
	movl	$15, %esi
	callq	printDDep
	movl	$6, %edi
	movl	$15, %esi
	callq	printDDep
	.loc	1 12 5                  # test.c:12:5
	movl	Inst_Counter(%rip), %eax
	addl	$3, %eax
	movl	%eax, Inst_Counter(%rip)
	movl	Inst_Counter(%rip), %edi
	callq	printCounter
	leaq	-20(%rbp), %rdi
	movl	$18, %esi
	movl	$12, %edx
	movl	$5, %ecx
	callq	printLoadAddr
	movl	-20(%rbp), %ebx
	movl	$7, %edi
	movl	$18, %esi
	callq	printDDep
	movl	$7, %edi
	movl	$18, %esi
	callq	printDDep
	movl	$7, %edi
	movl	$18, %esi
	callq	printDDep
	.loc	1 12 3 is_stmt 0        # test.c:12:3
	movslq	%ebx, %r14
	movq	%r14, %rax
	shlq	$2, %rax
	leaq	A(%rip), %rbx
	addq	%rax, %rbx
	.loc	1 12 8                  # test.c:12:8
	movl	Inst_Counter(%rip), %eax
	addl	$3, %eax
	movl	%eax, Inst_Counter(%rip)
	movl	Inst_Counter(%rip), %edi
	callq	printCounter
	leaq	A(%rip), %rsi
	movq	%rsi, %rdx
	addq	$8, %rdx
	movq	%rbx, %rdi
	movl	$4, %ecx
	movl	$21, %r8d
	movl	$12, %r9d
	movl	$8, (%rsp)
	callq	printSymStoreAddr
	leaq	A(%rip), %rax
	movl	$1, (%rax,%r14,4)
	movl	$18, %edi
	movl	$21, %esi
	callq	printDDep
	movl	$21, %edi
	movl	$21, %esi
	callq	printDDep
	movl	$7, %edi
	movl	$21, %esi
	callq	printDDep
	movl	$15, %edi
	movl	$21, %esi
	callq	printDDep
	.loc	1 13 3 is_stmt 1        # test.c:13:3
	movl	Inst_Counter(%rip), %eax
	addl	$1, %eax
	movl	%eax, Inst_Counter(%rip)
	movl	Inst_Counter(%rip), %edi
	callq	printCounter
	leaq	-28(%rbp), %rdi
	movl	$22, %esi
	movl	$13, %edx
	movl	$3, %ecx
	callq	printLoadAddr
	movl	$6, %edi
	movl	$22, %esi
	callq	printDDep
	.loc	1 16 3                  # test.c:16:3
	movl	Inst_Counter(%rip), %eax
	addl	$3, %eax
	movl	%eax, Inst_Counter(%rip)
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp1:
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.globl	printDDep               # -- Begin function printDDep
	.p2align	4, 0x90
	.type	printDDep,@function
printDDep:                              # @printDDep
.Lfunc_begin1:
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -4(%rbp)
	movl	-8(%rbp), %esi
	movl	-4(%rbp), %edx
	leaq	.L.str.2(%rip), %rdi
	movb	$0, %al
	callq	printf
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	printDDep, .Lfunc_end1-printDDep
	.cfi_endproc
                                        # -- End function
	.globl	printCDep               # -- Begin function printCDep
	.p2align	4, 0x90
	.type	printCDep,@function
printCDep:                              # @printCDep
.Lfunc_begin2:
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -4(%rbp)
	movl	-8(%rbp), %esi
	movl	-4(%rbp), %edx
	leaq	.L.str.1.3(%rip), %rdi
	movb	$0, %al
	callq	printf
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	printCDep, .Lfunc_end2-printCDep
	.cfi_endproc
                                        # -- End function
	.globl	printStoreAddr          # -- Begin function printStoreAddr
	.p2align	4, 0x90
	.type	printStoreAddr,@function
printStoreAddr:                         # @printStoreAddr
.Lfunc_begin3:
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -8(%rbp)
	movl	%ecx, -4(%rbp)
	movq	-24(%rbp), %rsi
	movl	-12(%rbp), %edx
	movl	-8(%rbp), %ecx
	movl	-4(%rbp), %r8d
	leaq	.L.str.2.4(%rip), %rdi
	movb	$0, %al
	callq	printf
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	printStoreAddr, .Lfunc_end3-printStoreAddr
	.cfi_endproc
                                        # -- End function
	.globl	printLoadAddr           # -- Begin function printLoadAddr
	.p2align	4, 0x90
	.type	printLoadAddr,@function
printLoadAddr:                          # @printLoadAddr
.Lfunc_begin4:
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -8(%rbp)
	movl	%ecx, -4(%rbp)
	movq	-24(%rbp), %rsi
	movl	-12(%rbp), %edx
	movl	-8(%rbp), %ecx
	movl	-4(%rbp), %r8d
	leaq	.L.str.3(%rip), %rdi
	movb	$0, %al
	callq	printf
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	printLoadAddr, .Lfunc_end4-printLoadAddr
	.cfi_endproc
                                        # -- End function
	.globl	printSymStoreAddr       # -- Begin function printSymStoreAddr
	.p2align	4, 0x90
	.type	printSymStoreAddr,@function
printSymStoreAddr:                      # @printSymStoreAddr
.Lfunc_begin5:
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -40(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -12(%rbp)
	movl	%r8d, -8(%rbp)
	movl	%r9d, -4(%rbp)
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movl	-12(%rbp), %r8d
	movl	-8(%rbp), %r9d
	movl	-4(%rbp), %eax
	movl	16(%rbp), %r10d
	leaq	.L.str.4(%rip), %rdi
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movb	$0, %al
	callq	printf
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	printSymStoreAddr, .Lfunc_end5-printSymStoreAddr
	.cfi_endproc
                                        # -- End function
	.globl	printSymLoadAddr        # -- Begin function printSymLoadAddr
	.p2align	4, 0x90
	.type	printSymLoadAddr,@function
printSymLoadAddr:                       # @printSymLoadAddr
.Lfunc_begin6:
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -40(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -12(%rbp)
	movl	%r8d, -8(%rbp)
	movl	%r9d, -4(%rbp)
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movl	-12(%rbp), %r8d
	movl	-8(%rbp), %r9d
	movl	-4(%rbp), %eax
	movl	16(%rbp), %r10d
	leaq	.L.str.5(%rip), %rdi
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movb	$0, %al
	callq	printf
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	printSymLoadAddr, .Lfunc_end6-printSymLoadAddr
	.cfi_endproc
                                        # -- End function
	.globl	printCounter            # -- Begin function printCounter
	.p2align	4, 0x90
	.type	printCounter,@function
printCounter:                           # @printCounter
.Lfunc_begin7:
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %esi
	leaq	.L.str.6(%rip), %rdi
	movb	$0, %al
	callq	printf
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	printCounter, .Lfunc_end7-printCounter
	.cfi_endproc
                                        # -- End function
	.type	A,@object               # @A
	.comm	A,12,4
	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"DDEP: SrcID: %d DestID: %d\n"
	.size	.L.str.2, 28

	.type	.L.str.1.3,@object      # @.str.1.3
.L.str.1.3:
	.asciz	"CDEP: SrcID: %d DestID: %d\n"
	.size	.L.str.1.3, 28

	.type	.L.str.2.4,@object      # @.str.2.4
.L.str.2.4:
	.asciz	"Store: 0x%llx ID: %d @Ln,Col: %d,%d\n"
	.size	.L.str.2.4, 37

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Load: 0x%llx ID: %d @Ln,Col: %d,%d\n"
	.size	.L.str.3, 36

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"SymbolicStore: Concrete: 0x%llx Symbolic: From: 0x%llx To: 0x%llx StepSize: %d ID: %d @Ln,Col: %d,%d\n"
	.size	.L.str.4, 102

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"SymbolicLoad: Concrete: 0x%llx Symbolic: From: 0x%llx To: 0x%llx StepSize: %d ID: %d @Ln,Col: %d,%d\n"
	.size	.L.str.5, 101

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"InstCounter: %d\n"
	.size	.L.str.6, 17

	.type	Inst_Counter,@object    # @Inst_Counter
	.comm	Inst_Counter,4,4
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 10.0.0-4ubuntu1 " # string offset=0
.Linfo_string1:
	.asciz	"test.c"                # string offset=31
.Linfo_string2:
	.asciz	"/home/fase2022/artifact/Test" # string offset=38
.Linfo_string3:
	.asciz	"A"                     # string offset=67
.Linfo_string4:
	.asciz	"int"                   # string offset=69
.Linfo_string5:
	.asciz	"__ARRAY_SIZE_TYPE__"   # string offset=73
.Linfo_string6:
	.asciz	"main"                  # string offset=93
.Linfo_string7:
	.asciz	"i"                     # string offset=98
.Linfo_string8:
	.asciz	"B"                     # string offset=100
	.section	.debug_abbrev,"",@progbits
	.byte	1                       # Abbreviation Code
	.byte	17                      # DW_TAG_compile_unit
	.byte	1                       # DW_CHILDREN_yes
	.byte	37                      # DW_AT_producer
	.byte	14                      # DW_FORM_strp
	.byte	19                      # DW_AT_language
	.byte	5                       # DW_FORM_data2
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	16                      # DW_AT_stmt_list
	.byte	23                      # DW_FORM_sec_offset
	.byte	27                      # DW_AT_comp_dir
	.byte	14                      # DW_FORM_strp
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	2                       # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	2                       # DW_AT_location
	.byte	24                      # DW_FORM_exprloc
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	3                       # Abbreviation Code
	.byte	1                       # DW_TAG_array_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	4                       # Abbreviation Code
	.byte	33                      # DW_TAG_subrange_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	55                      # DW_AT_count
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	5                       # Abbreviation Code
	.byte	36                      # DW_TAG_base_type
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	62                      # DW_AT_encoding
	.byte	11                      # DW_FORM_data1
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	6                       # Abbreviation Code
	.byte	36                      # DW_TAG_base_type
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	62                      # DW_AT_encoding
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	7                       # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.byte	64                      # DW_AT_frame_base
	.byte	24                      # DW_FORM_exprloc
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	8                       # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	24                      # DW_FORM_exprloc
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	0                       # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                       # DWARF version number
	.long	.debug_abbrev           # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x85 DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Linfo_string1          # DW_AT_name
	.long	.Lline_table_start0     # DW_AT_stmt_list
	.long	.Linfo_string2          # DW_AT_comp_dir
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 # DW_AT_high_pc
	.byte	2                       # Abbrev [2] 0x2a:0x15 DW_TAG_variable
	.long	.Linfo_string3          # DW_AT_name
	.long	63                      # DW_AT_type
                                        # DW_AT_external
	.byte	1                       # DW_AT_decl_file
	.byte	3                       # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	A
	.byte	3                       # Abbrev [3] 0x3f:0xc DW_TAG_array_type
	.long	75                      # DW_AT_type
	.byte	4                       # Abbrev [4] 0x44:0x6 DW_TAG_subrange_type
	.long	82                      # DW_AT_type
	.byte	3                       # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	5                       # Abbrev [5] 0x4b:0x7 DW_TAG_base_type
	.long	.Linfo_string4          # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	6                       # Abbrev [6] 0x52:0x7 DW_TAG_base_type
	.long	.Linfo_string5          # DW_AT_name
	.byte	8                       # DW_AT_byte_size
	.byte	7                       # DW_AT_encoding
	.byte	7                       # Abbrev [7] 0x59:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string6          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	5                       # DW_AT_decl_line
	.long	75                      # DW_AT_type
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x72:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string7          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	8                       # Abbrev [8] 0x80:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	100
	.long	.Linfo_string8          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	8                       # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
.Ldebug_info_end0:
	.ident	"clang version 10.0.0-4ubuntu1 "
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
