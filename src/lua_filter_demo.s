	.file	"lua_filter_demo.c"
	.text
.Ltext0:
	.file 0 "/home/primauser/plastov/Mediastreamer2_LuaFilter/src" "lua_filter_demo.c"
	.section	.rodata
.LC0:
	.string	"--help"
	.align 8
.LC1:
	.string	"  %s, developed  by Igor Plastov\nigor.plastov@yandex.ru\n\n"
.LC2:
	.string	"--help      List of options."
	.align 8
.LC3:
	.string	"--version   Version of application."
	.align 8
.LC4:
	.string	"--scp       Full name of containing preambula of Lua-script file."
	.align 8
.LC5:
	.string	"--scb       Full name of containing body of Lua-script file."
	.align 8
.LC6:
	.string	"--gen       Set generator's frequency, Hz. Soundcard input will be ignored."
	.align 8
.LC7:
	.string	"--rec       Make recording to a file './record.wav'."
.LC8:
	.string	"--version"
.LC9:
	.string	"0.1"
.LC10:
	.string	"--scp"
	.align 8
.LC11:
	.string	"Lua-script ptrambula file name: %s\n"
.LC12:
	.string	"--scb"
	.align 8
.LC13:
	.string	"Lua-script body file name: %s\n"
.LC14:
	.string	"--gen"
.LC15:
	.string	"Generator's frequency: %i Hz\n"
.LC16:
	.string	"--rec"
.LC17:
	.string	"Recording enabled: %i\n"
	.text
	.globl	scan_args
	.type	scan_args, @function
scan_args:
.LFB20:
	.file 1 "lua_filter_demo.c"
	.loc 1 42 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 1 44 11
	movl	$0, -16(%rbp)
	.loc 1 44 5
	jmp	.L2
.L9:
	.loc 1 46 25
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 46 14
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 46 12
	testl	%eax, %eax
	jne	.L3
.LBB2:
	.loc 1 48 19
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 1 48 31
	addq	$2, -8(%rbp)
	.loc 1 49 13
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 50 13
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 51 13
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 52 13
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 53 13
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 54 13
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 55 13
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 56 13
	movl	$0, %edi
	call	exit@PLT
.L3:
.LBE2:
	.loc 1 59 25
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 59 14
	movq	(%rax), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 59 12
	testl	%eax, %eax
	jne	.L4
	.loc 1 61 13
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 62 13
	movl	$0, %edi
	call	exit@PLT
.L4:
	.loc 1 65 25
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 65 14
	movq	(%rax), %rax
	leaq	.LC10(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 65 12
	testl	%eax, %eax
	jne	.L5
	.loc 1 67 53
	movl	-16(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 67 39
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ortp_strdup@PLT
	.loc 1 67 38
	movq	-40(%rbp), %rdx
	movq	%rax, 80(%rdx)
	.loc 1 68 13
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L5:
	.loc 1 71 25
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 71 14
	movq	(%rax), %rax
	leaq	.LC12(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 71 12
	testl	%eax, %eax
	jne	.L6
	.loc 1 73 48
	movl	-16(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 73 34
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ortp_strdup@PLT
	.loc 1 73 33
	movq	-40(%rbp), %rdx
	movq	%rax, 88(%rdx)
	.loc 1 74 13
	movq	-40(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L6:
	.loc 1 77 25
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 77 14
	movq	(%rax), %rax
	leaq	.LC14(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 77 12
	testl	%eax, %eax
	jne	.L7
.LBB3:
	.loc 1 79 25
	movq	-40(%rbp), %rax
	movb	$1, 41(%rax)
	.loc 1 80 33
	movl	-16(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 80 24
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -12(%rbp)
	.loc 1 81 42
	movq	-40(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 12(%rax)
	.loc 1 82 13
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, %esi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L7:
.LBE3:
	.loc 1 85 26
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 85 15
	movq	(%rax), %rax
	leaq	.LC16(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 85 13
	testl	%eax, %eax
	jne	.L8
	.loc 1 87 25
	movq	-40(%rbp), %rax
	movb	$1, 42(%rax)
	.loc 1 88 49
	movq	-40(%rbp), %rax
	movzbl	42(%rax), %eax
	.loc 1 88 13
	movzbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L8:
	.loc 1 44 24 discriminator 2
	addl	$1, -16(%rbp)
.L2:
	.loc 1 44 16 discriminator 1
	movl	-16(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L9
	.loc 1 91 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	scan_args, .-scan_args
	.section	.rodata
.LC18:
	.string	"r"
	.align 8
.LC19:
	.string	"\nScript's code <%s>:\n{\n%s\n}\nwill be loaded to lua-filter.\n\n"
	.text
	.globl	get_file
	.type	get_file, @function
get_file:
.LFB21:
	.loc 1 95 32
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -216(%rbp)
	.loc 1 95 32
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 97 9
	leaq	-160(%rbp), %rdx
	movq	-216(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 1 97 8
	testl	%eax, %eax
	jns	.L11
	.loc 1 98 15
	movl	$0, %eax
	jmp	.L14
.L11:
	.loc 1 100 11
	movq	$0, -200(%rbp)
	.loc 1 101 41
	movq	-112(%rbp), %rax
	.loc 1 101 18
	movq	%rax, -192(%rbp)
	.loc 1 102 17
	movq	-192(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	call	ortp_malloc0@PLT
	movq	%rax, -184(%rbp)
	.loc 1 103 15
	movq	-216(%rbp), %rax
	leaq	.LC18(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -176(%rbp)
	.loc 1 104 23
	movq	-176(%rbp), %rcx
	movq	-192(%rbp), %rdx
	movq	-184(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread@PLT
	movq	%rax, -168(%rbp)
	.loc 1 105 5
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	.loc 1 106 8
	cmpq	$0, -168(%rbp)
	je	.L13
	.loc 1 106 24 discriminator 1
	movq	-168(%rbp), %rax
	cmpq	-192(%rbp), %rax
	ja	.L13
	.loc 1 108 9
	movq	-184(%rbp), %rdx
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 111 13
	movq	-184(%rbp), %rax
	movq	%rax, -200(%rbp)
.L13:
	.loc 1 113 12
	movq	-200(%rbp), %rax
.L14:
	.loc 1 114 1 discriminator 1
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L15
	.loc 1 114 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	get_file, .-get_file
	.section	.rodata
	.align 8
.LC20:
	.string	"Script's body <%s> was not loaded.\n"
	.text
	.type	load_script_body, @function
load_script_body:
.LFB22:
	.loc 1 119 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 119 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 120 11
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	.loc 1 120 8
	testq	%rax, %rax
	je	.L22
	.loc 1 122 17
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	get_file
	.loc 1 122 11
	movq	%rax, -16(%rbp)
	.loc 1 123 9
	movq	-16(%rbp), %rax
	.loc 1 123 8
	testq	%rax, %rax
	je	.L19
	.loc 1 125 9
	leaq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$262209537, %esi
	movq	%rax, %rdi
	call	ms_filter_call_method@PLT
	jmp	.L16
.L19:
	.loc 1 129 9
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L16
.L22:
	.loc 1 120 31
	nop
.L16:
	.loc 1 132 1
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L21
	call	__stack_chk_fail@PLT
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	load_script_body, .-load_script_body
	.section	.rodata
	.align 8
.LC21:
	.string	"Script's preambula <%s> was not loaded.\n"
	.text
	.type	load_script_preambula, @function
load_script_preambula:
.LFB23:
	.loc 1 137 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 137 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 138 11
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	.loc 1 138 8
	testq	%rax, %rax
	je	.L29
	.loc 1 140 17
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	get_file
	.loc 1 140 11
	movq	%rax, -16(%rbp)
	.loc 1 141 9
	movq	-16(%rbp), %rax
	.loc 1 141 8
	testq	%rax, %rax
	je	.L26
	.loc 1 143 9
	leaq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$262210049, %esi
	movq	%rax, %rdi
	call	ms_filter_call_method@PLT
	jmp	.L23
.L26:
	.loc 1 147 9
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L23
.L29:
	.loc 1 138 36
	nop
.L23:
	.loc 1 150 1
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L28
	call	__stack_chk_fail@PLT
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	load_script_preambula, .-load_script_preambula
	.type	build_sound_cards_table, @function
build_sound_cards_table:
.LFB24:
	.loc 1 155 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	.loc 1 159 32
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	ms_factory_get_snd_card_manager@PLT
	.loc 1 159 3
	movq	%rax, %rdi
	call	ms_snd_card_manager_get_list@PLT
	movq	%rax, -32(%rbp)
	.loc 1 160 9
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	bctbx_list_size@PLT
	movq	%rax, -24(%rbp)
	.loc 1 161 30
	movq	-24(%rbp), %rax
	addq	$1, %rax
	.loc 1 161 14
	salq	$3, %rax
	movq	%rax, %rdi
	call	ortp_malloc@PLT
	.loc 1 161 13
	movq	-56(%rbp), %rdx
	movq	%rax, 72(%rdx)
	.loc 1 162 10
	movl	$0, -36(%rbp)
	.loc 1 162 2
	jmp	.L31
.L32:
	.loc 1 164 63 discriminator 3
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 164 5 discriminator 3
	movq	-56(%rbp), %rdx
	movq	72(%rdx), %rcx
	.loc 1 164 13 discriminator 3
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	leaq	(%rcx,%rdx), %rbx
	.loc 1 164 19 discriminator 3
	movq	%rax, %rdi
	call	ms_snd_card_get_string_id@PLT
	.loc 1 164 17 discriminator 3
	movq	%rax, (%rbx)
	.loc 1 162 33 discriminator 3
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	.loc 1 162 48 discriminator 3
	addl	$1, -36(%rbp)
.L31:
	.loc 1 162 20 discriminator 1
	cmpq	$0, -32(%rbp)
	jne	.L32
	.loc 1 166 4
	movq	-56(%rbp), %rax
	movq	72(%rax), %rdx
	.loc 1 166 12
	movq	-24(%rbp), %rax
	salq	$3, %rax
	addq	%rdx, %rax
	.loc 1 166 19
	movq	$0, (%rax)
	.loc 1 167 19
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movb	%dl, 64(%rax)
	.loc 1 168 1
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	build_sound_cards_table, .-build_sound_cards_table
	.section	.rodata
	.align 8
.LC22:
	.string	"Will be used soundcard:\n<\n%s\n>\n"
.LC23:
	.string	"record.raw"
.LC24:
	.string	"File for recording <%s>.\n"
.LC25:
	.string	"sound"
	.align 8
.LC27:
	.string	"Sound from generator lasts %i ms.\n"
.LC28:
	.string	"Press ENTER to exit.\n "
.LC29:
	.string	"File recording was finished."
	.text
	.globl	main
	.type	main, @function
main:
.LFB25:
	.loc 1 172 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movl	%edi, -212(%rbp)
	movq	%rsi, -224(%rbp)
	.loc 1 172 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 174 14
	leaq	-112(%rbp), %rdx
	movl	$0, %eax
	movl	$12, %ecx
	movq	%rdx, %rdi
	rep stosq
	.loc 1 175 15
	call	ms_factory_new@PLT
	.loc 1 175 13
	movq	%rax, -64(%rbp)
	.loc 1 176 2
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ms_factory_init_voip@PLT
	.loc 1 178 16
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ms_factory_get_snd_card_manager@PLT
	.loc 1 178 14
	movq	%rax, -56(%rbp)
	.loc 1 179 5
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	build_sound_cards_table
	.loc 1 183 5
	leaq	-112(%rbp), %rdx
	movq	-224(%rbp), %rcx
	movl	-212(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	scan_args
	.loc 1 186 55
	movq	-40(%rbp), %rax
	.loc 1 186 5
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 188 45
	movq	-40(%rbp), %rax
	.loc 1 188 2
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ms_snd_card_manager_get_card@PLT
	movq	%rax, -192(%rbp)
	.loc 1 190 31
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	ms_snd_card_create_reader@PLT
	movq	%rax, -184(%rbp)
	.loc 1 191 32
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	ms_snd_card_create_writer@PLT
	movq	%rax, -176(%rbp)
	.loc 1 193 28
	movq	-64(%rbp), %rax
	movl	$56, %esi
	movq	%rax, %rdi
	call	ms_factory_create_filter@PLT
	movq	%rax, -168(%rbp)
	.loc 1 194 25
	movq	-64(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	ms_factory_create_filter@PLT
	movq	%rax, -160(%rbp)
	.loc 1 197 2
	movq	-64(%rbp), %rax
	leaq	lua_filter_desc(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ms_factory_register_filter@PLT
	.loc 1 199 28
	movq	-64(%rbp), %rax
	movl	$4001, %esi
	movq	%rax, %rdi
	call	ms_factory_create_filter@PLT
	movq	%rax, -152(%rbp)
	.loc 1 202 24
	movq	-64(%rbp), %rax
	movl	$14, %esi
	movq	%rax, %rdi
	call	ms_factory_create_filter@PLT
	movq	%rax, -144(%rbp)
	.loc 1 203 19
	movq	-144(%rbp), %rax
	movq	%rax, -80(%rbp)
	.loc 1 205 19
	movq	-64(%rbp), %rax
	movl	$30, %esi
	movq	%rax, %rdi
	call	ms_factory_create_filter@PLT
	movq	%rax, -136(%rbp)
	.loc 1 208 24
	call	ms_ticker_new@PLT
	movq	%rax, -128(%rbp)
	.loc 1 211 13
	movzbl	-71(%rbp), %eax
	.loc 1 211 8
	testb	%al, %al
	je	.L34
	.loc 1 213 6
	movq	-160(%rbp), %rdx
	movq	-168(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ms_filter_link@PLT
	.loc 1 214 6
	movq	-152(%rbp), %rdx
	movq	-160(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ms_filter_link@PLT
	.loc 1 215 6
	movq	-136(%rbp), %rdx
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ms_filter_link@PLT
	.loc 1 217 6
	leaq	-112(%rbp), %rdx
	movq	-160(%rbp), %rax
	movl	$983840, %esi
	movq	%rax, %rdi
	call	ms_filter_call_method@PLT
	jmp	.L35
.L34:
	.loc 1 222 6
	movq	-152(%rbp), %rdx
	movq	-184(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ms_filter_link@PLT
	.loc 1 223 6
	movq	-136(%rbp), %rdx
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ms_filter_link@PLT
.L35:
	.loc 1 226 5
	movq	-144(%rbp), %rdx
	movq	-136(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ms_filter_link@PLT
	.loc 1 227 5
	movq	-176(%rbp), %rdx
	movq	-136(%rbp), %rax
	movl	$0, %ecx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ms_filter_link@PLT
	.loc 1 230 5
	movq	-152(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_script_preambula
	.loc 1 233 13
	movzbl	-71(%rbp), %eax
	.loc 1 233 8
	testb	%al, %al
	je	.L36
	.loc 1 235 5
	movq	-168(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ms_ticker_attach@PLT
	jmp	.L37
.L36:
	.loc 1 239 5
	movq	-184(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ms_ticker_attach@PLT
.L37:
	.loc 1 242 5
	movq	-152(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_script_body
	.loc 1 244 14
	movzbl	-70(%rbp), %eax
	.loc 1 244 8
	testb	%al, %al
	je	.L38
.LBB4:
	.loc 1 246 15
	leaq	.LC23(%rip), %rax
	movq	%rax, -120(%rbp)
	.loc 1 247 9
	movq	-120(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 248 9
	movq	-120(%rbp), %rdx
	movq	-144(%rbp), %rax
	movl	$917505, %esi
	movq	%rax, %rdi
	call	ms_filter_call_method@PLT
	.loc 1 249 9
	movq	-144(%rbp), %rax
	movl	$0, %edx
	movl	$917760, %esi
	movq	%rax, %rdi
	call	ms_filter_call_method@PLT
.L38:
.LBE4:
	.loc 1 253 13
	movzbl	-71(%rbp), %eax
	.loc 1 253 8
	testb	%al, %al
	je	.L39
	.loc 1 256 9
	leaq	-112(%rbp), %rax
	movl	$8, %edx
	leaq	.LC25(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	.loc 1 258 32
	movl	$10000, -104(%rbp)
	.loc 1 259 33
	movss	.LC26(%rip), %xmm0
	movss	%xmm0, -92(%rbp)
	.loc 1 260 37
	movl	$0, -96(%rbp)
	.loc 1 261 33
	movss	.LC26(%rip), %xmm0
	movss	%xmm0, -92(%rbp)
	.loc 1 262 32
	movl	$0, -88(%rbp)
	.loc 1 263 36
	movl	$0, -84(%rbp)
	.loc 1 266 9
	leaq	-112(%rbp), %rdx
	movq	-160(%rbp), %rax
	movl	$983840, %esi
	movq	%rax, %rdi
	call	ms_filter_call_method@PLT
	.loc 1 268 9
	movl	-104(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L39:
	.loc 1 271 5
	leaq	.LC28(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 272 12
	call	getchar@PLT
	.loc 1 272 10
	movb	%al, -193(%rbp)
	.loc 1 273 10
	jmp	.L40
.L41:
	.loc 1 275 9
	movl	$500000, %edi
	call	ms_usleep@PLT
	.loc 1 276 11
	call	getchar@PLT
	.loc 1 276 10
	movb	%al, -193(%rbp)
.L40:
	.loc 1 273 13
	cmpb	$10, -193(%rbp)
	jne	.L41
	.loc 1 278 13
	movzbl	-70(%rbp), %eax
	.loc 1 278 8
	testb	%al, %al
	je	.L42
	.loc 1 281 9
	movq	-144(%rbp), %rax
	movl	$0, %edx
	movl	$918272, %esi
	movq	%rax, %rdi
	call	ms_filter_call_method@PLT
	.loc 1 282 9
	leaq	.LC29(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L42:
	movl	$0, %eax
	.loc 1 284 1
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L44
	call	__stack_chk_fail@PLT
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC26:
	.long	1065353216
	.text
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/struct_stat.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/11/include/stddef.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/atomic_wide_counter.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h"
	.file 11 "/usr/include/unistd.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 15 "/usr/include/x86_64-linux-gnu/bits/sockaddr.h"
	.file 16 "/usr/include/x86_64-linux-gnu/bits/socket.h"
	.file 17 "/usr/include/netinet/in.h"
	.file 18 "/usr/include/bctoolbox/port.h"
	.file 19 "/usr/include/bctoolbox/list.h"
	.file 20 "/usr/include/ortp/port.h"
	.file 21 "/usr/include/ortp/str_utils.h"
	.file 22 "/usr/include/mediastreamer2/msqueue.h"
	.file 23 "/usr/include/mediastreamer2/msfilter.h"
	.file 24 "/usr/include/mediastreamer2/allfilters.h"
	.file 25 "/usr/include/mediastreamer2/box-plot.h"
	.file 26 "/usr/include/mediastreamer2/msfactory.h"
	.file 27 "/usr/include/mediastreamer2/msticker.h"
	.file 28 "/usr/include/mediastreamer2/devices.h"
	.file 29 "/usr/include/mediastreamer2/mssndcard.h"
	.file 30 "/usr/include/mediastreamer2/dtmfgen.h"
	.file 31 "/usr/include/string.h"
	.file 32 "/usr/include/stdio.h"
	.file 33 "/usr/include/mediastreamer2/mscommon.h"
	.file 34 "/usr/include/x86_64-linux-gnu/sys/stat.h"
	.file 35 "/usr/include/stdlib.h"
	.file 36 "lua_filter.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1f93
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x21
	.long	.LASF564
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x8
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.long	.LASF5
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x3
	.long	.LASF8
	.byte	0x2
	.byte	0x26
	.byte	0x17
	.long	0x2e
	.uleb128 0x8
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x3
	.long	.LASF9
	.byte	0x2
	.byte	0x28
	.byte	0x1c
	.long	0x35
	.uleb128 0x22
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF10
	.byte	0x2
	.byte	0x2a
	.byte	0x16
	.long	0x3c
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.long	.LASF11
	.uleb128 0x3
	.long	.LASF12
	.byte	0x2
	.byte	0x2d
	.byte	0x1b
	.long	0x43
	.uleb128 0x3
	.long	.LASF13
	.byte	0x2
	.byte	0x91
	.byte	0x1b
	.long	0x43
	.uleb128 0x3
	.long	.LASF14
	.byte	0x2
	.byte	0x92
	.byte	0x16
	.long	0x3c
	.uleb128 0x3
	.long	.LASF15
	.byte	0x2
	.byte	0x93
	.byte	0x16
	.long	0x3c
	.uleb128 0x3
	.long	.LASF16
	.byte	0x2
	.byte	0x94
	.byte	0x1b
	.long	0x43
	.uleb128 0x3
	.long	.LASF17
	.byte	0x2
	.byte	0x96
	.byte	0x16
	.long	0x3c
	.uleb128 0x3
	.long	.LASF18
	.byte	0x2
	.byte	0x97
	.byte	0x1b
	.long	0x43
	.uleb128 0x3
	.long	.LASF19
	.byte	0x2
	.byte	0x98
	.byte	0x12
	.long	0x83
	.uleb128 0x3
	.long	.LASF20
	.byte	0x2
	.byte	0x99
	.byte	0x12
	.long	0x83
	.uleb128 0xa
	.long	0x70
	.long	0x106
	.uleb128 0xb
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF21
	.byte	0x2
	.byte	0xa0
	.byte	0x12
	.long	0x83
	.uleb128 0x3
	.long	.LASF22
	.byte	0x2
	.byte	0xa2
	.byte	0x12
	.long	0x83
	.uleb128 0x23
	.byte	0x8
	.uleb128 0x16
	.long	0x11e
	.uleb128 0x3
	.long	.LASF23
	.byte	0x2
	.byte	0xaf
	.byte	0x12
	.long	0x83
	.uleb128 0x3
	.long	.LASF24
	.byte	0x2
	.byte	0xb4
	.byte	0x12
	.long	0x83
	.uleb128 0x3
	.long	.LASF25
	.byte	0x2
	.byte	0xc5
	.byte	0x12
	.long	0x83
	.uleb128 0x5
	.long	0x14e
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.long	.LASF26
	.uleb128 0x18
	.long	0x14e
	.uleb128 0x3
	.long	.LASF27
	.byte	0x2
	.byte	0xd2
	.byte	0x16
	.long	0x3c
	.uleb128 0x6
	.long	.LASF30
	.byte	0x10
	.byte	0x3
	.byte	0xb
	.byte	0x8
	.long	0x18e
	.uleb128 0x1
	.long	.LASF28
	.byte	0x3
	.byte	0x10
	.byte	0xc
	.long	0x106
	.byte	0
	.uleb128 0x1
	.long	.LASF29
	.byte	0x3
	.byte	0x15
	.byte	0x15
	.long	0x13d
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.long	.LASF31
	.byte	0x90
	.byte	0x4
	.byte	0x1a
	.byte	0x8
	.long	0x25f
	.uleb128 0x1
	.long	.LASF32
	.byte	0x4
	.byte	0x1f
	.byte	0xd
	.long	0x96
	.byte	0
	.uleb128 0x1
	.long	.LASF33
	.byte	0x4
	.byte	0x24
	.byte	0xd
	.long	0xba
	.byte	0x8
	.uleb128 0x1
	.long	.LASF34
	.byte	0x4
	.byte	0x2c
	.byte	0xf
	.long	0xd2
	.byte	0x10
	.uleb128 0x1
	.long	.LASF35
	.byte	0x4
	.byte	0x2d
	.byte	0xe
	.long	0xc6
	.byte	0x18
	.uleb128 0x1
	.long	.LASF36
	.byte	0x4
	.byte	0x2f
	.byte	0xd
	.long	0xa2
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF37
	.byte	0x4
	.byte	0x30
	.byte	0xd
	.long	0xae
	.byte	0x20
	.uleb128 0x1
	.long	.LASF38
	.byte	0x4
	.byte	0x32
	.byte	0x9
	.long	0x70
	.byte	0x24
	.uleb128 0x1
	.long	.LASF39
	.byte	0x4
	.byte	0x34
	.byte	0xd
	.long	0x96
	.byte	0x28
	.uleb128 0x1
	.long	.LASF40
	.byte	0x4
	.byte	0x39
	.byte	0xd
	.long	0xde
	.byte	0x30
	.uleb128 0x1
	.long	.LASF41
	.byte	0x4
	.byte	0x3d
	.byte	0x11
	.long	0x125
	.byte	0x38
	.uleb128 0x1
	.long	.LASF42
	.byte	0x4
	.byte	0x3f
	.byte	0x10
	.long	0x131
	.byte	0x40
	.uleb128 0x1
	.long	.LASF43
	.byte	0x4
	.byte	0x4a
	.byte	0x15
	.long	0x166
	.byte	0x48
	.uleb128 0x1
	.long	.LASF44
	.byte	0x4
	.byte	0x4b
	.byte	0x15
	.long	0x166
	.byte	0x58
	.uleb128 0x1
	.long	.LASF45
	.byte	0x4
	.byte	0x4c
	.byte	0x15
	.long	0x166
	.byte	0x68
	.uleb128 0x1
	.long	.LASF46
	.byte	0x4
	.byte	0x59
	.byte	0x17
	.long	0x25f
	.byte	0x78
	.byte	0
	.uleb128 0xa
	.long	0x13d
	.long	0x26f
	.uleb128 0xb
	.long	0x43
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF47
	.byte	0x5
	.byte	0xd1
	.byte	0x1b
	.long	0x43
	.uleb128 0x18
	.long	0x26f
	.uleb128 0x6
	.long	.LASF48
	.byte	0x10
	.byte	0x6
	.byte	0x8
	.byte	0x8
	.long	0x2a8
	.uleb128 0x1
	.long	.LASF28
	.byte	0x6
	.byte	0xe
	.byte	0xc
	.long	0x106
	.byte	0
	.uleb128 0x1
	.long	.LASF49
	.byte	0x6
	.byte	0xf
	.byte	0x11
	.long	0x112
	.byte	0x8
	.byte	0
	.uleb128 0x24
	.byte	0x8
	.byte	0x7
	.byte	0x1c
	.byte	0x3
	.long	0x2cc
	.uleb128 0x1
	.long	.LASF50
	.byte	0x7
	.byte	0x1e
	.byte	0x12
	.long	0x3c
	.byte	0
	.uleb128 0x1
	.long	.LASF51
	.byte	0x7
	.byte	0x1f
	.byte	0x12
	.long	0x3c
	.byte	0x4
	.byte	0
	.uleb128 0x15
	.byte	0x8
	.byte	0x7
	.byte	0x19
	.byte	0x9
	.long	0x2ee
	.uleb128 0x9
	.long	.LASF52
	.byte	0x7
	.byte	0x1b
	.byte	0x28
	.long	0x2ee
	.uleb128 0x9
	.long	.LASF53
	.byte	0x7
	.byte	0x20
	.byte	0x5
	.long	0x2a8
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.long	.LASF54
	.uleb128 0x3
	.long	.LASF55
	.byte	0x7
	.byte	0x21
	.byte	0x3
	.long	0x2cc
	.uleb128 0x6
	.long	.LASF56
	.byte	0x10
	.byte	0x8
	.byte	0x33
	.byte	0x10
	.long	0x329
	.uleb128 0x1
	.long	.LASF57
	.byte	0x8
	.byte	0x35
	.byte	0x23
	.long	0x329
	.byte	0
	.uleb128 0x1
	.long	.LASF58
	.byte	0x8
	.byte	0x36
	.byte	0x23
	.long	0x329
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	0x301
	.uleb128 0x3
	.long	.LASF59
	.byte	0x8
	.byte	0x37
	.byte	0x3
	.long	0x301
	.uleb128 0x6
	.long	.LASF60
	.byte	0x28
	.byte	0x9
	.byte	0x16
	.byte	0x8
	.long	0x3b0
	.uleb128 0x1
	.long	.LASF61
	.byte	0x9
	.byte	0x18
	.byte	0x7
	.long	0x70
	.byte	0
	.uleb128 0x1
	.long	.LASF62
	.byte	0x9
	.byte	0x19
	.byte	0x10
	.long	0x3c
	.byte	0x4
	.uleb128 0x1
	.long	.LASF63
	.byte	0x9
	.byte	0x1a
	.byte	0x7
	.long	0x70
	.byte	0x8
	.uleb128 0x1
	.long	.LASF64
	.byte	0x9
	.byte	0x1c
	.byte	0x10
	.long	0x3c
	.byte	0xc
	.uleb128 0x1
	.long	.LASF65
	.byte	0x9
	.byte	0x20
	.byte	0x7
	.long	0x70
	.byte	0x10
	.uleb128 0x1
	.long	.LASF66
	.byte	0x9
	.byte	0x22
	.byte	0x9
	.long	0x5d
	.byte	0x14
	.uleb128 0x1
	.long	.LASF67
	.byte	0x9
	.byte	0x23
	.byte	0x9
	.long	0x5d
	.byte	0x16
	.uleb128 0x1
	.long	.LASF68
	.byte	0x9
	.byte	0x24
	.byte	0x14
	.long	0x32e
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.long	.LASF69
	.byte	0x30
	.byte	0x8
	.byte	0x5e
	.byte	0x8
	.long	0x419
	.uleb128 0x1
	.long	.LASF70
	.byte	0x8
	.byte	0x60
	.byte	0x19
	.long	0x2f5
	.byte	0
	.uleb128 0x1
	.long	.LASF71
	.byte	0x8
	.byte	0x61
	.byte	0x19
	.long	0x2f5
	.byte	0x8
	.uleb128 0x1
	.long	.LASF72
	.byte	0x8
	.byte	0x62
	.byte	0x10
	.long	0x419
	.byte	0x10
	.uleb128 0x1
	.long	.LASF73
	.byte	0x8
	.byte	0x63
	.byte	0x10
	.long	0x419
	.byte	0x18
	.uleb128 0x1
	.long	.LASF74
	.byte	0x8
	.byte	0x64
	.byte	0x10
	.long	0x3c
	.byte	0x20
	.uleb128 0x1
	.long	.LASF75
	.byte	0x8
	.byte	0x65
	.byte	0x10
	.long	0x3c
	.byte	0x24
	.uleb128 0x1
	.long	.LASF76
	.byte	0x8
	.byte	0x66
	.byte	0x10
	.long	0x419
	.byte	0x28
	.byte	0
	.uleb128 0xa
	.long	0x3c
	.long	0x429
	.uleb128 0xb
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF77
	.byte	0xa
	.byte	0x1b
	.byte	0x1b
	.long	0x43
	.uleb128 0x15
	.byte	0x28
	.byte	0xa
	.byte	0x43
	.byte	0x9
	.long	0x463
	.uleb128 0x9
	.long	.LASF78
	.byte	0xa
	.byte	0x45
	.byte	0x1c
	.long	0x33a
	.uleb128 0x9
	.long	.LASF79
	.byte	0xa
	.byte	0x46
	.byte	0x8
	.long	0x463
	.uleb128 0x9
	.long	.LASF80
	.byte	0xa
	.byte	0x47
	.byte	0xc
	.long	0x83
	.byte	0
	.uleb128 0xa
	.long	0x14e
	.long	0x473
	.uleb128 0xb
	.long	0x43
	.byte	0x27
	.byte	0
	.uleb128 0x3
	.long	.LASF81
	.byte	0xa
	.byte	0x48
	.byte	0x3
	.long	0x435
	.uleb128 0x15
	.byte	0x30
	.byte	0xa
	.byte	0x4b
	.byte	0x9
	.long	0x4ad
	.uleb128 0x9
	.long	.LASF78
	.byte	0xa
	.byte	0x4d
	.byte	0x1b
	.long	0x3b0
	.uleb128 0x9
	.long	.LASF79
	.byte	0xa
	.byte	0x4e
	.byte	0x8
	.long	0x4ad
	.uleb128 0x9
	.long	.LASF80
	.byte	0xa
	.byte	0x4f
	.byte	0x1f
	.long	0x4bd
	.byte	0
	.uleb128 0xa
	.long	0x14e
	.long	0x4bd
	.uleb128 0xb
	.long	0x43
	.byte	0x2f
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.long	.LASF82
	.uleb128 0x3
	.long	.LASF83
	.byte	0xa
	.byte	0x50
	.byte	0x3
	.long	0x47f
	.uleb128 0xa
	.long	0x14e
	.long	0x4e0
	.uleb128 0xb
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	0x155
	.uleb128 0x16
	.long	0x4e0
	.uleb128 0x1a
	.long	.LASF84
	.byte	0xb
	.value	0x112
	.byte	0x15
	.long	0x15a
	.uleb128 0x5
	.long	0x149
	.uleb128 0x6
	.long	.LASF85
	.byte	0xd8
	.byte	0xc
	.byte	0x31
	.byte	0x8
	.long	0x683
	.uleb128 0x1
	.long	.LASF86
	.byte	0xc
	.byte	0x33
	.byte	0x7
	.long	0x70
	.byte	0
	.uleb128 0x1
	.long	.LASF87
	.byte	0xc
	.byte	0x36
	.byte	0x9
	.long	0x149
	.byte	0x8
	.uleb128 0x1
	.long	.LASF88
	.byte	0xc
	.byte	0x37
	.byte	0x9
	.long	0x149
	.byte	0x10
	.uleb128 0x1
	.long	.LASF89
	.byte	0xc
	.byte	0x38
	.byte	0x9
	.long	0x149
	.byte	0x18
	.uleb128 0x1
	.long	.LASF90
	.byte	0xc
	.byte	0x39
	.byte	0x9
	.long	0x149
	.byte	0x20
	.uleb128 0x1
	.long	.LASF91
	.byte	0xc
	.byte	0x3a
	.byte	0x9
	.long	0x149
	.byte	0x28
	.uleb128 0x1
	.long	.LASF92
	.byte	0xc
	.byte	0x3b
	.byte	0x9
	.long	0x149
	.byte	0x30
	.uleb128 0x1
	.long	.LASF93
	.byte	0xc
	.byte	0x3c
	.byte	0x9
	.long	0x149
	.byte	0x38
	.uleb128 0x1
	.long	.LASF94
	.byte	0xc
	.byte	0x3d
	.byte	0x9
	.long	0x149
	.byte	0x40
	.uleb128 0x1
	.long	.LASF95
	.byte	0xc
	.byte	0x40
	.byte	0x9
	.long	0x149
	.byte	0x48
	.uleb128 0x1
	.long	.LASF96
	.byte	0xc
	.byte	0x41
	.byte	0x9
	.long	0x149
	.byte	0x50
	.uleb128 0x1
	.long	.LASF97
	.byte	0xc
	.byte	0x42
	.byte	0x9
	.long	0x149
	.byte	0x58
	.uleb128 0x1
	.long	.LASF98
	.byte	0xc
	.byte	0x44
	.byte	0x16
	.long	0x69c
	.byte	0x60
	.uleb128 0x1
	.long	.LASF99
	.byte	0xc
	.byte	0x46
	.byte	0x14
	.long	0x6a1
	.byte	0x68
	.uleb128 0x1
	.long	.LASF100
	.byte	0xc
	.byte	0x48
	.byte	0x7
	.long	0x70
	.byte	0x70
	.uleb128 0x1
	.long	.LASF101
	.byte	0xc
	.byte	0x49
	.byte	0x7
	.long	0x70
	.byte	0x74
	.uleb128 0x1
	.long	.LASF102
	.byte	0xc
	.byte	0x4a
	.byte	0xb
	.long	0xde
	.byte	0x78
	.uleb128 0x1
	.long	.LASF103
	.byte	0xc
	.byte	0x4d
	.byte	0x12
	.long	0x35
	.byte	0x80
	.uleb128 0x1
	.long	.LASF104
	.byte	0xc
	.byte	0x4e
	.byte	0xf
	.long	0x4a
	.byte	0x82
	.uleb128 0x1
	.long	.LASF105
	.byte	0xc
	.byte	0x4f
	.byte	0x8
	.long	0x6a6
	.byte	0x83
	.uleb128 0x1
	.long	.LASF106
	.byte	0xc
	.byte	0x51
	.byte	0xf
	.long	0x6b6
	.byte	0x88
	.uleb128 0x1
	.long	.LASF107
	.byte	0xc
	.byte	0x59
	.byte	0xd
	.long	0xea
	.byte	0x90
	.uleb128 0x1
	.long	.LASF108
	.byte	0xc
	.byte	0x5b
	.byte	0x17
	.long	0x6c0
	.byte	0x98
	.uleb128 0x1
	.long	.LASF109
	.byte	0xc
	.byte	0x5c
	.byte	0x19
	.long	0x6ca
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF110
	.byte	0xc
	.byte	0x5d
	.byte	0x14
	.long	0x6a1
	.byte	0xa8
	.uleb128 0x1
	.long	.LASF111
	.byte	0xc
	.byte	0x5e
	.byte	0x9
	.long	0x11e
	.byte	0xb0
	.uleb128 0x1
	.long	.LASF112
	.byte	0xc
	.byte	0x5f
	.byte	0xa
	.long	0x26f
	.byte	0xb8
	.uleb128 0x1
	.long	.LASF113
	.byte	0xc
	.byte	0x60
	.byte	0x7
	.long	0x70
	.byte	0xc0
	.uleb128 0x1
	.long	.LASF114
	.byte	0xc
	.byte	0x62
	.byte	0x8
	.long	0x6cf
	.byte	0xc4
	.byte	0
	.uleb128 0x3
	.long	.LASF115
	.byte	0xd
	.byte	0x7
	.byte	0x19
	.long	0x4fc
	.uleb128 0x25
	.long	.LASF565
	.byte	0xc
	.byte	0x2b
	.byte	0xe
	.uleb128 0x11
	.long	.LASF116
	.uleb128 0x5
	.long	0x697
	.uleb128 0x5
	.long	0x4fc
	.uleb128 0xa
	.long	0x14e
	.long	0x6b6
	.uleb128 0xb
	.long	0x43
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0x68f
	.uleb128 0x11
	.long	.LASF117
	.uleb128 0x5
	.long	0x6bb
	.uleb128 0x11
	.long	.LASF118
	.uleb128 0x5
	.long	0x6c5
	.uleb128 0xa
	.long	0x14e
	.long	0x6df
	.uleb128 0xb
	.long	0x43
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	0x683
	.uleb128 0x16
	.long	0x6df
	.uleb128 0x3
	.long	.LASF119
	.byte	0xe
	.byte	0x18
	.byte	0x13
	.long	0x51
	.uleb128 0x3
	.long	.LASF120
	.byte	0xe
	.byte	0x19
	.byte	0x14
	.long	0x64
	.uleb128 0x3
	.long	.LASF121
	.byte	0xe
	.byte	0x1a
	.byte	0x14
	.long	0x77
	.uleb128 0x3
	.long	.LASF122
	.byte	0xe
	.byte	0x1b
	.byte	0x14
	.long	0x8a
	.uleb128 0x3
	.long	.LASF123
	.byte	0xf
	.byte	0x1c
	.byte	0x1c
	.long	0x35
	.uleb128 0x6
	.long	.LASF124
	.byte	0x80
	.byte	0x10
	.byte	0xc1
	.byte	0x8
	.long	0x75a
	.uleb128 0x1
	.long	.LASF125
	.byte	0x10
	.byte	0xc3
	.byte	0x11
	.long	0x719
	.byte	0
	.uleb128 0x1
	.long	.LASF126
	.byte	0x10
	.byte	0xc4
	.byte	0xa
	.long	0x75a
	.byte	0x2
	.uleb128 0x1
	.long	.LASF127
	.byte	0x10
	.byte	0xc5
	.byte	0x17
	.long	0x43
	.byte	0x78
	.byte	0
	.uleb128 0xa
	.long	0x14e
	.long	0x76a
	.uleb128 0xb
	.long	0x43
	.byte	0x75
	.byte	0
	.uleb128 0x3
	.long	.LASF128
	.byte	0x11
	.byte	0x1e
	.byte	0x12
	.long	0x701
	.uleb128 0x6
	.long	.LASF129
	.byte	0x4
	.byte	0x11
	.byte	0x1f
	.byte	0x8
	.long	0x791
	.uleb128 0x1
	.long	.LASF130
	.byte	0x11
	.byte	0x21
	.byte	0xf
	.long	0x76a
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x10
	.byte	0x11
	.byte	0xdd
	.byte	0x5
	.long	0x7bf
	.uleb128 0x9
	.long	.LASF131
	.byte	0x11
	.byte	0xdf
	.byte	0xa
	.long	0x7bf
	.uleb128 0x9
	.long	.LASF132
	.byte	0x11
	.byte	0xe0
	.byte	0xb
	.long	0x7cf
	.uleb128 0x9
	.long	.LASF133
	.byte	0x11
	.byte	0xe1
	.byte	0xb
	.long	0x7df
	.byte	0
	.uleb128 0xa
	.long	0x6e9
	.long	0x7cf
	.uleb128 0xb
	.long	0x43
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.long	0x6f5
	.long	0x7df
	.uleb128 0xb
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.long	0x701
	.long	0x7ef
	.uleb128 0xb
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.long	.LASF134
	.byte	0x10
	.byte	0x11
	.byte	0xdb
	.byte	0x8
	.long	0x80a
	.uleb128 0x1
	.long	.LASF135
	.byte	0x11
	.byte	0xe2
	.byte	0x9
	.long	0x791
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LASF136
	.byte	0x12
	.value	0x150
	.byte	0x17
	.long	0x2e
	.uleb128 0x6
	.long	.LASF137
	.byte	0x18
	.byte	0x13
	.byte	0x1d
	.byte	0x10
	.long	0x84c
	.uleb128 0x1
	.long	.LASF138
	.byte	0x13
	.byte	0x1e
	.byte	0x16
	.long	0x84c
	.byte	0
	.uleb128 0x1
	.long	.LASF139
	.byte	0x13
	.byte	0x1f
	.byte	0x16
	.long	0x84c
	.byte	0x8
	.uleb128 0x1
	.long	.LASF140
	.byte	0x13
	.byte	0x20
	.byte	0x8
	.long	0x11e
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	0x817
	.uleb128 0x3
	.long	.LASF141
	.byte	0x13
	.byte	0x21
	.byte	0x3
	.long	0x817
	.uleb128 0x18
	.long	0x851
	.uleb128 0x3
	.long	.LASF142
	.byte	0x14
	.byte	0x3e
	.byte	0x13
	.long	0x429
	.uleb128 0x3
	.long	.LASF143
	.byte	0x14
	.byte	0x3f
	.byte	0x19
	.long	0x473
	.uleb128 0x3
	.long	.LASF144
	.byte	0x14
	.byte	0x40
	.byte	0x18
	.long	0x4c4
	.uleb128 0x15
	.byte	0x10
	.byte	0x15
	.byte	0x2b
	.byte	0x2
	.long	0x8a8
	.uleb128 0x9
	.long	.LASF145
	.byte	0x15
	.byte	0x2c
	.byte	0x12
	.long	0x776
	.uleb128 0x9
	.long	.LASF146
	.byte	0x15
	.byte	0x2d
	.byte	0x13
	.long	0x7ef
	.byte	0
	.uleb128 0x6
	.long	.LASF147
	.byte	0x18
	.byte	0x15
	.byte	0x29
	.byte	0x10
	.long	0x8dd
	.uleb128 0x1
	.long	.LASF148
	.byte	0x15
	.byte	0x2a
	.byte	0x6
	.long	0x70
	.byte	0
	.uleb128 0x1
	.long	.LASF149
	.byte	0x15
	.byte	0x2e
	.byte	0x4
	.long	0x886
	.byte	0x4
	.uleb128 0x1
	.long	.LASF150
	.byte	0x15
	.byte	0x2f
	.byte	0x11
	.long	0x35
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.long	.LASF151
	.byte	0x15
	.byte	0x30
	.byte	0x3
	.long	0x8a8
	.uleb128 0x6
	.long	.LASF152
	.byte	0xe8
	.byte	0x15
	.byte	0x38
	.byte	0x10
	.long	0x9a0
	.uleb128 0x1
	.long	.LASF153
	.byte	0x15
	.byte	0x3a
	.byte	0xf
	.long	0x9a0
	.byte	0
	.uleb128 0x1
	.long	.LASF154
	.byte	0x15
	.byte	0x3b
	.byte	0xf
	.long	0x9a0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF155
	.byte	0x15
	.byte	0x3c
	.byte	0xf
	.long	0x9a0
	.byte	0x10
	.uleb128 0x1
	.long	.LASF156
	.byte	0x15
	.byte	0x3d
	.byte	0x10
	.long	0x9aa
	.byte	0x18
	.uleb128 0x1
	.long	.LASF157
	.byte	0x15
	.byte	0x3e
	.byte	0x11
	.long	0x9af
	.byte	0x20
	.uleb128 0x1
	.long	.LASF158
	.byte	0x15
	.byte	0x3f
	.byte	0x11
	.long	0x9af
	.byte	0x28
	.uleb128 0x1
	.long	.LASF159
	.byte	0x15
	.byte	0x40
	.byte	0xb
	.long	0x701
	.byte	0x30
	.uleb128 0x1
	.long	.LASF160
	.byte	0x15
	.byte	0x41
	.byte	0xb
	.long	0x701
	.byte	0x34
	.uleb128 0x1
	.long	.LASF161
	.byte	0x15
	.byte	0x42
	.byte	0x11
	.long	0x280
	.byte	0x38
	.uleb128 0x1
	.long	.LASF162
	.byte	0x15
	.byte	0x43
	.byte	0x13
	.long	0x8dd
	.byte	0x48
	.uleb128 0x1
	.long	.LASF163
	.byte	0x15
	.byte	0x44
	.byte	0x1a
	.long	0x725
	.byte	0x60
	.uleb128 0x1
	.long	.LASF164
	.byte	0x15
	.byte	0x45
	.byte	0xc
	.long	0x4ea
	.byte	0xe0
	.uleb128 0x1
	.long	.LASF165
	.byte	0x15
	.byte	0x46
	.byte	0xa
	.long	0x6e9
	.byte	0xe4
	.byte	0
	.uleb128 0x5
	.long	0x8e9
	.uleb128 0x11
	.long	.LASF166
	.uleb128 0x5
	.long	0x9a5
	.uleb128 0x5
	.long	0x2e
	.uleb128 0x3
	.long	.LASF167
	.byte	0x15
	.byte	0x47
	.byte	0x3
	.long	0x8e9
	.uleb128 0x6
	.long	.LASF168
	.byte	0xf0
	.byte	0x15
	.byte	0x4d
	.byte	0x10
	.long	0x9e8
	.uleb128 0x1
	.long	.LASF169
	.byte	0x15
	.byte	0x4f
	.byte	0x9
	.long	0x9b4
	.byte	0
	.uleb128 0x1
	.long	.LASF170
	.byte	0x15
	.byte	0x50
	.byte	0x6
	.long	0x70
	.byte	0xe8
	.byte	0
	.uleb128 0x3
	.long	.LASF171
	.byte	0x15
	.byte	0x51
	.byte	0x3
	.long	0x9c0
	.uleb128 0x6
	.long	.LASF172
	.byte	0x10
	.byte	0x16
	.byte	0x1a
	.byte	0x10
	.long	0xa1c
	.uleb128 0x1
	.long	.LASF173
	.byte	0x16
	.byte	0x1b
	.byte	0x14
	.long	0xad3
	.byte	0
	.uleb128 0xd
	.string	"pin"
	.byte	0x16
	.byte	0x1c
	.byte	0x6
	.long	0x70
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.long	.LASF174
	.byte	0x80
	.byte	0x17
	.byte	0xb4
	.byte	0x8
	.long	0xad3
	.uleb128 0x1
	.long	.LASF175
	.byte	0x17
	.byte	0xb5
	.byte	0x10
	.long	0x10da
	.byte	0
	.uleb128 0x1
	.long	.LASF176
	.byte	0x17
	.byte	0xb7
	.byte	0xf
	.long	0x86e
	.byte	0x8
	.uleb128 0x1
	.long	.LASF177
	.byte	0x17
	.byte	0xb8
	.byte	0xc
	.long	0x10df
	.byte	0x30
	.uleb128 0x1
	.long	.LASF178
	.byte	0x17
	.byte	0xb9
	.byte	0xc
	.long	0x10df
	.byte	0x38
	.uleb128 0x1
	.long	.LASF179
	.byte	0x17
	.byte	0xba
	.byte	0x15
	.long	0x11fb
	.byte	0x40
	.uleb128 0x1
	.long	.LASF180
	.byte	0x17
	.byte	0xbb
	.byte	0x8
	.long	0x11e
	.byte	0x48
	.uleb128 0x1
	.long	.LASF140
	.byte	0x17
	.byte	0xbc
	.byte	0x8
	.long	0x11e
	.byte	0x50
	.uleb128 0x1
	.long	.LASF181
	.byte	0x17
	.byte	0xbd
	.byte	0x14
	.long	0x1322
	.byte	0x58
	.uleb128 0x1
	.long	.LASF182
	.byte	0x17
	.byte	0xbf
	.byte	0x10
	.long	0x1327
	.byte	0x60
	.uleb128 0x1
	.long	.LASF183
	.byte	0x17
	.byte	0xc0
	.byte	0xb
	.long	0x701
	.byte	0x68
	.uleb128 0x1
	.long	.LASF184
	.byte	0x17
	.byte	0xc1
	.byte	0x11
	.long	0x132c
	.byte	0x70
	.uleb128 0x1
	.long	.LASF185
	.byte	0x17
	.byte	0xc2
	.byte	0x6
	.long	0x70
	.byte	0x78
	.uleb128 0x1
	.long	.LASF186
	.byte	0x17
	.byte	0xc3
	.byte	0x9
	.long	0x80a
	.byte	0x7c
	.byte	0
	.uleb128 0x5
	.long	0xa1c
	.uleb128 0x3
	.long	.LASF187
	.byte	0x16
	.byte	0x1d
	.byte	0x3
	.long	0x9f4
	.uleb128 0x1b
	.long	.LASF188
	.value	0x110
	.byte	0x16
	.byte	0x1f
	.byte	0x10
	.long	0xb19
	.uleb128 0xd
	.string	"q"
	.byte	0x16
	.byte	0x21
	.byte	0xa
	.long	0x9e8
	.byte	0
	.uleb128 0x1
	.long	.LASF139
	.byte	0x16
	.byte	0x22
	.byte	0xb
	.long	0xad8
	.byte	0xf0
	.uleb128 0x1c
	.long	.LASF138
	.byte	0x16
	.byte	0x23
	.byte	0xb
	.long	0xad8
	.value	0x100
	.byte	0
	.uleb128 0x3
	.long	.LASF189
	.byte	0x16
	.byte	0x24
	.byte	0x2
	.long	0xae4
	.uleb128 0x12
	.long	.LASF338
	.long	0x3c
	.byte	0x18
	.byte	0x1b
	.byte	0xe
	.long	0xeae
	.uleb128 0x2
	.long	.LASF190
	.byte	0
	.uleb128 0x2
	.long	.LASF191
	.byte	0x1
	.uleb128 0x2
	.long	.LASF192
	.byte	0x2
	.uleb128 0x2
	.long	.LASF193
	.byte	0x3
	.uleb128 0x2
	.long	.LASF194
	.byte	0x4
	.uleb128 0x2
	.long	.LASF195
	.byte	0x5
	.uleb128 0x2
	.long	.LASF196
	.byte	0x6
	.uleb128 0x2
	.long	.LASF197
	.byte	0x7
	.uleb128 0x2
	.long	.LASF198
	.byte	0x8
	.uleb128 0x2
	.long	.LASF199
	.byte	0x9
	.uleb128 0x2
	.long	.LASF200
	.byte	0xa
	.uleb128 0x2
	.long	.LASF201
	.byte	0xb
	.uleb128 0x2
	.long	.LASF202
	.byte	0xc
	.uleb128 0x2
	.long	.LASF203
	.byte	0xd
	.uleb128 0x2
	.long	.LASF204
	.byte	0xe
	.uleb128 0x2
	.long	.LASF205
	.byte	0xf
	.uleb128 0x2
	.long	.LASF206
	.byte	0x10
	.uleb128 0x2
	.long	.LASF207
	.byte	0x11
	.uleb128 0x2
	.long	.LASF208
	.byte	0x12
	.uleb128 0x2
	.long	.LASF209
	.byte	0x13
	.uleb128 0x2
	.long	.LASF210
	.byte	0x14
	.uleb128 0x2
	.long	.LASF211
	.byte	0x15
	.uleb128 0x2
	.long	.LASF212
	.byte	0x16
	.uleb128 0x2
	.long	.LASF213
	.byte	0x17
	.uleb128 0x2
	.long	.LASF214
	.byte	0x18
	.uleb128 0x2
	.long	.LASF215
	.byte	0x19
	.uleb128 0x2
	.long	.LASF216
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF217
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF218
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF219
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF220
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF221
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF222
	.byte	0x20
	.uleb128 0x2
	.long	.LASF223
	.byte	0x21
	.uleb128 0x2
	.long	.LASF224
	.byte	0x22
	.uleb128 0x2
	.long	.LASF225
	.byte	0x23
	.uleb128 0x2
	.long	.LASF226
	.byte	0x24
	.uleb128 0x2
	.long	.LASF227
	.byte	0x25
	.uleb128 0x2
	.long	.LASF228
	.byte	0x26
	.uleb128 0x2
	.long	.LASF229
	.byte	0x27
	.uleb128 0x2
	.long	.LASF230
	.byte	0x28
	.uleb128 0x2
	.long	.LASF231
	.byte	0x29
	.uleb128 0x2
	.long	.LASF232
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF233
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF234
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF235
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF236
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF237
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF238
	.byte	0x30
	.uleb128 0x2
	.long	.LASF239
	.byte	0x31
	.uleb128 0x2
	.long	.LASF240
	.byte	0x32
	.uleb128 0x2
	.long	.LASF241
	.byte	0x33
	.uleb128 0x2
	.long	.LASF242
	.byte	0x34
	.uleb128 0x2
	.long	.LASF243
	.byte	0x35
	.uleb128 0x2
	.long	.LASF244
	.byte	0x36
	.uleb128 0x2
	.long	.LASF245
	.byte	0x37
	.uleb128 0x2
	.long	.LASF246
	.byte	0x38
	.uleb128 0x2
	.long	.LASF247
	.byte	0x39
	.uleb128 0x2
	.long	.LASF248
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF249
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF250
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF251
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF252
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF253
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF254
	.byte	0x40
	.uleb128 0x2
	.long	.LASF255
	.byte	0x41
	.uleb128 0x2
	.long	.LASF256
	.byte	0x42
	.uleb128 0x2
	.long	.LASF257
	.byte	0x43
	.uleb128 0x2
	.long	.LASF258
	.byte	0x44
	.uleb128 0x2
	.long	.LASF259
	.byte	0x45
	.uleb128 0x2
	.long	.LASF260
	.byte	0x46
	.uleb128 0x2
	.long	.LASF261
	.byte	0x47
	.uleb128 0x2
	.long	.LASF262
	.byte	0x48
	.uleb128 0x2
	.long	.LASF263
	.byte	0x49
	.uleb128 0x2
	.long	.LASF264
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF265
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF266
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF267
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF268
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF269
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF270
	.byte	0x50
	.uleb128 0x2
	.long	.LASF271
	.byte	0x51
	.uleb128 0x2
	.long	.LASF272
	.byte	0x52
	.uleb128 0x2
	.long	.LASF273
	.byte	0x53
	.uleb128 0x2
	.long	.LASF274
	.byte	0x54
	.uleb128 0x2
	.long	.LASF275
	.byte	0x55
	.uleb128 0x2
	.long	.LASF276
	.byte	0x56
	.uleb128 0x2
	.long	.LASF277
	.byte	0x57
	.uleb128 0x2
	.long	.LASF278
	.byte	0x58
	.uleb128 0x2
	.long	.LASF279
	.byte	0x59
	.uleb128 0x2
	.long	.LASF280
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF281
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF282
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF283
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF284
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF285
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF286
	.byte	0x60
	.uleb128 0x2
	.long	.LASF287
	.byte	0x61
	.uleb128 0x2
	.long	.LASF288
	.byte	0x62
	.uleb128 0x2
	.long	.LASF289
	.byte	0x63
	.uleb128 0x2
	.long	.LASF290
	.byte	0x64
	.uleb128 0x2
	.long	.LASF291
	.byte	0x65
	.uleb128 0x2
	.long	.LASF292
	.byte	0x66
	.uleb128 0x2
	.long	.LASF293
	.byte	0x67
	.uleb128 0x2
	.long	.LASF294
	.byte	0x68
	.uleb128 0x2
	.long	.LASF295
	.byte	0x69
	.uleb128 0x2
	.long	.LASF296
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF297
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF298
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF299
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF300
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF301
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF302
	.byte	0x70
	.uleb128 0x2
	.long	.LASF303
	.byte	0x71
	.uleb128 0x2
	.long	.LASF304
	.byte	0x72
	.uleb128 0x2
	.long	.LASF305
	.byte	0x73
	.uleb128 0x2
	.long	.LASF306
	.byte	0x74
	.uleb128 0x2
	.long	.LASF307
	.byte	0x75
	.uleb128 0x2
	.long	.LASF308
	.byte	0x76
	.uleb128 0x2
	.long	.LASF309
	.byte	0x77
	.uleb128 0x2
	.long	.LASF310
	.byte	0x78
	.uleb128 0x2
	.long	.LASF311
	.byte	0x79
	.uleb128 0x2
	.long	.LASF312
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF313
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF314
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF315
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF316
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF317
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF318
	.byte	0x80
	.uleb128 0x2
	.long	.LASF319
	.byte	0x81
	.uleb128 0x2
	.long	.LASF320
	.byte	0x82
	.uleb128 0x2
	.long	.LASF321
	.byte	0x83
	.uleb128 0x2
	.long	.LASF322
	.byte	0x84
	.uleb128 0x2
	.long	.LASF323
	.byte	0x85
	.uleb128 0x2
	.long	.LASF324
	.byte	0x86
	.uleb128 0x2
	.long	.LASF325
	.byte	0x87
	.uleb128 0x2
	.long	.LASF326
	.byte	0x88
	.uleb128 0x2
	.long	.LASF327
	.byte	0x89
	.uleb128 0x2
	.long	.LASF328
	.byte	0x8a
	.uleb128 0x2
	.long	.LASF329
	.byte	0x8b
	.uleb128 0x2
	.long	.LASF330
	.byte	0x8c
	.uleb128 0x2
	.long	.LASF331
	.byte	0x8d
	.uleb128 0x2
	.long	.LASF332
	.byte	0x8e
	.uleb128 0x2
	.long	.LASF333
	.byte	0x8f
	.uleb128 0x2
	.long	.LASF334
	.byte	0x90
	.uleb128 0x2
	.long	.LASF335
	.byte	0x91
	.uleb128 0x2
	.long	.LASF336
	.byte	0x92
	.uleb128 0x2
	.long	.LASF337
	.byte	0x93
	.byte	0
	.uleb128 0x3
	.long	.LASF338
	.byte	0x18
	.byte	0xb0
	.byte	0x3
	.long	0xb25
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.long	.LASF339
	.uleb128 0x8
	.byte	0x8
	.byte	0x4
	.long	.LASF340
	.uleb128 0x6
	.long	.LASF341
	.byte	0x28
	.byte	0x19
	.byte	0x2a
	.byte	0x10
	.long	0xf17
	.uleb128 0xd
	.string	"min"
	.byte	0x19
	.byte	0x2b
	.byte	0xb
	.long	0x70d
	.byte	0
	.uleb128 0xd
	.string	"max"
	.byte	0x19
	.byte	0x2c
	.byte	0xb
	.long	0x70d
	.byte	0x8
	.uleb128 0x1
	.long	.LASF342
	.byte	0x19
	.byte	0x2d
	.byte	0x9
	.long	0xec1
	.byte	0x10
	.uleb128 0x1
	.long	.LASF343
	.byte	0x19
	.byte	0x2e
	.byte	0x9
	.long	0xec1
	.byte	0x18
	.uleb128 0x1
	.long	.LASF344
	.byte	0x19
	.byte	0x2f
	.byte	0xb
	.long	0x70d
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.long	.LASF345
	.byte	0x19
	.byte	0x30
	.byte	0x3
	.long	0xec8
	.uleb128 0x3
	.long	.LASF346
	.byte	0x17
	.byte	0x32
	.byte	0x10
	.long	0xf2f
	.uleb128 0x5
	.long	0xf34
	.uleb128 0x13
	.long	0xf3f
	.uleb128 0x4
	.long	0xad3
	.byte	0
	.uleb128 0x3
	.long	.LASF347
	.byte	0x17
	.byte	0x38
	.byte	0xf
	.long	0xf4b
	.uleb128 0x5
	.long	0xf50
	.uleb128 0x10
	.long	0x70
	.long	0xf64
	.uleb128 0x4
	.long	0xad3
	.uleb128 0x4
	.long	0x11e
	.byte	0
	.uleb128 0x6
	.long	.LASF348
	.byte	0x10
	.byte	0x17
	.byte	0x40
	.byte	0x8
	.long	0xf8b
	.uleb128 0xd
	.string	"id"
	.byte	0x17
	.byte	0x41
	.byte	0xf
	.long	0x3c
	.byte	0
	.uleb128 0x1
	.long	.LASF349
	.byte	0x17
	.byte	0x42
	.byte	0x15
	.long	0xf3f
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	.LASF350
	.byte	0x17
	.byte	0x67
	.byte	0x20
	.long	0xf64
	.uleb128 0x12
	.long	.LASF351
	.long	0x3c
	.byte	0x17
	.byte	0x6c
	.byte	0x6
	.long	0xfc6
	.uleb128 0x2
	.long	.LASF352
	.byte	0
	.uleb128 0x2
	.long	.LASF353
	.byte	0x1
	.uleb128 0x2
	.long	.LASF354
	.byte	0x2
	.uleb128 0x2
	.long	.LASF355
	.byte	0x3
	.uleb128 0x2
	.long	.LASF356
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF357
	.byte	0x17
	.byte	0x84
	.byte	0x20
	.long	0xf97
	.uleb128 0x6
	.long	.LASF358
	.byte	0x30
	.byte	0x17
	.byte	0x96
	.byte	0x8
	.long	0xffa
	.uleb128 0x1
	.long	.LASF359
	.byte	0x17
	.byte	0x97
	.byte	0xe
	.long	0x4e0
	.byte	0
	.uleb128 0x1
	.long	.LASF360
	.byte	0x17
	.byte	0x98
	.byte	0xd
	.long	0xf17
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	.LASF361
	.byte	0x17
	.byte	0x9b
	.byte	0x1f
	.long	0xfd2
	.uleb128 0x6
	.long	.LASF362
	.byte	0x68
	.byte	0x17
	.byte	0x9d
	.byte	0x8
	.long	0x10c9
	.uleb128 0xd
	.string	"id"
	.byte	0x17
	.byte	0x9e
	.byte	0xd
	.long	0xeae
	.byte	0
	.uleb128 0x1
	.long	.LASF359
	.byte	0x17
	.byte	0x9f
	.byte	0xe
	.long	0x4e0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF363
	.byte	0x17
	.byte	0xa0
	.byte	0xe
	.long	0x4e0
	.byte	0x10
	.uleb128 0x1
	.long	.LASF364
	.byte	0x17
	.byte	0xa1
	.byte	0x13
	.long	0xfc6
	.byte	0x18
	.uleb128 0x1
	.long	.LASF365
	.byte	0x17
	.byte	0xa2
	.byte	0xe
	.long	0x4e0
	.byte	0x20
	.uleb128 0x1
	.long	.LASF366
	.byte	0x17
	.byte	0xa3
	.byte	0x6
	.long	0x70
	.byte	0x28
	.uleb128 0x1
	.long	.LASF367
	.byte	0x17
	.byte	0xa4
	.byte	0x6
	.long	0x70
	.byte	0x2c
	.uleb128 0x1
	.long	.LASF368
	.byte	0x17
	.byte	0xa5
	.byte	0xf
	.long	0xf23
	.byte	0x30
	.uleb128 0x1
	.long	.LASF369
	.byte	0x17
	.byte	0xa6
	.byte	0xf
	.long	0xf23
	.byte	0x38
	.uleb128 0x1
	.long	.LASF370
	.byte	0x17
	.byte	0xa7
	.byte	0xf
	.long	0xf23
	.byte	0x40
	.uleb128 0x1
	.long	.LASF371
	.byte	0x17
	.byte	0xa8
	.byte	0xf
	.long	0xf23
	.byte	0x48
	.uleb128 0x1
	.long	.LASF372
	.byte	0x17
	.byte	0xa9
	.byte	0xf
	.long	0xf23
	.byte	0x50
	.uleb128 0x1
	.long	.LASF373
	.byte	0x17
	.byte	0xaa
	.byte	0x12
	.long	0x10c9
	.byte	0x58
	.uleb128 0x1
	.long	.LASF374
	.byte	0x17
	.byte	0xab
	.byte	0xf
	.long	0x3c
	.byte	0x60
	.byte	0
	.uleb128 0x5
	.long	0xf8b
	.uleb128 0x3
	.long	.LASF375
	.byte	0x17
	.byte	0xb2
	.byte	0x1e
	.long	0x1006
	.uleb128 0x5
	.long	0x10ce
	.uleb128 0x5
	.long	0x10e4
	.uleb128 0x5
	.long	0xb19
	.uleb128 0x6
	.long	.LASF376
	.byte	0x90
	.byte	0x1a
	.byte	0x1c
	.byte	0x8
	.long	0x11fb
	.uleb128 0x1
	.long	.LASF377
	.byte	0x1a
	.byte	0x1d
	.byte	0x10
	.long	0x1327
	.byte	0
	.uleb128 0x1
	.long	.LASF378
	.byte	0x1a
	.byte	0x1e
	.byte	0x10
	.long	0x1327
	.byte	0x8
	.uleb128 0x1
	.long	.LASF379
	.byte	0x1a
	.byte	0x1f
	.byte	0x10
	.long	0x1327
	.byte	0x10
	.uleb128 0x1
	.long	.LASF380
	.byte	0x1a
	.byte	0x23
	.byte	0x10
	.long	0x1327
	.byte	0x18
	.uleb128 0x1
	.long	.LASF381
	.byte	0x1a
	.byte	0x24
	.byte	0x10
	.long	0x1327
	.byte	0x20
	.uleb128 0x1
	.long	.LASF382
	.byte	0x1a
	.byte	0x25
	.byte	0x8
	.long	0x149
	.byte	0x28
	.uleb128 0x1
	.long	.LASF383
	.byte	0x1a
	.byte	0x26
	.byte	0x21
	.long	0x1373
	.byte	0x30
	.uleb128 0x1
	.long	.LASF384
	.byte	0x1a
	.byte	0x27
	.byte	0x6
	.long	0x70
	.byte	0x38
	.uleb128 0xd
	.string	"evq"
	.byte	0x1a
	.byte	0x28
	.byte	0x18
	.long	0x137d
	.byte	0x40
	.uleb128 0x1
	.long	.LASF385
	.byte	0x1a
	.byte	0x29
	.byte	0x6
	.long	0x70
	.byte	0x48
	.uleb128 0xd
	.string	"mtu"
	.byte	0x1a
	.byte	0x2a
	.byte	0x6
	.long	0x70
	.byte	0x4c
	.uleb128 0x1
	.long	.LASF386
	.byte	0x1a
	.byte	0x2b
	.byte	0x1c
	.long	0x13b7
	.byte	0x50
	.uleb128 0x1
	.long	.LASF387
	.byte	0x1a
	.byte	0x2c
	.byte	0x1b
	.long	0x13c1
	.byte	0x58
	.uleb128 0x1
	.long	.LASF388
	.byte	0x1a
	.byte	0x2d
	.byte	0x9
	.long	0x13d1
	.byte	0x60
	.uleb128 0x1
	.long	.LASF389
	.byte	0x1a
	.byte	0x2e
	.byte	0x9
	.long	0x80a
	.byte	0x68
	.uleb128 0x1
	.long	.LASF390
	.byte	0x1a
	.byte	0x2f
	.byte	0x9
	.long	0x80a
	.byte	0x69
	.uleb128 0x1
	.long	.LASF391
	.byte	0x1a
	.byte	0x30
	.byte	0x11
	.long	0x13d6
	.byte	0x70
	.uleb128 0x1
	.long	.LASF392
	.byte	0x1a
	.byte	0x31
	.byte	0x8
	.long	0x149
	.byte	0x78
	.uleb128 0x1
	.long	.LASF393
	.byte	0x1a
	.byte	0x32
	.byte	0x8
	.long	0x149
	.byte	0x80
	.uleb128 0x1
	.long	.LASF394
	.byte	0x1a
	.byte	0x33
	.byte	0x6
	.long	0x70
	.byte	0x88
	.byte	0
	.uleb128 0x5
	.long	0x10e9
	.uleb128 0x1b
	.long	.LASF395
	.value	0x118
	.byte	0x1b
	.byte	0x49
	.byte	0x8
	.long	0x1322
	.uleb128 0x1
	.long	.LASF176
	.byte	0x1b
	.byte	0x4b
	.byte	0xf
	.long	0x86e
	.byte	0
	.uleb128 0x1
	.long	.LASF396
	.byte	0x1b
	.byte	0x4c
	.byte	0xe
	.long	0x87a
	.byte	0x28
	.uleb128 0x1
	.long	.LASF397
	.byte	0x1b
	.byte	0x4d
	.byte	0x10
	.long	0x1327
	.byte	0x58
	.uleb128 0x1
	.long	.LASF398
	.byte	0x1b
	.byte	0x4e
	.byte	0x10
	.long	0x1327
	.byte	0x60
	.uleb128 0x1
	.long	.LASF399
	.byte	0x1b
	.byte	0x4f
	.byte	0x10
	.long	0x862
	.byte	0x68
	.uleb128 0x1
	.long	.LASF400
	.byte	0x1b
	.byte	0x50
	.byte	0x6
	.long	0x70
	.byte	0x70
	.uleb128 0x1
	.long	.LASF401
	.byte	0x1b
	.byte	0x51
	.byte	0x6
	.long	0x70
	.byte	0x74
	.uleb128 0x1
	.long	.LASF402
	.byte	0x1b
	.byte	0x52
	.byte	0xb
	.long	0x701
	.byte	0x78
	.uleb128 0x1
	.long	.LASF403
	.byte	0x1b
	.byte	0x53
	.byte	0xb
	.long	0x70d
	.byte	0x80
	.uleb128 0x1
	.long	.LASF404
	.byte	0x1b
	.byte	0x54
	.byte	0xb
	.long	0x70d
	.byte	0x88
	.uleb128 0x1
	.long	.LASF405
	.byte	0x1b
	.byte	0x55
	.byte	0x13
	.long	0x184c
	.byte	0x90
	.uleb128 0x1
	.long	.LASF406
	.byte	0x1b
	.byte	0x56
	.byte	0x8
	.long	0x11e
	.byte	0x98
	.uleb128 0x1
	.long	.LASF407
	.byte	0x1b
	.byte	0x57
	.byte	0xf
	.long	0x86e
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF359
	.byte	0x1b
	.byte	0x58
	.byte	0x8
	.long	0x149
	.byte	0xc8
	.uleb128 0x1
	.long	.LASF408
	.byte	0x1b
	.byte	0x59
	.byte	0x9
	.long	0xec1
	.byte	0xd0
	.uleb128 0x1
	.long	.LASF409
	.byte	0x1b
	.byte	0x5a
	.byte	0xf
	.long	0x18b4
	.byte	0xd8
	.uleb128 0x1
	.long	.LASF410
	.byte	0x1b
	.byte	0x5b
	.byte	0x13
	.long	0x186c
	.byte	0xe0
	.uleb128 0x1
	.long	.LASF411
	.byte	0x1b
	.byte	0x5c
	.byte	0x8
	.long	0x11e
	.byte	0xe8
	.uleb128 0x1
	.long	.LASF412
	.byte	0x1b
	.byte	0x5d
	.byte	0x14
	.long	0x18f5
	.byte	0xf0
	.uleb128 0x1c
	.long	.LASF413
	.byte	0x1b
	.byte	0x5e
	.byte	0x10
	.long	0x43
	.value	0x108
	.uleb128 0x26
	.string	"run"
	.byte	0x1b
	.byte	0x5f
	.byte	0x9
	.long	0x80a
	.value	0x110
	.byte	0
	.uleb128 0x5
	.long	0x1200
	.uleb128 0x5
	.long	0x851
	.uleb128 0x5
	.long	0xffa
	.uleb128 0x3
	.long	.LASF414
	.byte	0x17
	.byte	0xcb
	.byte	0x1a
	.long	0xa1c
	.uleb128 0x5
	.long	0x1331
	.uleb128 0x5
	.long	0x85d
	.uleb128 0x6
	.long	.LASF415
	.byte	0x8
	.byte	0x1c
	.byte	0x3d
	.byte	0x8
	.long	0x1362
	.uleb128 0x1
	.long	.LASF416
	.byte	0x1c
	.byte	0x3e
	.byte	0x10
	.long	0x1327
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF415
	.byte	0x1c
	.byte	0x41
	.byte	0x1e
	.long	0x1347
	.uleb128 0x11
	.long	.LASF417
	.uleb128 0x5
	.long	0x136e
	.uleb128 0x11
	.long	.LASF418
	.uleb128 0x5
	.long	0x1378
	.uleb128 0x6
	.long	.LASF419
	.byte	0x18
	.byte	0x1d
	.byte	0x27
	.byte	0x8
	.long	0x13b7
	.uleb128 0x1
	.long	.LASF179
	.byte	0x1d
	.byte	0x28
	.byte	0xd
	.long	0x13e7
	.byte	0
	.uleb128 0x1
	.long	.LASF420
	.byte	0x1d
	.byte	0x29
	.byte	0x10
	.long	0x1327
	.byte	0x8
	.uleb128 0x1
	.long	.LASF421
	.byte	0x1d
	.byte	0x2a
	.byte	0x10
	.long	0x1327
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	0x1382
	.uleb128 0x11
	.long	.LASF422
	.uleb128 0x5
	.long	0x13bc
	.uleb128 0x13
	.long	0x13d1
	.uleb128 0x4
	.long	0x11fb
	.byte	0
	.uleb128 0x5
	.long	0x13c6
	.uleb128 0x5
	.long	0x1362
	.uleb128 0x3
	.long	.LASF423
	.byte	0x1a
	.byte	0x36
	.byte	0x1b
	.long	0x10e9
	.uleb128 0x5
	.long	0x13db
	.uleb128 0x3
	.long	.LASF424
	.byte	0x1d
	.byte	0x31
	.byte	0x22
	.long	0x1382
	.uleb128 0x12
	.long	.LASF425
	.long	0x3c
	.byte	0x1d
	.byte	0x33
	.byte	0x6
	.long	0x141b
	.uleb128 0x2
	.long	.LASF426
	.byte	0
	.uleb128 0x2
	.long	.LASF427
	.byte	0x1
	.uleb128 0x2
	.long	.LASF428
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF429
	.byte	0x1d
	.byte	0x3d
	.byte	0x22
	.long	0x13f8
	.uleb128 0x12
	.long	.LASF430
	.long	0x3c
	.byte	0x1d
	.byte	0x3f
	.byte	0x6
	.long	0x1444
	.uleb128 0x2
	.long	.LASF431
	.byte	0
	.uleb128 0x2
	.long	.LASF432
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF433
	.byte	0x1d
	.byte	0x48
	.byte	0x20
	.long	0x1427
	.uleb128 0x12
	.long	.LASF434
	.long	0x3c
	.byte	0x1d
	.byte	0x4a
	.byte	0x6
	.long	0x1473
	.uleb128 0x2
	.long	.LASF435
	.byte	0
	.uleb128 0x2
	.long	.LASF436
	.byte	0x1
	.uleb128 0x2
	.long	.LASF437
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF438
	.byte	0x1d
	.byte	0x54
	.byte	0x24
	.long	0x1450
	.uleb128 0x3
	.long	.LASF439
	.byte	0x1d
	.byte	0x58
	.byte	0x10
	.long	0x148b
	.uleb128 0x5
	.long	0x1490
	.uleb128 0x13
	.long	0x149b
	.uleb128 0x4
	.long	0x149b
	.byte	0
	.uleb128 0x5
	.long	0x13ec
	.uleb128 0x3
	.long	.LASF440
	.byte	0x1d
	.byte	0x59
	.byte	0x10
	.long	0x14ac
	.uleb128 0x5
	.long	0x14b1
	.uleb128 0x13
	.long	0x14bc
	.uleb128 0x4
	.long	0x14bc
	.byte	0
	.uleb128 0x5
	.long	0x14c1
	.uleb128 0x6
	.long	.LASF441
	.byte	0x40
	.byte	0x1d
	.byte	0x9c
	.byte	0x8
	.long	0x1543
	.uleb128 0x1
	.long	.LASF175
	.byte	0x1d
	.byte	0x9d
	.byte	0x11
	.long	0x17df
	.byte	0
	.uleb128 0x1
	.long	.LASF386
	.byte	0x1d
	.byte	0x9e
	.byte	0x14
	.long	0x149b
	.byte	0x8
	.uleb128 0x1
	.long	.LASF359
	.byte	0x1d
	.byte	0x9f
	.byte	0x8
	.long	0x149
	.byte	0x10
	.uleb128 0xd
	.string	"id"
	.byte	0x1d
	.byte	0xa0
	.byte	0x8
	.long	0x149
	.byte	0x18
	.uleb128 0x1
	.long	.LASF442
	.byte	0x1d
	.byte	0xa1
	.byte	0xf
	.long	0x3c
	.byte	0x20
	.uleb128 0x1
	.long	.LASF140
	.byte	0x1d
	.byte	0xa2
	.byte	0x8
	.long	0x11e
	.byte	0x28
	.uleb128 0x1
	.long	.LASF443
	.byte	0x1d
	.byte	0xa3
	.byte	0x6
	.long	0x70
	.byte	0x30
	.uleb128 0x1
	.long	.LASF444
	.byte	0x1d
	.byte	0xa4
	.byte	0x6
	.long	0x70
	.byte	0x34
	.uleb128 0x1
	.long	.LASF445
	.byte	0x1d
	.byte	0xa5
	.byte	0x16
	.long	0x17d3
	.byte	0x38
	.byte	0
	.uleb128 0x3
	.long	.LASF446
	.byte	0x1d
	.byte	0x5a
	.byte	0x10
	.long	0x14ac
	.uleb128 0x3
	.long	.LASF447
	.byte	0x1d
	.byte	0x5b
	.byte	0x10
	.long	0x155b
	.uleb128 0x5
	.long	0x1560
	.uleb128 0x13
	.long	0x1575
	.uleb128 0x4
	.long	0x14bc
	.uleb128 0x4
	.long	0x141b
	.uleb128 0x4
	.long	0x70
	.byte	0
	.uleb128 0x3
	.long	.LASF448
	.byte	0x1d
	.byte	0x5c
	.byte	0x10
	.long	0x1581
	.uleb128 0x5
	.long	0x1586
	.uleb128 0x13
	.long	0x1596
	.uleb128 0x4
	.long	0x14bc
	.uleb128 0x4
	.long	0x1444
	.byte	0
	.uleb128 0x3
	.long	.LASF449
	.byte	0x1d
	.byte	0x5d
	.byte	0xf
	.long	0x15a2
	.uleb128 0x5
	.long	0x15a7
	.uleb128 0x10
	.long	0x70
	.long	0x15bb
	.uleb128 0x4
	.long	0x14bc
	.uleb128 0x4
	.long	0x141b
	.byte	0
	.uleb128 0x3
	.long	.LASF450
	.byte	0x1d
	.byte	0x5e
	.byte	0xf
	.long	0x15c7
	.uleb128 0x5
	.long	0x15cc
	.uleb128 0x10
	.long	0x70
	.long	0x15e5
	.uleb128 0x4
	.long	0x14bc
	.uleb128 0x4
	.long	0x1473
	.uleb128 0x4
	.long	0x70
	.byte	0
	.uleb128 0x3
	.long	.LASF451
	.byte	0x1d
	.byte	0x5f
	.byte	0xf
	.long	0x15f1
	.uleb128 0x5
	.long	0x15f6
	.uleb128 0x10
	.long	0x70
	.long	0x160a
	.uleb128 0x4
	.long	0x14bc
	.uleb128 0x4
	.long	0x1473
	.byte	0
	.uleb128 0x3
	.long	.LASF452
	.byte	0x1d
	.byte	0x60
	.byte	0x1e
	.long	0x1616
	.uleb128 0x5
	.long	0x161b
	.uleb128 0x10
	.long	0xad3
	.long	0x162a
	.uleb128 0x4
	.long	0x14bc
	.byte	0
	.uleb128 0x3
	.long	.LASF453
	.byte	0x1d
	.byte	0x61
	.byte	0x1e
	.long	0x1616
	.uleb128 0x3
	.long	.LASF454
	.byte	0x1d
	.byte	0x62
	.byte	0x1f
	.long	0x1642
	.uleb128 0x5
	.long	0x1647
	.uleb128 0x10
	.long	0x14bc
	.long	0x1656
	.uleb128 0x4
	.long	0x14bc
	.byte	0
	.uleb128 0x3
	.long	.LASF455
	.byte	0x1d
	.byte	0x63
	.byte	0x10
	.long	0x1662
	.uleb128 0x5
	.long	0x1667
	.uleb128 0x13
	.long	0x1677
	.uleb128 0x4
	.long	0x14bc
	.uleb128 0x4
	.long	0x80a
	.byte	0
	.uleb128 0x3
	.long	.LASF456
	.byte	0x1d
	.byte	0x64
	.byte	0x10
	.long	0x148b
	.uleb128 0x3
	.long	.LASF457
	.byte	0x1d
	.byte	0x65
	.byte	0x10
	.long	0x1662
	.uleb128 0x3
	.long	.LASF458
	.byte	0x1d
	.byte	0x66
	.byte	0x10
	.long	0x1662
	.uleb128 0x3
	.long	.LASF459
	.byte	0x1d
	.byte	0x67
	.byte	0x10
	.long	0x14ac
	.uleb128 0x6
	.long	.LASF460
	.byte	0x88
	.byte	0x1d
	.byte	0x6a
	.byte	0x8
	.long	0x1792
	.uleb128 0x1
	.long	.LASF461
	.byte	0x1d
	.byte	0x6b
	.byte	0xe
	.long	0x4e0
	.byte	0
	.uleb128 0x1
	.long	.LASF462
	.byte	0x1d
	.byte	0x6c
	.byte	0x16
	.long	0x147f
	.byte	0x8
	.uleb128 0x1
	.long	.LASF368
	.byte	0x1d
	.byte	0x6d
	.byte	0x14
	.long	0x14a0
	.byte	0x10
	.uleb128 0x1
	.long	.LASF463
	.byte	0x1d
	.byte	0x6e
	.byte	0x18
	.long	0x154f
	.byte	0x18
	.uleb128 0x1
	.long	.LASF464
	.byte	0x1d
	.byte	0x6f
	.byte	0x18
	.long	0x1596
	.byte	0x20
	.uleb128 0x1
	.long	.LASF465
	.byte	0x1d
	.byte	0x70
	.byte	0x1a
	.long	0x1575
	.byte	0x28
	.uleb128 0x1
	.long	.LASF466
	.byte	0x1d
	.byte	0x71
	.byte	0x1a
	.long	0x15bb
	.byte	0x30
	.uleb128 0x1
	.long	.LASF467
	.byte	0x1d
	.byte	0x72
	.byte	0x1a
	.long	0x15e5
	.byte	0x38
	.uleb128 0x1
	.long	.LASF468
	.byte	0x1d
	.byte	0x73
	.byte	0x1c
	.long	0x160a
	.byte	0x40
	.uleb128 0x1
	.long	.LASF469
	.byte	0x1d
	.byte	0x74
	.byte	0x1c
	.long	0x162a
	.byte	0x48
	.uleb128 0x1
	.long	.LASF372
	.byte	0x1d
	.byte	0x75
	.byte	0x16
	.long	0x1543
	.byte	0x50
	.uleb128 0x1
	.long	.LASF470
	.byte	0x1d
	.byte	0x76
	.byte	0x19
	.long	0x1636
	.byte	0x58
	.uleb128 0x1
	.long	.LASF471
	.byte	0x1d
	.byte	0x77
	.byte	0x16
	.long	0x1677
	.byte	0x60
	.uleb128 0x1
	.long	.LASF472
	.byte	0x1d
	.byte	0x78
	.byte	0x1c
	.long	0x1656
	.byte	0x68
	.uleb128 0x1
	.long	.LASF473
	.byte	0x1d
	.byte	0x79
	.byte	0x1c
	.long	0x1683
	.byte	0x70
	.uleb128 0x1
	.long	.LASF474
	.byte	0x1d
	.byte	0x7a
	.byte	0x17
	.long	0x168f
	.byte	0x78
	.uleb128 0x1
	.long	.LASF475
	.byte	0x1d
	.byte	0x7b
	.byte	0x1a
	.long	0x169b
	.byte	0x80
	.byte	0
	.uleb128 0x3
	.long	.LASF476
	.byte	0x1d
	.byte	0x82
	.byte	0x1f
	.long	0x16a7
	.uleb128 0x3
	.long	.LASF477
	.byte	0x1d
	.byte	0x88
	.byte	0x1b
	.long	0x14c1
	.uleb128 0x12
	.long	.LASF478
	.long	0x3c
	.byte	0x1d
	.byte	0x8a
	.byte	0x6
	.long	0x17d3
	.uleb128 0x2
	.long	.LASF479
	.byte	0
	.uleb128 0x2
	.long	.LASF480
	.byte	0x1
	.uleb128 0x2
	.long	.LASF481
	.byte	0x2
	.uleb128 0x2
	.long	.LASF482
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.long	.LASF483
	.byte	0x1d
	.byte	0x94
	.byte	0x23
	.long	0x17aa
	.uleb128 0x5
	.long	0x1792
	.uleb128 0x6
	.long	.LASF484
	.byte	0x20
	.byte	0x1e
	.byte	0x27
	.byte	0x8
	.long	0x1840
	.uleb128 0x1
	.long	.LASF485
	.byte	0x1e
	.byte	0x28
	.byte	0x7
	.long	0x4d0
	.byte	0
	.uleb128 0x1
	.long	.LASF486
	.byte	0x1e
	.byte	0x29
	.byte	0x6
	.long	0x70
	.byte	0x8
	.uleb128 0x1
	.long	.LASF487
	.byte	0x1e
	.byte	0x2a
	.byte	0x6
	.long	0xf6
	.byte	0xc
	.uleb128 0x1
	.long	.LASF488
	.byte	0x1e
	.byte	0x2b
	.byte	0x8
	.long	0xeba
	.byte	0x14
	.uleb128 0x1
	.long	.LASF400
	.byte	0x1e
	.byte	0x2c
	.byte	0x6
	.long	0x70
	.byte	0x18
	.uleb128 0x1
	.long	.LASF489
	.byte	0x1e
	.byte	0x2d
	.byte	0x6
	.long	0x70
	.byte	0x1c
	.byte	0
	.uleb128 0x3
	.long	.LASF490
	.byte	0x1e
	.byte	0x30
	.byte	0x25
	.long	0x17e4
	.uleb128 0x3
	.long	.LASF491
	.byte	0x1b
	.byte	0x2d
	.byte	0x14
	.long	0x1858
	.uleb128 0x5
	.long	0x185d
	.uleb128 0x10
	.long	0x70d
	.long	0x186c
	.uleb128 0x4
	.long	0x11e
	.byte	0
	.uleb128 0x3
	.long	.LASF492
	.byte	0x1b
	.byte	0x34
	.byte	0xf
	.long	0x1878
	.uleb128 0x5
	.long	0x187d
	.uleb128 0x10
	.long	0x70
	.long	0x1891
	.uleb128 0x4
	.long	0x11e
	.uleb128 0x4
	.long	0x70d
	.byte	0
	.uleb128 0x12
	.long	.LASF493
	.long	0x3c
	.byte	0x1b
	.byte	0x39
	.byte	0x6
	.long	0x18b4
	.uleb128 0x2
	.long	.LASF494
	.byte	0
	.uleb128 0x2
	.long	.LASF495
	.byte	0x1
	.uleb128 0x2
	.long	.LASF496
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF497
	.byte	0x1b
	.byte	0x3f
	.byte	0x1c
	.long	0x1891
	.uleb128 0x6
	.long	.LASF498
	.byte	0x18
	.byte	0x1b
	.byte	0x41
	.byte	0x8
	.long	0x18f5
	.uleb128 0x1
	.long	.LASF499
	.byte	0x1b
	.byte	0x42
	.byte	0x6
	.long	0x70
	.byte	0
	.uleb128 0x1
	.long	.LASF403
	.byte	0x1b
	.byte	0x43
	.byte	0xb
	.long	0x70d
	.byte	0x8
	.uleb128 0x1
	.long	.LASF500
	.byte	0x1b
	.byte	0x44
	.byte	0x6
	.long	0x70
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.long	.LASF501
	.byte	0x1b
	.byte	0x47
	.byte	0x23
	.long	0x18c0
	.uleb128 0x3
	.long	.LASF502
	.byte	0x1b
	.byte	0x66
	.byte	0x1a
	.long	0x1200
	.uleb128 0x8
	.byte	0x10
	.byte	0x4
	.long	.LASF503
	.uleb128 0x27
	.long	.LASF566
	.byte	0x24
	.byte	0x3c
	.byte	0x15
	.long	0x10ce
	.uleb128 0x6
	.long	.LASF504
	.byte	0x60
	.byte	0x1
	.byte	0x14
	.byte	0x8
	.long	0x19bc
	.uleb128 0x1
	.long	.LASF505
	.byte	0x1
	.byte	0x16
	.byte	0x19
	.long	0x1840
	.byte	0
	.uleb128 0x1
	.long	.LASF506
	.byte	0x1
	.byte	0x17
	.byte	0xf
	.long	0x133d
	.byte	0x20
	.uleb128 0x1
	.long	.LASF507
	.byte	0x1
	.byte	0x18
	.byte	0xc
	.long	0x80a
	.byte	0x28
	.uleb128 0x1
	.long	.LASF508
	.byte	0x1
	.byte	0x19
	.byte	0xc
	.long	0x80a
	.byte	0x29
	.uleb128 0x1
	.long	.LASF509
	.byte	0x1
	.byte	0x1a
	.byte	0xc
	.long	0x80a
	.byte	0x2a
	.uleb128 0xd
	.string	"mf"
	.byte	0x1
	.byte	0x1b
	.byte	0x10
	.long	0x13e7
	.byte	0x30
	.uleb128 0xd
	.string	"scm"
	.byte	0x1
	.byte	0x1c
	.byte	0x14
	.long	0x149b
	.byte	0x38
	.uleb128 0x1
	.long	.LASF510
	.byte	0x1
	.byte	0x1d
	.byte	0xa
	.long	0x14e
	.byte	0x40
	.uleb128 0x1
	.long	.LASF420
	.byte	0x1
	.byte	0x1e
	.byte	0xf
	.long	0x19bc
	.byte	0x48
	.uleb128 0x1
	.long	.LASF511
	.byte	0x1
	.byte	0x1f
	.byte	0xb
	.long	0x149
	.byte	0x50
	.uleb128 0x1
	.long	.LASF512
	.byte	0x1
	.byte	0x20
	.byte	0xb
	.long	0x149
	.byte	0x58
	.byte	0
	.uleb128 0x5
	.long	0x4e0
	.uleb128 0x3
	.long	.LASF513
	.byte	0x1
	.byte	0x23
	.byte	0x1a
	.long	0x1920
	.uleb128 0x1d
	.long	.LASF519
	.byte	0x21
	.value	0x1ca
	.long	0x19df
	.uleb128 0x4
	.long	0x70d
	.byte	0
	.uleb128 0x28
	.long	.LASF517
	.byte	0x20
	.value	0x208
	.byte	0xc
	.long	0x70
	.uleb128 0xe
	.long	.LASF514
	.byte	0x1f
	.byte	0x90
	.byte	0xe
	.long	0x149
	.long	0x1a0c
	.uleb128 0x4
	.long	0x149
	.uleb128 0x4
	.long	0x4e0
	.uleb128 0x4
	.long	0x26f
	.byte	0
	.uleb128 0xe
	.long	.LASF515
	.byte	0x1b
	.byte	0xaa
	.byte	0x6
	.long	0x70
	.long	0x1a27
	.uleb128 0x4
	.long	0x1a27
	.uleb128 0x4
	.long	0x133d
	.byte	0
	.uleb128 0x5
	.long	0x1901
	.uleb128 0xc
	.long	.LASF516
	.byte	0x17
	.value	0x188
	.byte	0x6
	.long	0x70
	.long	0x1a52
	.uleb128 0x4
	.long	0x133d
	.uleb128 0x4
	.long	0x70
	.uleb128 0x4
	.long	0x133d
	.uleb128 0x4
	.long	0x70
	.byte	0
	.uleb128 0x1e
	.long	.LASF518
	.byte	0x1b
	.byte	0x8c
	.byte	0xc
	.long	0x1a27
	.uleb128 0x29
	.long	.LASF520
	.byte	0x1a
	.byte	0x74
	.byte	0x7
	.long	0x1a75
	.uleb128 0x4
	.long	0x13e7
	.uleb128 0x4
	.long	0x10da
	.byte	0
	.uleb128 0xe
	.long	.LASF521
	.byte	0x1a
	.byte	0xf1
	.byte	0xc
	.long	0x133d
	.long	0x1a90
	.uleb128 0x4
	.long	0x13e7
	.uleb128 0x4
	.long	0xeae
	.byte	0
	.uleb128 0xc
	.long	.LASF522
	.byte	0x1d
	.value	0x15c
	.byte	0x15
	.long	0xad3
	.long	0x1aa7
	.uleb128 0x4
	.long	0x1aa7
	.byte	0
	.uleb128 0x5
	.long	0x179e
	.uleb128 0xc
	.long	.LASF523
	.byte	0x1d
	.value	0x153
	.byte	0x15
	.long	0xad3
	.long	0x1ac3
	.uleb128 0x4
	.long	0x1aa7
	.byte	0
	.uleb128 0xe
	.long	.LASF524
	.byte	0x1d
	.byte	0xd6
	.byte	0xe
	.long	0x1aa7
	.long	0x1ade
	.uleb128 0x4
	.long	0x149b
	.uleb128 0x4
	.long	0x4e0
	.byte	0
	.uleb128 0x1d
	.long	.LASF525
	.byte	0x1a
	.value	0x146
	.long	0x1af0
	.uleb128 0x4
	.long	0x13e7
	.byte	0
	.uleb128 0x1e
	.long	.LASF526
	.byte	0x1a
	.byte	0x47
	.byte	0xd
	.long	0x13e7
	.uleb128 0xc
	.long	.LASF527
	.byte	0x1d
	.value	0x19e
	.byte	0xe
	.long	0x4e0
	.long	0x1b13
	.uleb128 0x4
	.long	0x1aa7
	.byte	0
	.uleb128 0xc
	.long	.LASF528
	.byte	0x14
	.value	0x12b
	.byte	0x8
	.long	0x11e
	.long	0x1b2a
	.uleb128 0x4
	.long	0x26f
	.byte	0
	.uleb128 0xe
	.long	.LASF529
	.byte	0x13
	.byte	0x35
	.byte	0x9
	.long	0x26f
	.long	0x1b40
	.uleb128 0x4
	.long	0x1342
	.byte	0
	.uleb128 0xc
	.long	.LASF530
	.byte	0x1d
	.value	0x10e
	.byte	0x17
	.long	0x1342
	.long	0x1b57
	.uleb128 0x4
	.long	0x149b
	.byte	0
	.uleb128 0xe
	.long	.LASF531
	.byte	0x1a
	.byte	0x69
	.byte	0x1c
	.long	0x13b7
	.long	0x1b6d
	.uleb128 0x4
	.long	0x13e7
	.byte	0
	.uleb128 0xc
	.long	.LASF532
	.byte	0x17
	.value	0x19f
	.byte	0x6
	.long	0x70
	.long	0x1b8e
	.uleb128 0x4
	.long	0x133d
	.uleb128 0x4
	.long	0x3c
	.uleb128 0x4
	.long	0x11e
	.byte	0
	.uleb128 0xe
	.long	.LASF533
	.byte	0x20
	.byte	0xb2
	.byte	0xc
	.long	0x70
	.long	0x1ba4
	.uleb128 0x4
	.long	0x6df
	.byte	0
	.uleb128 0xc
	.long	.LASF534
	.byte	0x20
	.value	0x2a3
	.byte	0xf
	.long	0x26f
	.long	0x1bca
	.uleb128 0x4
	.long	0x120
	.uleb128 0x4
	.long	0x26f
	.uleb128 0x4
	.long	0x26f
	.uleb128 0x4
	.long	0x6e4
	.byte	0
	.uleb128 0xc
	.long	.LASF535
	.byte	0x20
	.value	0x102
	.byte	0xe
	.long	0x6df
	.long	0x1be6
	.uleb128 0x4
	.long	0x4e5
	.uleb128 0x4
	.long	0x4e5
	.byte	0
	.uleb128 0xc
	.long	.LASF536
	.byte	0x14
	.value	0x12e
	.byte	0x8
	.long	0x11e
	.long	0x1bfd
	.uleb128 0x4
	.long	0x26f
	.byte	0
	.uleb128 0xe
	.long	.LASF31
	.byte	0x22
	.byte	0xcd
	.byte	0xc
	.long	0x70
	.long	0x1c18
	.uleb128 0x4
	.long	0x4e5
	.uleb128 0x4
	.long	0x1c1d
	.byte	0
	.uleb128 0x5
	.long	0x18e
	.uleb128 0x16
	.long	0x1c18
	.uleb128 0xe
	.long	.LASF537
	.byte	0x23
	.byte	0x69
	.byte	0xc
	.long	0x70
	.long	0x1c38
	.uleb128 0x4
	.long	0x4e0
	.byte	0
	.uleb128 0xc
	.long	.LASF538
	.byte	0x14
	.value	0x12f
	.byte	0x9
	.long	0x149
	.long	0x1c4f
	.uleb128 0x4
	.long	0x4e0
	.byte	0
	.uleb128 0x2a
	.long	.LASF539
	.byte	0x23
	.value	0x270
	.byte	0xd
	.long	0x1c62
	.uleb128 0x4
	.long	0x70
	.byte	0
	.uleb128 0xc
	.long	.LASF540
	.byte	0x20
	.value	0x164
	.byte	0xc
	.long	0x70
	.long	0x1c7a
	.uleb128 0x4
	.long	0x4e0
	.uleb128 0x2b
	.byte	0
	.uleb128 0xe
	.long	.LASF541
	.byte	0x1f
	.byte	0x9c
	.byte	0xc
	.long	0x70
	.long	0x1c95
	.uleb128 0x4
	.long	0x4e0
	.uleb128 0x4
	.long	0x4e0
	.byte	0
	.uleb128 0x1f
	.long	.LASF557
	.byte	0xab
	.byte	0x5
	.long	0x70
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d9b
	.uleb128 0x14
	.long	.LASF542
	.byte	0xab
	.byte	0xe
	.long	0x70
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x14
	.long	.LASF543
	.byte	0xab
	.byte	0x1a
	.long	0x4f7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x7
	.long	.LASF544
	.byte	0xae
	.byte	0xe
	.long	0x19c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x7
	.long	.LASF545
	.byte	0xbb
	.byte	0x10
	.long	0x1aa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x7
	.long	.LASF546
	.byte	0xbe
	.byte	0xf
	.long	0x133d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x7
	.long	.LASF547
	.byte	0xbf
	.byte	0xf
	.long	0x133d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x7
	.long	.LASF548
	.byte	0xc1
	.byte	0xf
	.long	0x133d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x7
	.long	.LASF549
	.byte	0xc2
	.byte	0xf
	.long	0x133d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x7
	.long	.LASF550
	.byte	0xc7
	.byte	0xf
	.long	0x133d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x7
	.long	.LASF506
	.byte	0xca
	.byte	0xf
	.long	0x133d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0xf
	.string	"tee"
	.byte	0xcd
	.byte	0xf
	.long	0x133d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x7
	.long	.LASF181
	.byte	0xd0
	.byte	0xf
	.long	0x1a27
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2c
	.string	"c"
	.byte	0x1
	.value	0x110
	.byte	0xa
	.long	0x14e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -209
	.uleb128 0x20
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x7
	.long	.LASF551
	.byte	0xf6
	.byte	0xf
	.long	0x149
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	.LASF554
	.byte	0x9a
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ded
	.uleb128 0x17
	.string	"v"
	.byte	0x9a
	.byte	0x2f
	.long	0x1ded
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x7
	.long	.LASF552
	.byte	0x9c
	.byte	0x9
	.long	0x26f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.string	"i"
	.byte	0x9d
	.byte	0x6
	.long	0x70
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x7
	.long	.LASF553
	.byte	0x9e
	.byte	0x16
	.long	0x1342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x5
	.long	0x19c1
	.uleb128 0x19
	.long	.LASF555
	.byte	0x88
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e37
	.uleb128 0x17
	.string	"v"
	.byte	0x88
	.byte	0x2d
	.long	0x1ded
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.long	.LASF173
	.byte	0x88
	.byte	0x3a
	.long	0x133d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.string	"buf"
	.byte	0x8c
	.byte	0xb
	.long	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x19
	.long	.LASF556
	.byte	0x76
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e7c
	.uleb128 0x17
	.string	"v"
	.byte	0x76
	.byte	0x28
	.long	0x1ded
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.long	.LASF173
	.byte	0x76
	.byte	0x35
	.long	0x133d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.string	"buf"
	.byte	0x7a
	.byte	0xb
	.long	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1f
	.long	.LASF558
	.byte	0x5f
	.byte	0x7
	.long	0x149
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f05
	.uleb128 0x14
	.long	.LASF559
	.byte	0x5f
	.byte	0x16
	.long	0x149
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x7
	.long	.LASF560
	.byte	0x60
	.byte	0x11
	.long	0x18e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0xf
	.string	"res"
	.byte	0x64
	.byte	0xb
	.long	0x149
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x7
	.long	.LASF561
	.byte	0x65
	.byte	0x12
	.long	0x27b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0xf
	.string	"buf"
	.byte	0x66
	.byte	0xb
	.long	0x149
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0xf
	.string	"f"
	.byte	0x67
	.byte	0xb
	.long	0x6df
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x7
	.long	.LASF562
	.byte	0x68
	.byte	0xc
	.long	0x26f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.byte	0
	.uleb128 0x2d
	.long	.LASF567
	.byte	0x1
	.byte	0x29
	.byte	0x6
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.long	.LASF542
	.byte	0x29
	.byte	0x14
	.long	0x70
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.long	.LASF543
	.byte	0x29
	.byte	0x20
	.long	0x4f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"v"
	.byte	0x29
	.byte	0x32
	.long	0x1ded
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xf
	.string	"i"
	.byte	0x2b
	.byte	0x9
	.long	0x70
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x1f75
	.uleb128 0xf
	.string	"p"
	.byte	0x30
	.byte	0x13
	.long	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x20
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x7
	.long	.LASF563
	.byte	0x50
	.byte	0x11
	.long	0x70
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0x21
	.sleb128 7
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF248:
	.string	"MS_DSCAP_ID"
.LASF432:
	.string	"MS_SND_CARD_LINE"
.LASF80:
	.string	"__align"
.LASF52:
	.string	"__value64"
.LASF114:
	.string	"_unused2"
.LASF100:
	.string	"_fileno"
.LASF60:
	.string	"__pthread_mutex_s"
.LASF515:
	.string	"ms_ticker_attach"
.LASF408:
	.string	"av_load"
.LASF302:
	.string	"MS_AAC_ELD_ENC_ID"
.LASF227:
	.string	"MS_MPEG4_ENC_ID"
.LASF300:
	.string	"MS_GENERIC_PLC_ID"
.LASF467:
	.string	"get_control"
.LASF282:
	.string	"MS_G726_24_ENC_ID"
.LASF251:
	.string	"MS_EQUALIZER_ID"
.LASF496:
	.string	"MS_TICKER_PRIO_REALTIME"
.LASF196:
	.string	"MS_OSS_WRITE_ID"
.LASF8:
	.string	"__uint8_t"
.LASF382:
	.string	"plugins_dir"
.LASF477:
	.string	"MSSndCard"
.LASF262:
	.string	"MS_H264_DEC_ID"
.LASF294:
	.string	"MS_AAL2_G726_24_DEC_ID"
.LASF405:
	.string	"get_cur_time_ptr"
.LASF393:
	.string	"echo_canceller_filtername"
.LASF105:
	.string	"_shortbuf"
.LASF123:
	.string	"sa_family_t"
.LASF159:
	.string	"reserved1"
.LASF160:
	.string	"reserved2"
.LASF409:
	.string	"prio"
.LASF188:
	.string	"_MSQueue"
.LASF185:
	.string	"postponed_task"
.LASF465:
	.string	"set_capture"
.LASF481:
	.string	"MS_SND_CARD_STREAM_MEDIA"
.LASF511:
	.string	"script_preambula_name"
.LASF389:
	.string	"statistics_enabled"
.LASF283:
	.string	"MS_G726_16_ENC_ID"
.LASF287:
	.string	"MS_AAL2_G726_16_ENC_ID"
.LASF120:
	.string	"uint16_t"
.LASF483:
	.string	"MSSndCardStreamType"
.LASF86:
	.string	"_flags"
.LASF138:
	.string	"next"
.LASF163:
	.string	"net_addr"
.LASF450:
	.string	"MSSndCardSetControlFunc"
.LASF295:
	.string	"MS_AAL2_G726_16_DEC_ID"
.LASF19:
	.string	"__off_t"
.LASF428:
	.string	"MS_SND_CARD_CAPTURE"
.LASF479:
	.string	"MS_SND_CARD_STREAM_VOICE"
.LASF305:
	.string	"MS_OPUS_DEC_ID"
.LASF40:
	.string	"st_size"
.LASF320:
	.string	"MS_MEDIACODEC_H264_ENC_ID"
.LASF494:
	.string	"MS_TICKER_PRIO_NORMAL"
.LASF106:
	.string	"_lock"
.LASF324:
	.string	"MS_PCAP_FILE_PLAYER_ID"
.LASF274:
	.string	"MY_FILTER_ID"
.LASF564:
	.string	"GNU C17 11.3.0 -mms-bitfields -mtune=generic -march=x86-64 -ggdb -ggdb -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF392:
	.string	"image_resources_dir"
.LASF553:
	.string	"elem"
.LASF171:
	.string	"queue_t"
.LASF537:
	.string	"atoi"
.LASF507:
	.string	"file_is_open"
.LASF313:
	.string	"MS_VT_H263_ENC_ID"
.LASF272:
	.string	"MS_ANDROID_VIDEO_WRITE_ID"
.LASF263:
	.string	"MS_IOUNIT_READ_ID"
.LASF77:
	.string	"pthread_t"
.LASF566:
	.string	"lua_filter_desc"
.LASF332:
	.string	"MS_MEDIACODEC_H265_ENC_ID"
.LASF41:
	.string	"st_blksize"
.LASF172:
	.string	"_MSCPoint"
.LASF237:
	.string	"MS_CA_WRITE_ID"
.LASF347:
	.string	"MSFilterMethodFunc"
.LASF561:
	.string	"file_size"
.LASF239:
	.string	"MS_WINSNDDS_WRITE_ID"
.LASF492:
	.string	"MSTickerTickFunc"
.LASF231:
	.string	"MS_RESAMPLE_ID"
.LASF493:
	.string	"_MSTickerPrio"
.LASF315:
	.string	"MS_VT_H264_ENC_ID"
.LASF267:
	.string	"MS_JPEG_WRITER_ID"
.LASF37:
	.string	"st_gid"
.LASF164:
	.string	"net_addrlen"
.LASF306:
	.string	"MS_QSA_READ_ID"
.LASF25:
	.string	"__syscall_slong_t"
.LASF454:
	.string	"MSSndCardDuplicateFunc"
.LASF395:
	.string	"_MSTicker"
.LASF92:
	.string	"_IO_write_end"
.LASF34:
	.string	"st_nlink"
.LASF63:
	.string	"__owner"
.LASF130:
	.string	"s_addr"
.LASF310:
	.string	"MS_VAD_DTX_ID"
.LASF266:
	.string	"MS_ANDROID_SOUND_WRITE_ID"
.LASF468:
	.string	"create_reader"
.LASF334:
	.string	"MS_VT_H265_ENC_ID"
.LASF145:
	.string	"ipi_addr"
.LASF416:
	.string	"sound_devices_descriptions"
.LASF362:
	.string	"_MSFilterDesc"
.LASF45:
	.string	"st_ctim"
.LASF406:
	.string	"get_cur_time_data"
.LASF238:
	.string	"MS_WINSNDDS_READ_ID"
.LASF487:
	.string	"frequencies"
.LASF567:
	.string	"scan_args"
.LASF563:
	.string	"freq"
.LASF360:
	.string	"bp_elapsed"
.LASF187:
	.string	"MSCPoint"
.LASF372:
	.string	"uninit"
.LASF175:
	.string	"desc"
.LASF61:
	.string	"__lock"
.LASF59:
	.string	"__pthread_list_t"
.LASF534:
	.string	"fread"
.LASF456:
	.string	"MSSndCardUnloadFunc"
.LASF444:
	.string	"latency"
.LASF435:
	.string	"MS_SND_CARD_MASTER_MUTE"
.LASF366:
	.string	"ninputs"
.LASF43:
	.string	"st_atim"
.LASF502:
	.string	"MSTicker"
.LASF550:
	.string	"lua_filter"
.LASF417:
	.string	"_MSVideoPresetsManager"
.LASF546:
	.string	"snd_card_read"
.LASF399:
	.string	"thread"
.LASF167:
	.string	"mblk_t"
.LASF419:
	.string	"_MSSndCardManager"
.LASF532:
	.string	"ms_filter_call_method"
.LASF303:
	.string	"MS_AAC_ELD_DEC_ID"
.LASF14:
	.string	"__uid_t"
.LASF228:
	.string	"MS_MPEG4_DEC_ID"
.LASF548:
	.string	"voidsource"
.LASF342:
	.string	"mean"
.LASF9:
	.string	"__uint16_t"
.LASF143:
	.string	"ortp_mutex_t"
.LASF277:
	.string	"MS_VP8_DEC_ID"
.LASF355:
	.string	"MS_FILTER_ENCODING_CAPTURER"
.LASF244:
	.string	"MS_MIRE_ID"
.LASF562:
	.string	"read_res"
.LASF268:
	.string	"MS_QRCODE_READER_ID"
.LASF299:
	.string	"MS_GLXVIDEO_ID"
.LASF78:
	.string	"__data"
.LASF180:
	.string	"padding"
.LASF411:
	.string	"wait_next_tick_data"
.LASF99:
	.string	"_chain"
.LASF439:
	.string	"MSSndCardDetectFunc"
.LASF250:
	.string	"MS_AQ_WRITE_ID"
.LASF158:
	.string	"b_wptr"
.LASF199:
	.string	"MS_ALAW_ENC_ID"
.LASF2:
	.string	"unsigned char"
.LASF361:
	.string	"MSFilterStats"
.LASF442:
	.string	"capabilities"
.LASF156:
	.string	"b_datap"
.LASF81:
	.string	"pthread_mutex_t"
.LASF24:
	.string	"__blkcnt_t"
.LASF565:
	.string	"_IO_lock_t"
.LASF339:
	.string	"float"
.LASF240:
	.string	"MS_STATIC_IMAGE_ID"
.LASF336:
	.string	"MS_ANDROID_OPENGL_DISPLAY_ID"
.LASF291:
	.string	"MS_G726_16_DEC_ID"
.LASF521:
	.string	"ms_factory_create_filter"
.LASF459:
	.string	"MSSndCardAudioRouteFunc"
.LASF341:
	.string	"_MSUBoxPlot"
.LASF508:
	.string	"en_gen"
.LASF556:
	.string	"load_script_body"
.LASF269:
	.string	"MS_X11VIDEO_ID"
.LASF370:
	.string	"process"
.LASF482:
	.string	"MS_SND_CARD_STREAM_DTMF"
.LASF484:
	.string	"_MSDtmfGenCustomTone"
.LASF204:
	.string	"MS_FILE_REC_ID"
.LASF65:
	.string	"__kind"
.LASF470:
	.string	"duplicate"
.LASF122:
	.string	"uint64_t"
.LASF17:
	.string	"__mode_t"
.LASF319:
	.string	"MS_MEDIACODEC_H264_DEC_ID"
.LASF220:
	.string	"MS_TEE_ID"
.LASF368:
	.string	"init"
.LASF49:
	.string	"tv_usec"
.LASF74:
	.string	"__g1_orig_size"
.LASF314:
	.string	"MS_VT_H263_DEC_ID"
.LASF486:
	.string	"duration"
.LASF462:
	.string	"detect"
.LASF195:
	.string	"MS_OSS_READ_ID"
.LASF331:
	.string	"MS_MEDIACODEC_H265_DEC_ID"
.LASF385:
	.string	"max_payload_size"
.LASF210:
	.string	"MS_V4L_ID"
.LASF91:
	.string	"_IO_write_ptr"
.LASF555:
	.string	"load_script_preambula"
.LASF216:
	.string	"MS_WINSND_READ_ID"
.LASF514:
	.string	"strncpy"
.LASF22:
	.string	"__suseconds_t"
.LASF316:
	.string	"MS_VT_H264_DEC_ID"
.LASF539:
	.string	"exit"
.LASF504:
	.string	"_app_vars"
.LASF189:
	.string	"MSQueue"
.LASF373:
	.string	"methods"
.LASF323:
	.string	"MS_UDP_SEND_ID"
.LASF127:
	.string	"__ss_align"
.LASF523:
	.string	"ms_snd_card_create_reader"
.LASF79:
	.string	"__size"
.LASF169:
	.string	"_q_stopper"
.LASF461:
	.string	"driver_type"
.LASF115:
	.string	"FILE"
.LASF245:
	.string	"MS_VFW_ID"
.LASF473:
	.string	"audio_session_activated"
.LASF367:
	.string	"noutputs"
.LASF333:
	.string	"MS_VT_H265_DEC_ID"
.LASF420:
	.string	"cards"
.LASF72:
	.string	"__g_refs"
.LASF47:
	.string	"size_t"
.LASF62:
	.string	"__count"
.LASF119:
	.string	"uint8_t"
.LASF337:
	.string	"MS_ANDROID_TEXTURE_DISPLAY_ID"
.LASF547:
	.string	"snd_card_write"
.LASF449:
	.string	"MSSndCardGetLevelFunc"
.LASF451:
	.string	"MSSndCardGetControlFunc"
.LASF513:
	.string	"app_vars"
.LASF95:
	.string	"_IO_save_base"
.LASF149:
	.string	"addr"
.LASF183:
	.string	"last_tick"
.LASF84:
	.string	"socklen_t"
.LASF249:
	.string	"MS_AQ_READ_ID"
.LASF75:
	.string	"__wrefs"
.LASF346:
	.string	"MSFilterFunc"
.LASF191:
	.string	"MS_FILTER_PLUGIN_ID"
.LASF151:
	.string	"ortp_recv_addr_t"
.LASF401:
	.string	"exec_id"
.LASF225:
	.string	"MS_PASND_READ_ID"
.LASF125:
	.string	"ss_family"
.LASF327:
	.string	"MS_G729_ENC_ID"
.LASF194:
	.string	"MS_ALSA_WRITE_ID"
.LASF155:
	.string	"b_cont"
.LASF363:
	.string	"text"
.LASF524:
	.string	"ms_snd_card_manager_get_card"
.LASF109:
	.string	"_wide_data"
.LASF233:
	.string	"MS_VOLUME_ID"
.LASF142:
	.string	"ortp_thread_t"
.LASF18:
	.string	"__nlink_t"
.LASF33:
	.string	"st_ino"
.LASF440:
	.string	"MSSndCardInitFunc"
.LASF35:
	.string	"st_mode"
.LASF135:
	.string	"__in6_u"
.LASF527:
	.string	"ms_snd_card_get_string_id"
.LASF56:
	.string	"__pthread_internal_list"
.LASF162:
	.string	"recv_addr"
.LASF365:
	.string	"enc_fmt"
.LASF384:
	.string	"cpu_count"
.LASF57:
	.string	"__prev"
.LASF271:
	.string	"MS_ANDROID_VIDEO_READ_ID"
.LASF304:
	.string	"MS_OPUS_ENC_ID"
.LASF161:
	.string	"timestamp"
.LASF264:
	.string	"MS_IOUNIT_WRITE_ID"
.LASF241:
	.string	"MS_V4L2_CAPTURE_ID"
.LASF309:
	.string	"MS_MKV_PLAYER_ID"
.LASF182:
	.string	"notify_callbacks"
.LASF12:
	.string	"__uint64_t"
.LASF386:
	.string	"sndcardmanager"
.LASF505:
	.string	"dtmf_cfg"
.LASF270:
	.string	"MS_ANDROID_DISPLAY_ID"
.LASF257:
	.string	"MS_CHANNEL_ADAPTER_ID"
.LASF200:
	.string	"MS_ALAW_DEC_ID"
.LASF27:
	.string	"__socklen_t"
.LASF489:
	.string	"repeat_count"
.LASF506:
	.string	"recorder"
.LASF357:
	.string	"MSFilterCategory"
.LASF533:
	.string	"fclose"
.LASF30:
	.string	"timespec"
.LASF131:
	.string	"__u6_addr8"
.LASF276:
	.string	"MS_VP8_ENC_ID"
.LASF260:
	.string	"MS_ITC_SOURCE_ID"
.LASF549:
	.string	"dtmfgen"
.LASF134:
	.string	"in6_addr"
.LASF168:
	.string	"_queue"
.LASF446:
	.string	"MSSndCardUninitFunc"
.LASF500:
	.string	"current_late_ms"
.LASF83:
	.string	"pthread_cond_t"
.LASF464:
	.string	"get_level"
.LASF426:
	.string	"MS_SND_CARD_MASTER"
.LASF36:
	.string	"st_uid"
.LASF545:
	.string	"snd_card"
.LASF325:
	.string	"MS_OGL_ID"
.LASF190:
	.string	"MS_FILTER_NOT_SET_ID"
.LASF280:
	.string	"MS_G726_40_ENC_ID"
.LASF558:
	.string	"get_file"
.LASF359:
	.string	"name"
.LASF213:
	.string	"MS_H263_DEC_ID"
.LASF438:
	.string	"MSSndCardControlElem"
.LASF97:
	.string	"_IO_save_end"
.LASF58:
	.string	"__next"
.LASF463:
	.string	"set_level"
.LASF292:
	.string	"MS_AAL2_G726_40_DEC_ID"
.LASF55:
	.string	"__atomic_wide_counter"
.LASF510:
	.string	"cards_count"
.LASF322:
	.string	"MS_BV16_ENC_ID"
.LASF21:
	.string	"__time_t"
.LASF443:
	.string	"preferred_sample_rate"
.LASF201:
	.string	"MS_RTP_SEND_ID"
.LASF229:
	.string	"MS_MJPEG_DEC_ID"
.LASF455:
	.string	"MSSndCardSetUsageHintFunc"
.LASF258:
	.string	"MS_AUDIO_MIXER_ID"
.LASF275:
	.string	"MS_IOS_DISPLAY_ID"
.LASF488:
	.string	"amplitude"
.LASF460:
	.string	"_MSSndCardDesc"
.LASF329:
	.string	"MS_WASAPI_WRITE_ID"
.LASF67:
	.string	"__elision"
.LASF296:
	.string	"MS_L16_ENC_ID"
.LASF529:
	.string	"bctbx_list_size"
.LASF146:
	.string	"ipi6_addr"
.LASF530:
	.string	"ms_snd_card_manager_get_list"
.LASF371:
	.string	"postprocess"
.LASF3:
	.string	"short unsigned int"
.LASF6:
	.string	"signed char"
.LASF73:
	.string	"__g_size"
.LASF23:
	.string	"__blksize_t"
.LASF126:
	.string	"__ss_padding"
.LASF202:
	.string	"MS_RTP_RECV_ID"
.LASF472:
	.string	"usage_hint"
.LASF246:
	.string	"MS_VOID_SOURCE_ID"
.LASF208:
	.string	"MS_GSM_ENC_ID"
.LASF559:
	.string	"filename"
.LASF344:
	.string	"count"
.LASF71:
	.string	"__g1_start"
.LASF20:
	.string	"__off64_t"
.LASF404:
	.string	"orig"
.LASF214:
	.string	"MS_ARTS_READ_ID"
.LASF396:
	.string	"cond"
.LASF89:
	.string	"_IO_read_base"
.LASF107:
	.string	"_offset"
.LASF407:
	.string	"cur_time_lock"
.LASF94:
	.string	"_IO_buf_end"
.LASF518:
	.string	"ms_ticker_new"
.LASF376:
	.string	"_MSFactory"
.LASF179:
	.string	"factory"
.LASF184:
	.string	"stats"
.LASF476:
	.string	"MSSndCardDesc"
.LASF124:
	.string	"sockaddr_storage"
.LASF354:
	.string	"MS_FILTER_DECODER"
.LASF390:
	.string	"voip_initd"
.LASF113:
	.string	"_mode"
.LASF173:
	.string	"filter"
.LASF253:
	.string	"MS_JPEG_ENC_ID"
.LASF90:
	.string	"_IO_write_base"
.LASF326:
	.string	"MS_G729_DEC_ID"
.LASF364:
	.string	"category"
.LASF403:
	.string	"time"
.LASF186:
	.string	"seen"
.LASF485:
	.string	"tone_name"
.LASF11:
	.string	"long int"
.LASF522:
	.string	"ms_snd_card_create_writer"
.LASF165:
	.string	"ttl_or_hl"
.LASF148:
	.string	"family"
.LASF116:
	.string	"_IO_marker"
.LASF398:
	.string	"task_list"
.LASF298:
	.string	"MS_OSX_GL_DISPLAY_ID"
.LASF48:
	.string	"timeval"
.LASF223:
	.string	"MS_THEORA_ENC_ID"
.LASF402:
	.string	"ticks"
.LASF358:
	.string	"_MSFilterStats"
.LASF466:
	.string	"set_control"
.LASF308:
	.string	"MS_MKV_RECORDER_ID"
.LASF217:
	.string	"MS_WINSND_WRITE_ID"
.LASF516:
	.string	"ms_filter_link"
.LASF394:
	.string	"expected_video_bandwidth"
.LASF129:
	.string	"in_addr"
.LASF121:
	.string	"uint32_t"
.LASF218:
	.string	"MS_SPEEX_EC_ID"
.LASF192:
	.string	"MS_FILTER_BASE_ID"
.LASF117:
	.string	"_IO_codecvt"
.LASF400:
	.string	"interval"
.LASF412:
	.string	"late_event"
.LASF503:
	.string	"long double"
.LASF232:
	.string	"MS_VIDEO_OUT_ID"
.LASF437:
	.string	"MS_SND_CARD_CAPTURE_MUTE"
.LASF343:
	.string	"quad_moment"
.LASF152:
	.string	"msgb"
.LASF5:
	.string	"long unsigned int"
.LASF136:
	.string	"bool_t"
.LASF441:
	.string	"_MSSndCard"
.LASF552:
	.string	"ndev"
.LASF501:
	.string	"MSTickerLateEvent"
.LASF421:
	.string	"descs"
.LASF243:
	.string	"MS_H263_OLD_ENC_ID"
.LASF348:
	.string	"_MSFilterMethod"
.LASF205:
	.string	"MS_DTMF_GEN_ID"
.LASF265:
	.string	"MS_ANDROID_SOUND_READ_ID"
.LASF26:
	.string	"char"
.LASF219:
	.string	"MS_PIX_CONV_ID"
.LASF351:
	.string	"_MSFilterCategory"
.LASF425:
	.string	"_MSSndCardMixerElem"
.LASF66:
	.string	"__spins"
.LASF147:
	.string	"ortp_recv_addr"
.LASF93:
	.string	"_IO_buf_base"
.LASF64:
	.string	"__nusers"
.LASF288:
	.string	"MS_G726_40_DEC_ID"
.LASF512:
	.string	"script_body_name"
.LASF13:
	.string	"__dev_t"
.LASF380:
	.string	"formats"
.LASF46:
	.string	"__glibc_reserved"
.LASF197:
	.string	"MS_ULAW_ENC_ID"
.LASF236:
	.string	"MS_CA_READ_ID"
.LASF88:
	.string	"_IO_read_end"
.LASF509:
	.string	"en_rec"
.LASF318:
	.string	"MS_RTT_4103_SINK_ID"
.LASF85:
	.string	"_IO_FILE"
.LASF321:
	.string	"MS_BV16_DEC_ID"
.LASF128:
	.string	"in_addr_t"
.LASF434:
	.string	"_MSSndCardControlElem"
.LASF118:
	.string	"_IO_wide_data"
.LASF132:
	.string	"__u6_addr16"
.LASF230:
	.string	"MS_JOIN_ID"
.LASF203:
	.string	"MS_FILE_PLAYER_ID"
.LASF51:
	.string	"__high"
.LASF453:
	.string	"MSSndCardCreateWriterFunc"
.LASF297:
	.string	"MS_L16_DEC_ID"
.LASF410:
	.string	"wait_next_tick"
.LASF176:
	.string	"lock"
.LASF50:
	.string	"__low"
.LASF301:
	.string	"MS_WEBRTC_AEC_ID"
.LASF289:
	.string	"MS_G726_32_DEC_ID"
.LASF38:
	.string	"__pad0"
.LASF112:
	.string	"__pad5"
.LASF209:
	.string	"MS_GSM_DEC_ID"
.LASF133:
	.string	"__u6_addr32"
.LASF226:
	.string	"MS_PASND_WRITE_ID"
.LASF273:
	.string	"MS_TONE_DETECTOR_ID"
.LASF491:
	.string	"MSTickerTimeFunc"
.LASF284:
	.string	"MS_AAL2_G726_40_ENC_ID"
.LASF352:
	.string	"MS_FILTER_OTHER"
.LASF98:
	.string	"_markers"
.LASF452:
	.string	"MSSndCardCreateReaderFunc"
.LASF108:
	.string	"_codecvt"
.LASF350:
	.string	"MSFilterMethod"
.LASF211:
	.string	"MS_SDL_OUT_ID"
.LASF340:
	.string	"double"
.LASF307:
	.string	"MS_QSA_WRITE_ID"
.LASF538:
	.string	"ortp_strdup"
.LASF39:
	.string	"st_rdev"
.LASF235:
	.string	"MS_SNOW_ENC_ID"
.LASF76:
	.string	"__g_signals"
.LASF542:
	.string	"argc"
.LASF206:
	.string	"MS_SPEEX_ENC_ID"
.LASF32:
	.string	"st_dev"
.LASF247:
	.string	"MS_VOID_SINK_ID"
.LASF290:
	.string	"MS_G726_24_DEC_ID"
.LASF543:
	.string	"argv"
.LASF252:
	.string	"MS_JPEG_DEC_ID"
.LASF457:
	.string	"MSSndCardAudioSessionFunc"
.LASF471:
	.string	"unload"
.LASF387:
	.string	"wbcmanager"
.LASF10:
	.string	"__uint32_t"
.LASF540:
	.string	"printf"
.LASF381:
	.string	"platform_tags"
.LASF140:
	.string	"data"
.LASF447:
	.string	"MSSndCardSetLevelFunc"
.LASF285:
	.string	"MS_AAL2_G726_32_ENC_ID"
.LASF141:
	.string	"bctbx_list_t"
.LASF166:
	.string	"datab"
.LASF278:
	.string	"MS_G722_ENC_ID"
.LASF221:
	.string	"MS_SIZE_CONV_ID"
.LASF174:
	.string	"_MSFilter"
.LASF256:
	.string	"MS_DRAWDIB_DISPLAY_ID"
.LASF193:
	.string	"MS_ALSA_READ_ID"
.LASF153:
	.string	"b_prev"
.LASF212:
	.string	"MS_H263_ENC_ID"
.LASF528:
	.string	"ortp_malloc"
.LASF388:
	.string	"voip_uninit_func"
.LASF177:
	.string	"inputs"
.LASF551:
	.string	"recording_name"
.LASF15:
	.string	"__gid_t"
.LASF224:
	.string	"MS_THEORA_DEC_ID"
.LASF157:
	.string	"b_rptr"
.LASF254:
	.string	"MS_PULSE_READ_ID"
.LASF458:
	.string	"MSSndCardCallKitFunc"
.LASF111:
	.string	"_freeres_buf"
.LASF335:
	.string	"MS_ANDROID_DISPLAY_BAD_ID"
.LASF448:
	.string	"MSSndCardSetCaptureFunc"
.LASF28:
	.string	"tv_sec"
.LASF345:
	.string	"MSUBoxPlot"
.LASF397:
	.string	"execution_list"
.LASF54:
	.string	"long long unsigned int"
.LASF436:
	.string	"MS_SND_CARD_PLAYBACK_MUTE"
.LASF103:
	.string	"_cur_column"
.LASF255:
	.string	"MS_PULSE_WRITE_ID"
.LASF68:
	.string	"__list"
.LASF178:
	.string	"outputs"
.LASF281:
	.string	"MS_G726_32_ENC_ID"
.LASF42:
	.string	"st_blocks"
.LASF413:
	.string	"thread_id"
.LASF414:
	.string	"MSFilter"
.LASF215:
	.string	"MS_ARTS_WRITE_ID"
.LASF535:
	.string	"fopen"
.LASF475:
	.string	"audio_route_changed"
.LASF96:
	.string	"_IO_backup_base"
.LASF474:
	.string	"callkit_enabled"
.LASF87:
	.string	"_IO_read_ptr"
.LASF242:
	.string	"MS_H263_OLD_DEC_ID"
.LASF525:
	.string	"ms_factory_init_voip"
.LASF415:
	.string	"MSDevicesInfo"
.LASF110:
	.string	"_freeres_list"
.LASF311:
	.string	"MS_BB10_DISPLAY_ID"
.LASF544:
	.string	"vars"
.LASF499:
	.string	"lateMs"
.LASF312:
	.string	"MS_BB10_CAPTURE_ID"
.LASF531:
	.string	"ms_factory_get_snd_card_manager"
.LASF70:
	.string	"__wseq"
.LASF102:
	.string	"_old_offset"
.LASF391:
	.string	"devices_info"
.LASF198:
	.string	"MS_ULAW_DEC_ID"
.LASF330:
	.string	"MS_AUDIO_FLOW_CONTROL_ID"
.LASF154:
	.string	"b_next"
.LASF170:
	.string	"q_mcount"
.LASF427:
	.string	"MS_SND_CARD_PLAYBACK"
.LASF82:
	.string	"long long int"
.LASF433:
	.string	"MSSndCardCapture"
.LASF150:
	.string	"port"
.LASF101:
	.string	"_flags2"
.LASF69:
	.string	"__pthread_cond_s"
.LASF377:
	.string	"desc_list"
.LASF517:
	.string	"getchar"
.LASF29:
	.string	"tv_nsec"
.LASF554:
	.string	"build_sound_cards_table"
.LASF181:
	.string	"ticker"
.LASF431:
	.string	"MS_SND_CARD_MIC"
.LASF16:
	.string	"__ino_t"
.LASF317:
	.string	"MS_RTT_4103_SOURCE_ID"
.LASF536:
	.string	"ortp_malloc0"
.LASF222:
	.string	"MS_CONF_ID"
.LASF328:
	.string	"MS_WASAPI_READ_ID"
.LASF497:
	.string	"MSTickerPrio"
.LASF526:
	.string	"ms_factory_new"
.LASF423:
	.string	"MSFactory"
.LASF356:
	.string	"MS_FILTER_DECODER_RENDERER"
.LASF495:
	.string	"MS_TICKER_PRIO_HIGH"
.LASF369:
	.string	"preprocess"
.LASF560:
	.string	"file_status"
.LASF338:
	.string	"MSFilterId"
.LASF379:
	.string	"offer_answer_provider_list"
.LASF261:
	.string	"MS_EXT_DISPLAY_ID"
.LASF557:
	.string	"main"
.LASF378:
	.string	"stats_list"
.LASF53:
	.string	"__value32"
.LASF259:
	.string	"MS_ITC_SINK_ID"
.LASF422:
	.string	"_MSWebCamManager"
.LASF478:
	.string	"_MSSndCardStreamType"
.LASF445:
	.string	"streamType"
.LASF424:
	.string	"MSSndCardManager"
.LASF375:
	.string	"MSFilterDesc"
.LASF498:
	.string	"_MSTickerLateEvent"
.LASF520:
	.string	"ms_factory_register_filter"
.LASF144:
	.string	"ortp_cond_t"
.LASF349:
	.string	"method"
.LASF4:
	.string	"unsigned int"
.LASF286:
	.string	"MS_AAL2_G726_24_ENC_ID"
.LASF234:
	.string	"MS_SNOW_DEC_ID"
.LASF480:
	.string	"MS_SND_CARD_STREAM_RING"
.LASF207:
	.string	"MS_SPEEX_DEC_ID"
.LASF541:
	.string	"strcmp"
.LASF44:
	.string	"st_mtim"
.LASF7:
	.string	"short int"
.LASF353:
	.string	"MS_FILTER_ENCODER"
.LASF137:
	.string	"_bctbx_list"
.LASF430:
	.string	"_MSSndCardCapture"
.LASF139:
	.string	"prev"
.LASF104:
	.string	"_vtable_offset"
.LASF490:
	.string	"MSDtmfGenCustomTone"
.LASF293:
	.string	"MS_AAL2_G726_32_DEC_ID"
.LASF429:
	.string	"MSSndCardMixerElem"
.LASF469:
	.string	"create_writer"
.LASF383:
	.string	"video_presets_manager"
.LASF31:
	.string	"stat"
.LASF418:
	.string	"_MSEventQueue"
.LASF374:
	.string	"flags"
.LASF279:
	.string	"MS_G722_DEC_ID"
.LASF519:
	.string	"ms_usleep"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"lua_filter_demo.c"
.LASF1:
	.string	"/home/primauser/plastov/Mediastreamer2_LuaFilter/src"
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
