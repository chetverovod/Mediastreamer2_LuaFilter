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
	.string	"--gen       Set generator's frequency, Hz."
	.align 8
.LC7:
	.string	"--rec       Make recording to file 'record.wav'."
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
	.string	"enable recording: %i\n"
	.text
	.globl	scan_args
	.type	scan_args, @function
scan_args:
.LFB20:
	.file 1 "lua_filter_demo.c"
	.loc 1 41 1
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
	.loc 1 43 11
	movl	$0, -16(%rbp)
	.loc 1 43 5
	jmp	.L2
.L9:
	.loc 1 45 25
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 45 14
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 45 12
	testl	%eax, %eax
	jne	.L3
.LBB2:
	.loc 1 47 19
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 1 47 31
	addq	$2, -8(%rbp)
	.loc 1 48 13
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 49 13
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 50 13
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 51 13
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 52 13
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 53 13
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 54 13
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 55 13
	movl	$0, %edi
	call	exit@PLT
.L3:
.LBE2:
	.loc 1 58 25
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 58 14
	movq	(%rax), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 58 12
	testl	%eax, %eax
	jne	.L4
	.loc 1 60 13
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 61 13
	movl	$0, %edi
	call	exit@PLT
.L4:
	.loc 1 64 25
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 64 14
	movq	(%rax), %rax
	leaq	.LC10(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 64 12
	testl	%eax, %eax
	jne	.L5
	.loc 1 66 53
	movl	-16(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 66 39
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ortp_strdup@PLT
	.loc 1 66 38
	movq	-40(%rbp), %rdx
	movq	%rax, 80(%rdx)
	.loc 1 67 13
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L5:
	.loc 1 70 25
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 70 14
	movq	(%rax), %rax
	leaq	.LC12(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 70 12
	testl	%eax, %eax
	jne	.L6
	.loc 1 72 48
	movl	-16(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 72 34
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ortp_strdup@PLT
	.loc 1 72 33
	movq	-40(%rbp), %rdx
	movq	%rax, 88(%rdx)
	.loc 1 73 13
	movq	-40(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L6:
	.loc 1 76 25
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 76 14
	movq	(%rax), %rax
	leaq	.LC14(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 76 12
	testl	%eax, %eax
	jne	.L7
.LBB3:
	.loc 1 78 25
	movq	-40(%rbp), %rax
	movb	$1, 41(%rax)
	.loc 1 79 33
	movl	-16(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 79 24
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -12(%rbp)
	.loc 1 80 42
	movq	-40(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 12(%rax)
	.loc 1 81 13
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, %esi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L7:
.LBE3:
	.loc 1 84 26
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 84 15
	movq	(%rax), %rax
	leaq	.LC16(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 84 13
	testl	%eax, %eax
	jne	.L8
	.loc 1 86 25
	movq	-40(%rbp), %rax
	movb	$1, 42(%rax)
	.loc 1 87 48
	movq	-40(%rbp), %rax
	movzbl	42(%rax), %eax
	.loc 1 87 13
	movzbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L8:
	.loc 1 43 24 discriminator 2
	addl	$1, -16(%rbp)
.L2:
	.loc 1 43 16 discriminator 1
	movl	-16(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L9
	.loc 1 90 1
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
	.string	"Script's body <%s>: <\n%s\n> will be loaded to lua-filter.\n"
	.align 8
.LC20:
	.string	"Script's body <%s> is out of buffer, dropped.\n"
	.text
	.type	load_script_body, @function
load_script_body:
.LFB21:
	.loc 1 95 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1088, %rsp
	movq	%rdi, -1080(%rbp)
	movq	%rsi, -1088(%rbp)
	.loc 1 95 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 96 11
	movq	-1080(%rbp), %rax
	movq	88(%rax), %rax
	.loc 1 96 8
	testq	%rax, %rax
	je	.L16
	.loc 1 97 22
	movq	-1080(%rbp), %rax
	movq	88(%rax), %rax
	.loc 1 97 15
	leaq	.LC18(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -1056(%rbp)
	.loc 1 99 5
	leaq	-1040(%rbp), %rax
	movl	$1025, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	.loc 1 100 23
	movq	-1056(%rbp), %rdx
	leaq	-1040(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1024, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread@PLT
	movq	%rax, -1048(%rbp)
	.loc 1 101 5
	movq	-1056(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	.loc 1 102 8
	cmpq	$0, -1048(%rbp)
	je	.L13
	.loc 1 102 24 discriminator 1
	cmpq	$1024, -1048(%rbp)
	ja	.L13
.LBB4:
	.loc 1 104 9
	movq	-1080(%rbp), %rax
	movq	88(%rax), %rax
	leaq	-1040(%rbp), %rdx
	movq	%rax, %rsi
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 106 20
	leaq	-1040(%rbp), %rax
	movq	%rax, %rdi
	call	ortp_strdup@PLT
	.loc 1 106 15
	movq	%rax, -1064(%rbp)
	.loc 1 107 9
	leaq	-1064(%rbp), %rdx
	movq	-1088(%rbp), %rax
	movl	$262209537, %esi
	movq	%rax, %rdi
	call	ms_filter_call_method@PLT
.LBE4:
	.loc 1 103 5
	jmp	.L10
.L13:
	.loc 1 111 9
	movq	-1080(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L10
.L16:
	.loc 1 96 31
	nop
.L10:
	.loc 1 113 1
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L15
	call	__stack_chk_fail@PLT
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	load_script_body, .-load_script_body
	.section	.rodata
	.align 8
.LC21:
	.string	"Script's preambula <%s>: <\n%s\n> will be loaded to lua-filter.\n"
	.align 8
.LC22:
	.string	"Script's preambula <%s> is out of buffer, dropped.\n"
	.text
	.type	load_script_preambula, @function
load_script_preambula:
.LFB22:
	.loc 1 118 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1088, %rsp
	movq	%rdi, -1080(%rbp)
	movq	%rsi, -1088(%rbp)
	.loc 1 118 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 119 11
	movq	-1080(%rbp), %rax
	movq	80(%rax), %rax
	.loc 1 119 8
	testq	%rax, %rax
	je	.L23
	.loc 1 120 23
	movq	-1080(%rbp), %rax
	movq	80(%rax), %rax
	.loc 1 120 15
	leaq	.LC18(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -1056(%rbp)
	.loc 1 122 5
	leaq	-1040(%rbp), %rax
	movl	$1025, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	.loc 1 123 23
	movq	-1056(%rbp), %rdx
	leaq	-1040(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1024, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread@PLT
	movq	%rax, -1048(%rbp)
	.loc 1 124 5
	movq	-1056(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	.loc 1 125 8
	cmpq	$0, -1048(%rbp)
	je	.L20
	.loc 1 125 24 discriminator 1
	cmpq	$1024, -1048(%rbp)
	ja	.L20
.LBB5:
	.loc 1 127 9
	movq	-1080(%rbp), %rax
	movq	80(%rax), %rax
	leaq	-1040(%rbp), %rdx
	movq	%rax, %rsi
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 129 20
	leaq	-1040(%rbp), %rax
	movq	%rax, %rdi
	call	ortp_strdup@PLT
	.loc 1 129 15
	movq	%rax, -1064(%rbp)
	.loc 1 130 9
	leaq	-1064(%rbp), %rdx
	movq	-1088(%rbp), %rax
	movl	$262210049, %esi
	movq	%rax, %rdi
	call	ms_filter_call_method@PLT
.LBE5:
	.loc 1 126 5
	jmp	.L17
.L20:
	.loc 1 134 9
	movq	-1080(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L17
.L23:
	.loc 1 119 36
	nop
.L17:
	.loc 1 137 1
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L22
	call	__stack_chk_fail@PLT
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	load_script_preambula, .-load_script_preambula
	.type	build_sound_cards_table, @function
build_sound_cards_table:
.LFB23:
	.loc 1 142 1
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
	.loc 1 146 32
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	ms_factory_get_snd_card_manager@PLT
	.loc 1 146 3
	movq	%rax, %rdi
	call	ms_snd_card_manager_get_list@PLT
	movq	%rax, -32(%rbp)
	.loc 1 147 9
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	bctbx_list_size@PLT
	movq	%rax, -24(%rbp)
	.loc 1 148 30
	movq	-24(%rbp), %rax
	addq	$1, %rax
	.loc 1 148 14
	salq	$3, %rax
	movq	%rax, %rdi
	call	ortp_malloc@PLT
	.loc 1 148 13
	movq	-56(%rbp), %rdx
	movq	%rax, 72(%rdx)
	.loc 1 149 10
	movl	$0, -36(%rbp)
	.loc 1 149 2
	jmp	.L25
.L26:
	.loc 1 151 63 discriminator 3
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 151 5 discriminator 3
	movq	-56(%rbp), %rdx
	movq	72(%rdx), %rcx
	.loc 1 151 13 discriminator 3
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	leaq	(%rcx,%rdx), %rbx
	.loc 1 151 19 discriminator 3
	movq	%rax, %rdi
	call	ms_snd_card_get_string_id@PLT
	.loc 1 151 17 discriminator 3
	movq	%rax, (%rbx)
	.loc 1 149 33 discriminator 3
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	.loc 1 149 48 discriminator 3
	addl	$1, -36(%rbp)
.L25:
	.loc 1 149 20 discriminator 1
	cmpq	$0, -32(%rbp)
	jne	.L26
	.loc 1 153 4
	movq	-56(%rbp), %rax
	movq	72(%rax), %rdx
	.loc 1 153 12
	movq	-24(%rbp), %rax
	salq	$3, %rax
	addq	%rdx, %rax
	.loc 1 153 19
	movq	$0, (%rax)
	.loc 1 154 19
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movb	%dl, 64(%rax)
	.loc 1 155 1
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	build_sound_cards_table, .-build_sound_cards_table
	.section	.rodata
	.align 8
.LC23:
	.string	"Will be used soundcard:\n<\n%s\n>\n"
.LC25:
	.string	"Press ENTER to exit.\n "
.LC26:
	.string	"--"
	.text
	.globl	main
	.type	main, @function
main:
.LFB24:
	.loc 1 159 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movl	%edi, -196(%rbp)
	movq	%rsi, -208(%rbp)
	.loc 1 159 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 161 14
	leaq	-112(%rbp), %rdx
	movl	$0, %eax
	movl	$12, %ecx
	movq	%rdx, %rdi
	rep stosq
	.loc 1 162 15
	call	ms_factory_new@PLT
	.loc 1 162 13
	movq	%rax, -64(%rbp)
	.loc 1 163 2
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ms_factory_init_voip@PLT
	.loc 1 165 16
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ms_factory_get_snd_card_manager@PLT
	.loc 1 165 14
	movq	%rax, -56(%rbp)
	.loc 1 166 5
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	build_sound_cards_table
	.loc 1 170 5
	leaq	-112(%rbp), %rdx
	movq	-208(%rbp), %rcx
	movl	-196(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	scan_args
	.loc 1 173 55
	movq	-40(%rbp), %rax
	.loc 1 173 5
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 175 45
	movq	-40(%rbp), %rax
	.loc 1 175 2
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ms_snd_card_manager_get_card@PLT
	movq	%rax, -184(%rbp)
	.loc 1 177 31
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	ms_snd_card_create_reader@PLT
	movq	%rax, -176(%rbp)
	.loc 1 178 32
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	ms_snd_card_create_writer@PLT
	movq	%rax, -168(%rbp)
	.loc 1 180 28
	movq	-64(%rbp), %rax
	movl	$56, %esi
	movq	%rax, %rdi
	call	ms_factory_create_filter@PLT
	movq	%rax, -160(%rbp)
	.loc 1 181 25
	movq	-64(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	ms_factory_create_filter@PLT
	movq	%rax, -152(%rbp)
	.loc 1 184 2
	movq	-64(%rbp), %rax
	leaq	lua_filter_desc(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ms_factory_register_filter@PLT
	.loc 1 186 28
	movq	-64(%rbp), %rax
	movl	$4001, %esi
	movq	%rax, %rdi
	call	ms_factory_create_filter@PLT
	movq	%rax, -144(%rbp)
	.loc 1 189 24
	movq	-64(%rbp), %rax
	movl	$14, %esi
	movq	%rax, %rdi
	call	ms_factory_create_filter@PLT
	movq	%rax, -136(%rbp)
	.loc 1 190 19
	movq	-136(%rbp), %rax
	movq	%rax, -80(%rbp)
	.loc 1 192 19
	movq	-64(%rbp), %rax
	movl	$30, %esi
	movq	%rax, %rdi
	call	ms_factory_create_filter@PLT
	movq	%rax, -128(%rbp)
	.loc 1 195 24
	call	ms_ticker_new@PLT
	movq	%rax, -120(%rbp)
	.loc 1 198 13
	movzbl	-71(%rbp), %eax
	.loc 1 198 8
	testb	%al, %al
	je	.L28
	.loc 1 200 6
	movq	-152(%rbp), %rdx
	movq	-160(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ms_filter_link@PLT
	.loc 1 202 6
	movq	-128(%rbp), %rdx
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ms_filter_link@PLT
	.loc 1 209 5
	leaq	-112(%rbp), %rdx
	movq	-152(%rbp), %rax
	movl	$983840, %esi
	movq	%rax, %rdi
	call	ms_filter_call_method@PLT
	jmp	.L29
.L28:
	.loc 1 215 6
	movq	-144(%rbp), %rdx
	movq	-176(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ms_filter_link@PLT
	.loc 1 216 6
	movq	-128(%rbp), %rdx
	movq	-144(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ms_filter_link@PLT
.L29:
	.loc 1 219 5
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ms_filter_link@PLT
	.loc 1 220 5
	movq	-168(%rbp), %rdx
	movq	-128(%rbp), %rax
	movl	$0, %ecx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ms_filter_link@PLT
	.loc 1 224 5
	movq	-144(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_script_preambula
	.loc 1 228 13
	movzbl	-71(%rbp), %eax
	.loc 1 228 8
	testb	%al, %al
	je	.L30
	.loc 1 230 5
	movq	-160(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ms_ticker_attach@PLT
	jmp	.L31
.L30:
	.loc 1 234 5
	movq	-176(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ms_ticker_attach@PLT
.L31:
	.loc 1 237 5
	movq	-144(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_script_body
	.loc 1 239 14
	movzbl	-70(%rbp), %eax
	.loc 1 239 8
	testb	%al, %al
	je	.L32
	.loc 1 239 24 discriminator 1
	movq	-136(%rbp), %rax
	movl	$0, %edx
	movl	$917760, %esi
	movq	%rax, %rdi
	call	ms_filter_call_method@PLT
.L32:
	.loc 1 242 13
	movzbl	-71(%rbp), %eax
	.loc 1 242 8
	testb	%al, %al
	je	.L33
	.loc 1 246 32
	movl	$10000, -104(%rbp)
	.loc 1 247 33
	movss	.LC24(%rip), %xmm0
	movss	%xmm0, -92(%rbp)
	.loc 1 248 37
	movl	$0, -96(%rbp)
	.loc 1 249 33
	movss	.LC24(%rip), %xmm0
	movss	%xmm0, -92(%rbp)
	.loc 1 250 32
	movl	$0, -88(%rbp)
	.loc 1 251 36
	movl	$0, -84(%rbp)
.L33:
	.loc 1 253 5
	leaq	-112(%rbp), %rdx
	movq	-152(%rbp), %rax
	movl	$983840, %esi
	movq	%rax, %rdi
	call	ms_filter_call_method@PLT
	.loc 1 257 5
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 258 12
	call	getchar@PLT
	.loc 1 258 10
	movb	%al, -185(%rbp)
	.loc 1 259 10
	jmp	.L34
.L36:
	.loc 1 261 16
	movzbl	-71(%rbp), %eax
	.loc 1 261 11
	testb	%al, %al
	je	.L35
	.loc 1 264 13
	leaq	-112(%rbp), %rdx
	movq	-152(%rbp), %rax
	movl	$983840, %esi
	movq	%rax, %rdi
	call	ms_filter_call_method@PLT
.L35:
	.loc 1 267 11
	call	getchar@PLT
	.loc 1 267 10
	movb	%al, -185(%rbp)
	.loc 1 268 9
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L34:
	.loc 1 259 13
	cmpb	$10, -185(%rbp)
	jne	.L36
	.loc 1 270 13
	movzbl	-70(%rbp), %eax
	.loc 1 270 8
	testb	%al, %al
	je	.L37
	.loc 1 270 23 discriminator 1
	movq	-136(%rbp), %rax
	movl	$0, %edx
	movl	$918272, %esi
	movq	%rax, %rdi
	call	ms_filter_call_method@PLT
.L37:
	movl	$0, %eax
	.loc 1 271 1
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L39
	call	__stack_chk_fail@PLT
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC24:
	.long	1065353216
	.text
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/11/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/atomic_wide_counter.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h"
	.file 9 "/usr/include/unistd.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/sockaddr.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/socket.h"
	.file 15 "/usr/include/netinet/in.h"
	.file 16 "/usr/include/bctoolbox/port.h"
	.file 17 "/usr/include/bctoolbox/list.h"
	.file 18 "/usr/include/ortp/port.h"
	.file 19 "/usr/include/ortp/str_utils.h"
	.file 20 "/usr/include/mediastreamer2/msqueue.h"
	.file 21 "/usr/include/mediastreamer2/msfilter.h"
	.file 22 "/usr/include/mediastreamer2/allfilters.h"
	.file 23 "/usr/include/mediastreamer2/box-plot.h"
	.file 24 "/usr/include/mediastreamer2/msfactory.h"
	.file 25 "/usr/include/mediastreamer2/msticker.h"
	.file 26 "/usr/include/mediastreamer2/devices.h"
	.file 27 "/usr/include/mediastreamer2/mssndcard.h"
	.file 28 "/usr/include/mediastreamer2/dtmfgen.h"
	.file 29 "/usr/include/stdio.h"
	.file 30 "/usr/include/string.h"
	.file 31 "/usr/include/stdlib.h"
	.file 32 "lua_filter.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1db4
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x1f
	.long	.LASF529
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
	.uleb128 0x20
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
	.byte	0x98
	.byte	0x12
	.long	0x83
	.uleb128 0x3
	.long	.LASF14
	.byte	0x2
	.byte	0x99
	.byte	0x12
	.long	0x83
	.uleb128 0xa
	.long	0x70
	.long	0xbe
	.uleb128 0xb
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF15
	.byte	0x2
	.byte	0xa0
	.byte	0x12
	.long	0x83
	.uleb128 0x3
	.long	.LASF16
	.byte	0x2
	.byte	0xa2
	.byte	0x12
	.long	0x83
	.uleb128 0x21
	.byte	0x8
	.uleb128 0x17
	.long	0xd6
	.uleb128 0x5
	.long	0xe2
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.long	.LASF17
	.uleb128 0x1a
	.long	0xe2
	.uleb128 0x3
	.long	.LASF18
	.byte	0x2
	.byte	0xd2
	.byte	0x16
	.long	0x3c
	.uleb128 0x3
	.long	.LASF19
	.byte	0x3
	.byte	0xd1
	.byte	0x1b
	.long	0x43
	.uleb128 0x6
	.long	.LASF28
	.byte	0x10
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.long	0x12e
	.uleb128 0x1
	.long	.LASF20
	.byte	0x4
	.byte	0xe
	.byte	0xc
	.long	0xbe
	.byte	0
	.uleb128 0x1
	.long	.LASF21
	.byte	0x4
	.byte	0xf
	.byte	0x11
	.long	0xca
	.byte	0x8
	.byte	0
	.uleb128 0x22
	.byte	0x8
	.byte	0x5
	.byte	0x1c
	.byte	0x3
	.long	0x152
	.uleb128 0x1
	.long	.LASF22
	.byte	0x5
	.byte	0x1e
	.byte	0x12
	.long	0x3c
	.byte	0
	.uleb128 0x1
	.long	.LASF23
	.byte	0x5
	.byte	0x1f
	.byte	0x12
	.long	0x3c
	.byte	0x4
	.byte	0
	.uleb128 0x15
	.byte	0x8
	.byte	0x5
	.byte	0x19
	.byte	0x9
	.long	0x174
	.uleb128 0x9
	.long	.LASF24
	.byte	0x5
	.byte	0x1b
	.byte	0x28
	.long	0x174
	.uleb128 0x9
	.long	.LASF25
	.byte	0x5
	.byte	0x20
	.byte	0x5
	.long	0x12e
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.long	.LASF26
	.uleb128 0x3
	.long	.LASF27
	.byte	0x5
	.byte	0x21
	.byte	0x3
	.long	0x152
	.uleb128 0x6
	.long	.LASF29
	.byte	0x10
	.byte	0x6
	.byte	0x33
	.byte	0x10
	.long	0x1af
	.uleb128 0x1
	.long	.LASF30
	.byte	0x6
	.byte	0x35
	.byte	0x23
	.long	0x1af
	.byte	0
	.uleb128 0x1
	.long	.LASF31
	.byte	0x6
	.byte	0x36
	.byte	0x23
	.long	0x1af
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	0x187
	.uleb128 0x3
	.long	.LASF32
	.byte	0x6
	.byte	0x37
	.byte	0x3
	.long	0x187
	.uleb128 0x6
	.long	.LASF33
	.byte	0x28
	.byte	0x7
	.byte	0x16
	.byte	0x8
	.long	0x236
	.uleb128 0x1
	.long	.LASF34
	.byte	0x7
	.byte	0x18
	.byte	0x7
	.long	0x70
	.byte	0
	.uleb128 0x1
	.long	.LASF35
	.byte	0x7
	.byte	0x19
	.byte	0x10
	.long	0x3c
	.byte	0x4
	.uleb128 0x1
	.long	.LASF36
	.byte	0x7
	.byte	0x1a
	.byte	0x7
	.long	0x70
	.byte	0x8
	.uleb128 0x1
	.long	.LASF37
	.byte	0x7
	.byte	0x1c
	.byte	0x10
	.long	0x3c
	.byte	0xc
	.uleb128 0x1
	.long	.LASF38
	.byte	0x7
	.byte	0x20
	.byte	0x7
	.long	0x70
	.byte	0x10
	.uleb128 0x1
	.long	.LASF39
	.byte	0x7
	.byte	0x22
	.byte	0x9
	.long	0x5d
	.byte	0x14
	.uleb128 0x1
	.long	.LASF40
	.byte	0x7
	.byte	0x23
	.byte	0x9
	.long	0x5d
	.byte	0x16
	.uleb128 0x1
	.long	.LASF41
	.byte	0x7
	.byte	0x24
	.byte	0x14
	.long	0x1b4
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.long	.LASF42
	.byte	0x30
	.byte	0x6
	.byte	0x5e
	.byte	0x8
	.long	0x29f
	.uleb128 0x1
	.long	.LASF43
	.byte	0x6
	.byte	0x60
	.byte	0x19
	.long	0x17b
	.byte	0
	.uleb128 0x1
	.long	.LASF44
	.byte	0x6
	.byte	0x61
	.byte	0x19
	.long	0x17b
	.byte	0x8
	.uleb128 0x1
	.long	.LASF45
	.byte	0x6
	.byte	0x62
	.byte	0x10
	.long	0x29f
	.byte	0x10
	.uleb128 0x1
	.long	.LASF46
	.byte	0x6
	.byte	0x63
	.byte	0x10
	.long	0x29f
	.byte	0x18
	.uleb128 0x1
	.long	.LASF47
	.byte	0x6
	.byte	0x64
	.byte	0x10
	.long	0x3c
	.byte	0x20
	.uleb128 0x1
	.long	.LASF48
	.byte	0x6
	.byte	0x65
	.byte	0x10
	.long	0x3c
	.byte	0x24
	.uleb128 0x1
	.long	.LASF49
	.byte	0x6
	.byte	0x66
	.byte	0x10
	.long	0x29f
	.byte	0x28
	.byte	0
	.uleb128 0xa
	.long	0x3c
	.long	0x2af
	.uleb128 0xb
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF50
	.byte	0x8
	.byte	0x1b
	.byte	0x1b
	.long	0x43
	.uleb128 0x15
	.byte	0x28
	.byte	0x8
	.byte	0x43
	.byte	0x9
	.long	0x2e9
	.uleb128 0x9
	.long	.LASF51
	.byte	0x8
	.byte	0x45
	.byte	0x1c
	.long	0x1c0
	.uleb128 0x9
	.long	.LASF52
	.byte	0x8
	.byte	0x46
	.byte	0x8
	.long	0x2e9
	.uleb128 0x9
	.long	.LASF53
	.byte	0x8
	.byte	0x47
	.byte	0xc
	.long	0x83
	.byte	0
	.uleb128 0xa
	.long	0xe2
	.long	0x2f9
	.uleb128 0xb
	.long	0x43
	.byte	0x27
	.byte	0
	.uleb128 0x3
	.long	.LASF54
	.byte	0x8
	.byte	0x48
	.byte	0x3
	.long	0x2bb
	.uleb128 0x15
	.byte	0x30
	.byte	0x8
	.byte	0x4b
	.byte	0x9
	.long	0x333
	.uleb128 0x9
	.long	.LASF51
	.byte	0x8
	.byte	0x4d
	.byte	0x1b
	.long	0x236
	.uleb128 0x9
	.long	.LASF52
	.byte	0x8
	.byte	0x4e
	.byte	0x8
	.long	0x333
	.uleb128 0x9
	.long	.LASF53
	.byte	0x8
	.byte	0x4f
	.byte	0x1f
	.long	0x343
	.byte	0
	.uleb128 0xa
	.long	0xe2
	.long	0x343
	.uleb128 0xb
	.long	0x43
	.byte	0x2f
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.long	.LASF55
	.uleb128 0x3
	.long	.LASF56
	.byte	0x8
	.byte	0x50
	.byte	0x3
	.long	0x305
	.uleb128 0xa
	.long	0xe2
	.long	0x366
	.uleb128 0xb
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	0xe9
	.uleb128 0x17
	.long	0x366
	.uleb128 0x1b
	.long	.LASF57
	.byte	0x9
	.value	0x112
	.byte	0x15
	.long	0xee
	.uleb128 0x5
	.long	0xdd
	.uleb128 0x6
	.long	.LASF58
	.byte	0xd8
	.byte	0xa
	.byte	0x31
	.byte	0x8
	.long	0x509
	.uleb128 0x1
	.long	.LASF59
	.byte	0xa
	.byte	0x33
	.byte	0x7
	.long	0x70
	.byte	0
	.uleb128 0x1
	.long	.LASF60
	.byte	0xa
	.byte	0x36
	.byte	0x9
	.long	0xdd
	.byte	0x8
	.uleb128 0x1
	.long	.LASF61
	.byte	0xa
	.byte	0x37
	.byte	0x9
	.long	0xdd
	.byte	0x10
	.uleb128 0x1
	.long	.LASF62
	.byte	0xa
	.byte	0x38
	.byte	0x9
	.long	0xdd
	.byte	0x18
	.uleb128 0x1
	.long	.LASF63
	.byte	0xa
	.byte	0x39
	.byte	0x9
	.long	0xdd
	.byte	0x20
	.uleb128 0x1
	.long	.LASF64
	.byte	0xa
	.byte	0x3a
	.byte	0x9
	.long	0xdd
	.byte	0x28
	.uleb128 0x1
	.long	.LASF65
	.byte	0xa
	.byte	0x3b
	.byte	0x9
	.long	0xdd
	.byte	0x30
	.uleb128 0x1
	.long	.LASF66
	.byte	0xa
	.byte	0x3c
	.byte	0x9
	.long	0xdd
	.byte	0x38
	.uleb128 0x1
	.long	.LASF67
	.byte	0xa
	.byte	0x3d
	.byte	0x9
	.long	0xdd
	.byte	0x40
	.uleb128 0x1
	.long	.LASF68
	.byte	0xa
	.byte	0x40
	.byte	0x9
	.long	0xdd
	.byte	0x48
	.uleb128 0x1
	.long	.LASF69
	.byte	0xa
	.byte	0x41
	.byte	0x9
	.long	0xdd
	.byte	0x50
	.uleb128 0x1
	.long	.LASF70
	.byte	0xa
	.byte	0x42
	.byte	0x9
	.long	0xdd
	.byte	0x58
	.uleb128 0x1
	.long	.LASF71
	.byte	0xa
	.byte	0x44
	.byte	0x16
	.long	0x522
	.byte	0x60
	.uleb128 0x1
	.long	.LASF72
	.byte	0xa
	.byte	0x46
	.byte	0x14
	.long	0x527
	.byte	0x68
	.uleb128 0x1
	.long	.LASF73
	.byte	0xa
	.byte	0x48
	.byte	0x7
	.long	0x70
	.byte	0x70
	.uleb128 0x1
	.long	.LASF74
	.byte	0xa
	.byte	0x49
	.byte	0x7
	.long	0x70
	.byte	0x74
	.uleb128 0x1
	.long	.LASF75
	.byte	0xa
	.byte	0x4a
	.byte	0xb
	.long	0x96
	.byte	0x78
	.uleb128 0x1
	.long	.LASF76
	.byte	0xa
	.byte	0x4d
	.byte	0x12
	.long	0x35
	.byte	0x80
	.uleb128 0x1
	.long	.LASF77
	.byte	0xa
	.byte	0x4e
	.byte	0xf
	.long	0x4a
	.byte	0x82
	.uleb128 0x1
	.long	.LASF78
	.byte	0xa
	.byte	0x4f
	.byte	0x8
	.long	0x52c
	.byte	0x83
	.uleb128 0x1
	.long	.LASF79
	.byte	0xa
	.byte	0x51
	.byte	0xf
	.long	0x53c
	.byte	0x88
	.uleb128 0x1
	.long	.LASF80
	.byte	0xa
	.byte	0x59
	.byte	0xd
	.long	0xa2
	.byte	0x90
	.uleb128 0x1
	.long	.LASF81
	.byte	0xa
	.byte	0x5b
	.byte	0x17
	.long	0x546
	.byte	0x98
	.uleb128 0x1
	.long	.LASF82
	.byte	0xa
	.byte	0x5c
	.byte	0x19
	.long	0x550
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF83
	.byte	0xa
	.byte	0x5d
	.byte	0x14
	.long	0x527
	.byte	0xa8
	.uleb128 0x1
	.long	.LASF84
	.byte	0xa
	.byte	0x5e
	.byte	0x9
	.long	0xd6
	.byte	0xb0
	.uleb128 0x1
	.long	.LASF85
	.byte	0xa
	.byte	0x5f
	.byte	0xa
	.long	0xfa
	.byte	0xb8
	.uleb128 0x1
	.long	.LASF86
	.byte	0xa
	.byte	0x60
	.byte	0x7
	.long	0x70
	.byte	0xc0
	.uleb128 0x1
	.long	.LASF87
	.byte	0xa
	.byte	0x62
	.byte	0x8
	.long	0x555
	.byte	0xc4
	.byte	0
	.uleb128 0x3
	.long	.LASF88
	.byte	0xb
	.byte	0x7
	.byte	0x19
	.long	0x382
	.uleb128 0x23
	.long	.LASF530
	.byte	0xa
	.byte	0x2b
	.byte	0xe
	.uleb128 0x11
	.long	.LASF89
	.uleb128 0x5
	.long	0x51d
	.uleb128 0x5
	.long	0x382
	.uleb128 0xa
	.long	0xe2
	.long	0x53c
	.uleb128 0xb
	.long	0x43
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0x515
	.uleb128 0x11
	.long	.LASF90
	.uleb128 0x5
	.long	0x541
	.uleb128 0x11
	.long	.LASF91
	.uleb128 0x5
	.long	0x54b
	.uleb128 0xa
	.long	0xe2
	.long	0x565
	.uleb128 0xb
	.long	0x43
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	0x509
	.uleb128 0x17
	.long	0x565
	.uleb128 0x3
	.long	.LASF92
	.byte	0xc
	.byte	0x18
	.byte	0x13
	.long	0x51
	.uleb128 0x3
	.long	.LASF93
	.byte	0xc
	.byte	0x19
	.byte	0x14
	.long	0x64
	.uleb128 0x3
	.long	.LASF94
	.byte	0xc
	.byte	0x1a
	.byte	0x14
	.long	0x77
	.uleb128 0x3
	.long	.LASF95
	.byte	0xc
	.byte	0x1b
	.byte	0x14
	.long	0x8a
	.uleb128 0x3
	.long	.LASF96
	.byte	0xd
	.byte	0x1c
	.byte	0x1c
	.long	0x35
	.uleb128 0x6
	.long	.LASF97
	.byte	0x80
	.byte	0xe
	.byte	0xc1
	.byte	0x8
	.long	0x5e0
	.uleb128 0x1
	.long	.LASF98
	.byte	0xe
	.byte	0xc3
	.byte	0x11
	.long	0x59f
	.byte	0
	.uleb128 0x1
	.long	.LASF99
	.byte	0xe
	.byte	0xc4
	.byte	0xa
	.long	0x5e0
	.byte	0x2
	.uleb128 0x1
	.long	.LASF100
	.byte	0xe
	.byte	0xc5
	.byte	0x17
	.long	0x43
	.byte	0x78
	.byte	0
	.uleb128 0xa
	.long	0xe2
	.long	0x5f0
	.uleb128 0xb
	.long	0x43
	.byte	0x75
	.byte	0
	.uleb128 0x3
	.long	.LASF101
	.byte	0xf
	.byte	0x1e
	.byte	0x12
	.long	0x587
	.uleb128 0x6
	.long	.LASF102
	.byte	0x4
	.byte	0xf
	.byte	0x1f
	.byte	0x8
	.long	0x617
	.uleb128 0x1
	.long	.LASF103
	.byte	0xf
	.byte	0x21
	.byte	0xf
	.long	0x5f0
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x10
	.byte	0xf
	.byte	0xdd
	.byte	0x5
	.long	0x645
	.uleb128 0x9
	.long	.LASF104
	.byte	0xf
	.byte	0xdf
	.byte	0xa
	.long	0x645
	.uleb128 0x9
	.long	.LASF105
	.byte	0xf
	.byte	0xe0
	.byte	0xb
	.long	0x655
	.uleb128 0x9
	.long	.LASF106
	.byte	0xf
	.byte	0xe1
	.byte	0xb
	.long	0x665
	.byte	0
	.uleb128 0xa
	.long	0x56f
	.long	0x655
	.uleb128 0xb
	.long	0x43
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.long	0x57b
	.long	0x665
	.uleb128 0xb
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.long	0x587
	.long	0x675
	.uleb128 0xb
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.long	.LASF107
	.byte	0x10
	.byte	0xf
	.byte	0xdb
	.byte	0x8
	.long	0x690
	.uleb128 0x1
	.long	.LASF108
	.byte	0xf
	.byte	0xe2
	.byte	0x9
	.long	0x617
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LASF109
	.byte	0x10
	.value	0x150
	.byte	0x17
	.long	0x2e
	.uleb128 0x6
	.long	.LASF110
	.byte	0x18
	.byte	0x11
	.byte	0x1d
	.byte	0x10
	.long	0x6d2
	.uleb128 0x1
	.long	.LASF111
	.byte	0x11
	.byte	0x1e
	.byte	0x16
	.long	0x6d2
	.byte	0
	.uleb128 0x1
	.long	.LASF112
	.byte	0x11
	.byte	0x1f
	.byte	0x16
	.long	0x6d2
	.byte	0x8
	.uleb128 0x1
	.long	.LASF113
	.byte	0x11
	.byte	0x20
	.byte	0x8
	.long	0xd6
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	0x69d
	.uleb128 0x3
	.long	.LASF114
	.byte	0x11
	.byte	0x21
	.byte	0x3
	.long	0x69d
	.uleb128 0x1a
	.long	0x6d7
	.uleb128 0x3
	.long	.LASF115
	.byte	0x12
	.byte	0x3e
	.byte	0x13
	.long	0x2af
	.uleb128 0x3
	.long	.LASF116
	.byte	0x12
	.byte	0x3f
	.byte	0x19
	.long	0x2f9
	.uleb128 0x3
	.long	.LASF117
	.byte	0x12
	.byte	0x40
	.byte	0x18
	.long	0x34a
	.uleb128 0x15
	.byte	0x10
	.byte	0x13
	.byte	0x2b
	.byte	0x2
	.long	0x72e
	.uleb128 0x9
	.long	.LASF118
	.byte	0x13
	.byte	0x2c
	.byte	0x12
	.long	0x5fc
	.uleb128 0x9
	.long	.LASF119
	.byte	0x13
	.byte	0x2d
	.byte	0x13
	.long	0x675
	.byte	0
	.uleb128 0x6
	.long	.LASF120
	.byte	0x18
	.byte	0x13
	.byte	0x29
	.byte	0x10
	.long	0x763
	.uleb128 0x1
	.long	.LASF121
	.byte	0x13
	.byte	0x2a
	.byte	0x6
	.long	0x70
	.byte	0
	.uleb128 0x1
	.long	.LASF122
	.byte	0x13
	.byte	0x2e
	.byte	0x4
	.long	0x70c
	.byte	0x4
	.uleb128 0x1
	.long	.LASF123
	.byte	0x13
	.byte	0x2f
	.byte	0x11
	.long	0x35
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.long	.LASF124
	.byte	0x13
	.byte	0x30
	.byte	0x3
	.long	0x72e
	.uleb128 0x6
	.long	.LASF125
	.byte	0xe8
	.byte	0x13
	.byte	0x38
	.byte	0x10
	.long	0x826
	.uleb128 0x1
	.long	.LASF126
	.byte	0x13
	.byte	0x3a
	.byte	0xf
	.long	0x826
	.byte	0
	.uleb128 0x1
	.long	.LASF127
	.byte	0x13
	.byte	0x3b
	.byte	0xf
	.long	0x826
	.byte	0x8
	.uleb128 0x1
	.long	.LASF128
	.byte	0x13
	.byte	0x3c
	.byte	0xf
	.long	0x826
	.byte	0x10
	.uleb128 0x1
	.long	.LASF129
	.byte	0x13
	.byte	0x3d
	.byte	0x10
	.long	0x830
	.byte	0x18
	.uleb128 0x1
	.long	.LASF130
	.byte	0x13
	.byte	0x3e
	.byte	0x11
	.long	0x835
	.byte	0x20
	.uleb128 0x1
	.long	.LASF131
	.byte	0x13
	.byte	0x3f
	.byte	0x11
	.long	0x835
	.byte	0x28
	.uleb128 0x1
	.long	.LASF132
	.byte	0x13
	.byte	0x40
	.byte	0xb
	.long	0x587
	.byte	0x30
	.uleb128 0x1
	.long	.LASF133
	.byte	0x13
	.byte	0x41
	.byte	0xb
	.long	0x587
	.byte	0x34
	.uleb128 0x1
	.long	.LASF134
	.byte	0x13
	.byte	0x42
	.byte	0x11
	.long	0x106
	.byte	0x38
	.uleb128 0x1
	.long	.LASF135
	.byte	0x13
	.byte	0x43
	.byte	0x13
	.long	0x763
	.byte	0x48
	.uleb128 0x1
	.long	.LASF136
	.byte	0x13
	.byte	0x44
	.byte	0x1a
	.long	0x5ab
	.byte	0x60
	.uleb128 0x1
	.long	.LASF137
	.byte	0x13
	.byte	0x45
	.byte	0xc
	.long	0x370
	.byte	0xe0
	.uleb128 0x1
	.long	.LASF138
	.byte	0x13
	.byte	0x46
	.byte	0xa
	.long	0x56f
	.byte	0xe4
	.byte	0
	.uleb128 0x5
	.long	0x76f
	.uleb128 0x11
	.long	.LASF139
	.uleb128 0x5
	.long	0x82b
	.uleb128 0x5
	.long	0x2e
	.uleb128 0x3
	.long	.LASF140
	.byte	0x13
	.byte	0x47
	.byte	0x3
	.long	0x76f
	.uleb128 0x6
	.long	.LASF141
	.byte	0xf0
	.byte	0x13
	.byte	0x4d
	.byte	0x10
	.long	0x86e
	.uleb128 0x1
	.long	.LASF142
	.byte	0x13
	.byte	0x4f
	.byte	0x9
	.long	0x83a
	.byte	0
	.uleb128 0x1
	.long	.LASF143
	.byte	0x13
	.byte	0x50
	.byte	0x6
	.long	0x70
	.byte	0xe8
	.byte	0
	.uleb128 0x3
	.long	.LASF144
	.byte	0x13
	.byte	0x51
	.byte	0x3
	.long	0x846
	.uleb128 0x6
	.long	.LASF145
	.byte	0x10
	.byte	0x14
	.byte	0x1a
	.byte	0x10
	.long	0x8a2
	.uleb128 0x1
	.long	.LASF146
	.byte	0x14
	.byte	0x1b
	.byte	0x14
	.long	0x959
	.byte	0
	.uleb128 0xc
	.string	"pin"
	.byte	0x14
	.byte	0x1c
	.byte	0x6
	.long	0x70
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.long	.LASF147
	.byte	0x80
	.byte	0x15
	.byte	0xb4
	.byte	0x8
	.long	0x959
	.uleb128 0x1
	.long	.LASF148
	.byte	0x15
	.byte	0xb5
	.byte	0x10
	.long	0xf60
	.byte	0
	.uleb128 0x1
	.long	.LASF149
	.byte	0x15
	.byte	0xb7
	.byte	0xf
	.long	0x6f4
	.byte	0x8
	.uleb128 0x1
	.long	.LASF150
	.byte	0x15
	.byte	0xb8
	.byte	0xc
	.long	0xf65
	.byte	0x30
	.uleb128 0x1
	.long	.LASF151
	.byte	0x15
	.byte	0xb9
	.byte	0xc
	.long	0xf65
	.byte	0x38
	.uleb128 0x1
	.long	.LASF152
	.byte	0x15
	.byte	0xba
	.byte	0x15
	.long	0x1081
	.byte	0x40
	.uleb128 0x1
	.long	.LASF153
	.byte	0x15
	.byte	0xbb
	.byte	0x8
	.long	0xd6
	.byte	0x48
	.uleb128 0x1
	.long	.LASF113
	.byte	0x15
	.byte	0xbc
	.byte	0x8
	.long	0xd6
	.byte	0x50
	.uleb128 0x1
	.long	.LASF154
	.byte	0x15
	.byte	0xbd
	.byte	0x14
	.long	0x11a8
	.byte	0x58
	.uleb128 0x1
	.long	.LASF155
	.byte	0x15
	.byte	0xbf
	.byte	0x10
	.long	0x11ad
	.byte	0x60
	.uleb128 0x1
	.long	.LASF156
	.byte	0x15
	.byte	0xc0
	.byte	0xb
	.long	0x587
	.byte	0x68
	.uleb128 0x1
	.long	.LASF157
	.byte	0x15
	.byte	0xc1
	.byte	0x11
	.long	0x11b2
	.byte	0x70
	.uleb128 0x1
	.long	.LASF158
	.byte	0x15
	.byte	0xc2
	.byte	0x6
	.long	0x70
	.byte	0x78
	.uleb128 0x1
	.long	.LASF159
	.byte	0x15
	.byte	0xc3
	.byte	0x9
	.long	0x690
	.byte	0x7c
	.byte	0
	.uleb128 0x5
	.long	0x8a2
	.uleb128 0x3
	.long	.LASF160
	.byte	0x14
	.byte	0x1d
	.byte	0x3
	.long	0x87a
	.uleb128 0x1c
	.long	.LASF161
	.value	0x110
	.byte	0x14
	.byte	0x1f
	.byte	0x10
	.long	0x99f
	.uleb128 0xc
	.string	"q"
	.byte	0x14
	.byte	0x21
	.byte	0xa
	.long	0x86e
	.byte	0
	.uleb128 0x1
	.long	.LASF112
	.byte	0x14
	.byte	0x22
	.byte	0xb
	.long	0x95e
	.byte	0xf0
	.uleb128 0x1d
	.long	.LASF111
	.byte	0x14
	.byte	0x23
	.byte	0xb
	.long	0x95e
	.value	0x100
	.byte	0
	.uleb128 0x3
	.long	.LASF162
	.byte	0x14
	.byte	0x24
	.byte	0x2
	.long	0x96a
	.uleb128 0x12
	.long	.LASF311
	.long	0x3c
	.byte	0x16
	.byte	0x1b
	.byte	0xe
	.long	0xd34
	.uleb128 0x2
	.long	.LASF163
	.byte	0
	.uleb128 0x2
	.long	.LASF164
	.byte	0x1
	.uleb128 0x2
	.long	.LASF165
	.byte	0x2
	.uleb128 0x2
	.long	.LASF166
	.byte	0x3
	.uleb128 0x2
	.long	.LASF167
	.byte	0x4
	.uleb128 0x2
	.long	.LASF168
	.byte	0x5
	.uleb128 0x2
	.long	.LASF169
	.byte	0x6
	.uleb128 0x2
	.long	.LASF170
	.byte	0x7
	.uleb128 0x2
	.long	.LASF171
	.byte	0x8
	.uleb128 0x2
	.long	.LASF172
	.byte	0x9
	.uleb128 0x2
	.long	.LASF173
	.byte	0xa
	.uleb128 0x2
	.long	.LASF174
	.byte	0xb
	.uleb128 0x2
	.long	.LASF175
	.byte	0xc
	.uleb128 0x2
	.long	.LASF176
	.byte	0xd
	.uleb128 0x2
	.long	.LASF177
	.byte	0xe
	.uleb128 0x2
	.long	.LASF178
	.byte	0xf
	.uleb128 0x2
	.long	.LASF179
	.byte	0x10
	.uleb128 0x2
	.long	.LASF180
	.byte	0x11
	.uleb128 0x2
	.long	.LASF181
	.byte	0x12
	.uleb128 0x2
	.long	.LASF182
	.byte	0x13
	.uleb128 0x2
	.long	.LASF183
	.byte	0x14
	.uleb128 0x2
	.long	.LASF184
	.byte	0x15
	.uleb128 0x2
	.long	.LASF185
	.byte	0x16
	.uleb128 0x2
	.long	.LASF186
	.byte	0x17
	.uleb128 0x2
	.long	.LASF187
	.byte	0x18
	.uleb128 0x2
	.long	.LASF188
	.byte	0x19
	.uleb128 0x2
	.long	.LASF189
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF190
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF191
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF192
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF193
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF194
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF195
	.byte	0x20
	.uleb128 0x2
	.long	.LASF196
	.byte	0x21
	.uleb128 0x2
	.long	.LASF197
	.byte	0x22
	.uleb128 0x2
	.long	.LASF198
	.byte	0x23
	.uleb128 0x2
	.long	.LASF199
	.byte	0x24
	.uleb128 0x2
	.long	.LASF200
	.byte	0x25
	.uleb128 0x2
	.long	.LASF201
	.byte	0x26
	.uleb128 0x2
	.long	.LASF202
	.byte	0x27
	.uleb128 0x2
	.long	.LASF203
	.byte	0x28
	.uleb128 0x2
	.long	.LASF204
	.byte	0x29
	.uleb128 0x2
	.long	.LASF205
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF206
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF207
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF208
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF209
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF210
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF211
	.byte	0x30
	.uleb128 0x2
	.long	.LASF212
	.byte	0x31
	.uleb128 0x2
	.long	.LASF213
	.byte	0x32
	.uleb128 0x2
	.long	.LASF214
	.byte	0x33
	.uleb128 0x2
	.long	.LASF215
	.byte	0x34
	.uleb128 0x2
	.long	.LASF216
	.byte	0x35
	.uleb128 0x2
	.long	.LASF217
	.byte	0x36
	.uleb128 0x2
	.long	.LASF218
	.byte	0x37
	.uleb128 0x2
	.long	.LASF219
	.byte	0x38
	.uleb128 0x2
	.long	.LASF220
	.byte	0x39
	.uleb128 0x2
	.long	.LASF221
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF222
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF223
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF224
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF225
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF226
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF227
	.byte	0x40
	.uleb128 0x2
	.long	.LASF228
	.byte	0x41
	.uleb128 0x2
	.long	.LASF229
	.byte	0x42
	.uleb128 0x2
	.long	.LASF230
	.byte	0x43
	.uleb128 0x2
	.long	.LASF231
	.byte	0x44
	.uleb128 0x2
	.long	.LASF232
	.byte	0x45
	.uleb128 0x2
	.long	.LASF233
	.byte	0x46
	.uleb128 0x2
	.long	.LASF234
	.byte	0x47
	.uleb128 0x2
	.long	.LASF235
	.byte	0x48
	.uleb128 0x2
	.long	.LASF236
	.byte	0x49
	.uleb128 0x2
	.long	.LASF237
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF238
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF239
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF240
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF241
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF242
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF243
	.byte	0x50
	.uleb128 0x2
	.long	.LASF244
	.byte	0x51
	.uleb128 0x2
	.long	.LASF245
	.byte	0x52
	.uleb128 0x2
	.long	.LASF246
	.byte	0x53
	.uleb128 0x2
	.long	.LASF247
	.byte	0x54
	.uleb128 0x2
	.long	.LASF248
	.byte	0x55
	.uleb128 0x2
	.long	.LASF249
	.byte	0x56
	.uleb128 0x2
	.long	.LASF250
	.byte	0x57
	.uleb128 0x2
	.long	.LASF251
	.byte	0x58
	.uleb128 0x2
	.long	.LASF252
	.byte	0x59
	.uleb128 0x2
	.long	.LASF253
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF254
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF255
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF256
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF257
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF258
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF259
	.byte	0x60
	.uleb128 0x2
	.long	.LASF260
	.byte	0x61
	.uleb128 0x2
	.long	.LASF261
	.byte	0x62
	.uleb128 0x2
	.long	.LASF262
	.byte	0x63
	.uleb128 0x2
	.long	.LASF263
	.byte	0x64
	.uleb128 0x2
	.long	.LASF264
	.byte	0x65
	.uleb128 0x2
	.long	.LASF265
	.byte	0x66
	.uleb128 0x2
	.long	.LASF266
	.byte	0x67
	.uleb128 0x2
	.long	.LASF267
	.byte	0x68
	.uleb128 0x2
	.long	.LASF268
	.byte	0x69
	.uleb128 0x2
	.long	.LASF269
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF270
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF271
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF272
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF273
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF274
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF275
	.byte	0x70
	.uleb128 0x2
	.long	.LASF276
	.byte	0x71
	.uleb128 0x2
	.long	.LASF277
	.byte	0x72
	.uleb128 0x2
	.long	.LASF278
	.byte	0x73
	.uleb128 0x2
	.long	.LASF279
	.byte	0x74
	.uleb128 0x2
	.long	.LASF280
	.byte	0x75
	.uleb128 0x2
	.long	.LASF281
	.byte	0x76
	.uleb128 0x2
	.long	.LASF282
	.byte	0x77
	.uleb128 0x2
	.long	.LASF283
	.byte	0x78
	.uleb128 0x2
	.long	.LASF284
	.byte	0x79
	.uleb128 0x2
	.long	.LASF285
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF286
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF287
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF288
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF289
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF290
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF291
	.byte	0x80
	.uleb128 0x2
	.long	.LASF292
	.byte	0x81
	.uleb128 0x2
	.long	.LASF293
	.byte	0x82
	.uleb128 0x2
	.long	.LASF294
	.byte	0x83
	.uleb128 0x2
	.long	.LASF295
	.byte	0x84
	.uleb128 0x2
	.long	.LASF296
	.byte	0x85
	.uleb128 0x2
	.long	.LASF297
	.byte	0x86
	.uleb128 0x2
	.long	.LASF298
	.byte	0x87
	.uleb128 0x2
	.long	.LASF299
	.byte	0x88
	.uleb128 0x2
	.long	.LASF300
	.byte	0x89
	.uleb128 0x2
	.long	.LASF301
	.byte	0x8a
	.uleb128 0x2
	.long	.LASF302
	.byte	0x8b
	.uleb128 0x2
	.long	.LASF303
	.byte	0x8c
	.uleb128 0x2
	.long	.LASF304
	.byte	0x8d
	.uleb128 0x2
	.long	.LASF305
	.byte	0x8e
	.uleb128 0x2
	.long	.LASF306
	.byte	0x8f
	.uleb128 0x2
	.long	.LASF307
	.byte	0x90
	.uleb128 0x2
	.long	.LASF308
	.byte	0x91
	.uleb128 0x2
	.long	.LASF309
	.byte	0x92
	.uleb128 0x2
	.long	.LASF310
	.byte	0x93
	.byte	0
	.uleb128 0x3
	.long	.LASF311
	.byte	0x16
	.byte	0xb0
	.byte	0x3
	.long	0x9ab
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.long	.LASF312
	.uleb128 0x8
	.byte	0x8
	.byte	0x4
	.long	.LASF313
	.uleb128 0x6
	.long	.LASF314
	.byte	0x28
	.byte	0x17
	.byte	0x2a
	.byte	0x10
	.long	0xd9d
	.uleb128 0xc
	.string	"min"
	.byte	0x17
	.byte	0x2b
	.byte	0xb
	.long	0x593
	.byte	0
	.uleb128 0xc
	.string	"max"
	.byte	0x17
	.byte	0x2c
	.byte	0xb
	.long	0x593
	.byte	0x8
	.uleb128 0x1
	.long	.LASF315
	.byte	0x17
	.byte	0x2d
	.byte	0x9
	.long	0xd47
	.byte	0x10
	.uleb128 0x1
	.long	.LASF316
	.byte	0x17
	.byte	0x2e
	.byte	0x9
	.long	0xd47
	.byte	0x18
	.uleb128 0x1
	.long	.LASF317
	.byte	0x17
	.byte	0x2f
	.byte	0xb
	.long	0x593
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.long	.LASF318
	.byte	0x17
	.byte	0x30
	.byte	0x3
	.long	0xd4e
	.uleb128 0x3
	.long	.LASF319
	.byte	0x15
	.byte	0x32
	.byte	0x10
	.long	0xdb5
	.uleb128 0x5
	.long	0xdba
	.uleb128 0x13
	.long	0xdc5
	.uleb128 0x4
	.long	0x959
	.byte	0
	.uleb128 0x3
	.long	.LASF320
	.byte	0x15
	.byte	0x38
	.byte	0xf
	.long	0xdd1
	.uleb128 0x5
	.long	0xdd6
	.uleb128 0x10
	.long	0x70
	.long	0xdea
	.uleb128 0x4
	.long	0x959
	.uleb128 0x4
	.long	0xd6
	.byte	0
	.uleb128 0x6
	.long	.LASF321
	.byte	0x10
	.byte	0x15
	.byte	0x40
	.byte	0x8
	.long	0xe11
	.uleb128 0xc
	.string	"id"
	.byte	0x15
	.byte	0x41
	.byte	0xf
	.long	0x3c
	.byte	0
	.uleb128 0x1
	.long	.LASF322
	.byte	0x15
	.byte	0x42
	.byte	0x15
	.long	0xdc5
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	.LASF323
	.byte	0x15
	.byte	0x67
	.byte	0x20
	.long	0xdea
	.uleb128 0x12
	.long	.LASF324
	.long	0x3c
	.byte	0x15
	.byte	0x6c
	.byte	0x6
	.long	0xe4c
	.uleb128 0x2
	.long	.LASF325
	.byte	0
	.uleb128 0x2
	.long	.LASF326
	.byte	0x1
	.uleb128 0x2
	.long	.LASF327
	.byte	0x2
	.uleb128 0x2
	.long	.LASF328
	.byte	0x3
	.uleb128 0x2
	.long	.LASF329
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF330
	.byte	0x15
	.byte	0x84
	.byte	0x20
	.long	0xe1d
	.uleb128 0x6
	.long	.LASF331
	.byte	0x30
	.byte	0x15
	.byte	0x96
	.byte	0x8
	.long	0xe80
	.uleb128 0x1
	.long	.LASF332
	.byte	0x15
	.byte	0x97
	.byte	0xe
	.long	0x366
	.byte	0
	.uleb128 0x1
	.long	.LASF333
	.byte	0x15
	.byte	0x98
	.byte	0xd
	.long	0xd9d
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	.LASF334
	.byte	0x15
	.byte	0x9b
	.byte	0x1f
	.long	0xe58
	.uleb128 0x6
	.long	.LASF335
	.byte	0x68
	.byte	0x15
	.byte	0x9d
	.byte	0x8
	.long	0xf4f
	.uleb128 0xc
	.string	"id"
	.byte	0x15
	.byte	0x9e
	.byte	0xd
	.long	0xd34
	.byte	0
	.uleb128 0x1
	.long	.LASF332
	.byte	0x15
	.byte	0x9f
	.byte	0xe
	.long	0x366
	.byte	0x8
	.uleb128 0x1
	.long	.LASF336
	.byte	0x15
	.byte	0xa0
	.byte	0xe
	.long	0x366
	.byte	0x10
	.uleb128 0x1
	.long	.LASF337
	.byte	0x15
	.byte	0xa1
	.byte	0x13
	.long	0xe4c
	.byte	0x18
	.uleb128 0x1
	.long	.LASF338
	.byte	0x15
	.byte	0xa2
	.byte	0xe
	.long	0x366
	.byte	0x20
	.uleb128 0x1
	.long	.LASF339
	.byte	0x15
	.byte	0xa3
	.byte	0x6
	.long	0x70
	.byte	0x28
	.uleb128 0x1
	.long	.LASF340
	.byte	0x15
	.byte	0xa4
	.byte	0x6
	.long	0x70
	.byte	0x2c
	.uleb128 0x1
	.long	.LASF341
	.byte	0x15
	.byte	0xa5
	.byte	0xf
	.long	0xda9
	.byte	0x30
	.uleb128 0x1
	.long	.LASF342
	.byte	0x15
	.byte	0xa6
	.byte	0xf
	.long	0xda9
	.byte	0x38
	.uleb128 0x1
	.long	.LASF343
	.byte	0x15
	.byte	0xa7
	.byte	0xf
	.long	0xda9
	.byte	0x40
	.uleb128 0x1
	.long	.LASF344
	.byte	0x15
	.byte	0xa8
	.byte	0xf
	.long	0xda9
	.byte	0x48
	.uleb128 0x1
	.long	.LASF345
	.byte	0x15
	.byte	0xa9
	.byte	0xf
	.long	0xda9
	.byte	0x50
	.uleb128 0x1
	.long	.LASF346
	.byte	0x15
	.byte	0xaa
	.byte	0x12
	.long	0xf4f
	.byte	0x58
	.uleb128 0x1
	.long	.LASF347
	.byte	0x15
	.byte	0xab
	.byte	0xf
	.long	0x3c
	.byte	0x60
	.byte	0
	.uleb128 0x5
	.long	0xe11
	.uleb128 0x3
	.long	.LASF348
	.byte	0x15
	.byte	0xb2
	.byte	0x1e
	.long	0xe8c
	.uleb128 0x5
	.long	0xf54
	.uleb128 0x5
	.long	0xf6a
	.uleb128 0x5
	.long	0x99f
	.uleb128 0x6
	.long	.LASF349
	.byte	0x90
	.byte	0x18
	.byte	0x1c
	.byte	0x8
	.long	0x1081
	.uleb128 0x1
	.long	.LASF350
	.byte	0x18
	.byte	0x1d
	.byte	0x10
	.long	0x11ad
	.byte	0
	.uleb128 0x1
	.long	.LASF351
	.byte	0x18
	.byte	0x1e
	.byte	0x10
	.long	0x11ad
	.byte	0x8
	.uleb128 0x1
	.long	.LASF352
	.byte	0x18
	.byte	0x1f
	.byte	0x10
	.long	0x11ad
	.byte	0x10
	.uleb128 0x1
	.long	.LASF353
	.byte	0x18
	.byte	0x23
	.byte	0x10
	.long	0x11ad
	.byte	0x18
	.uleb128 0x1
	.long	.LASF354
	.byte	0x18
	.byte	0x24
	.byte	0x10
	.long	0x11ad
	.byte	0x20
	.uleb128 0x1
	.long	.LASF355
	.byte	0x18
	.byte	0x25
	.byte	0x8
	.long	0xdd
	.byte	0x28
	.uleb128 0x1
	.long	.LASF356
	.byte	0x18
	.byte	0x26
	.byte	0x21
	.long	0x11f9
	.byte	0x30
	.uleb128 0x1
	.long	.LASF357
	.byte	0x18
	.byte	0x27
	.byte	0x6
	.long	0x70
	.byte	0x38
	.uleb128 0xc
	.string	"evq"
	.byte	0x18
	.byte	0x28
	.byte	0x18
	.long	0x1203
	.byte	0x40
	.uleb128 0x1
	.long	.LASF358
	.byte	0x18
	.byte	0x29
	.byte	0x6
	.long	0x70
	.byte	0x48
	.uleb128 0xc
	.string	"mtu"
	.byte	0x18
	.byte	0x2a
	.byte	0x6
	.long	0x70
	.byte	0x4c
	.uleb128 0x1
	.long	.LASF359
	.byte	0x18
	.byte	0x2b
	.byte	0x1c
	.long	0x123d
	.byte	0x50
	.uleb128 0x1
	.long	.LASF360
	.byte	0x18
	.byte	0x2c
	.byte	0x1b
	.long	0x1247
	.byte	0x58
	.uleb128 0x1
	.long	.LASF361
	.byte	0x18
	.byte	0x2d
	.byte	0x9
	.long	0x1257
	.byte	0x60
	.uleb128 0x1
	.long	.LASF362
	.byte	0x18
	.byte	0x2e
	.byte	0x9
	.long	0x690
	.byte	0x68
	.uleb128 0x1
	.long	.LASF363
	.byte	0x18
	.byte	0x2f
	.byte	0x9
	.long	0x690
	.byte	0x69
	.uleb128 0x1
	.long	.LASF364
	.byte	0x18
	.byte	0x30
	.byte	0x11
	.long	0x125c
	.byte	0x70
	.uleb128 0x1
	.long	.LASF365
	.byte	0x18
	.byte	0x31
	.byte	0x8
	.long	0xdd
	.byte	0x78
	.uleb128 0x1
	.long	.LASF366
	.byte	0x18
	.byte	0x32
	.byte	0x8
	.long	0xdd
	.byte	0x80
	.uleb128 0x1
	.long	.LASF367
	.byte	0x18
	.byte	0x33
	.byte	0x6
	.long	0x70
	.byte	0x88
	.byte	0
	.uleb128 0x5
	.long	0xf6f
	.uleb128 0x1c
	.long	.LASF368
	.value	0x118
	.byte	0x19
	.byte	0x49
	.byte	0x8
	.long	0x11a8
	.uleb128 0x1
	.long	.LASF149
	.byte	0x19
	.byte	0x4b
	.byte	0xf
	.long	0x6f4
	.byte	0
	.uleb128 0x1
	.long	.LASF369
	.byte	0x19
	.byte	0x4c
	.byte	0xe
	.long	0x700
	.byte	0x28
	.uleb128 0x1
	.long	.LASF370
	.byte	0x19
	.byte	0x4d
	.byte	0x10
	.long	0x11ad
	.byte	0x58
	.uleb128 0x1
	.long	.LASF371
	.byte	0x19
	.byte	0x4e
	.byte	0x10
	.long	0x11ad
	.byte	0x60
	.uleb128 0x1
	.long	.LASF372
	.byte	0x19
	.byte	0x4f
	.byte	0x10
	.long	0x6e8
	.byte	0x68
	.uleb128 0x1
	.long	.LASF373
	.byte	0x19
	.byte	0x50
	.byte	0x6
	.long	0x70
	.byte	0x70
	.uleb128 0x1
	.long	.LASF374
	.byte	0x19
	.byte	0x51
	.byte	0x6
	.long	0x70
	.byte	0x74
	.uleb128 0x1
	.long	.LASF375
	.byte	0x19
	.byte	0x52
	.byte	0xb
	.long	0x587
	.byte	0x78
	.uleb128 0x1
	.long	.LASF376
	.byte	0x19
	.byte	0x53
	.byte	0xb
	.long	0x593
	.byte	0x80
	.uleb128 0x1
	.long	.LASF377
	.byte	0x19
	.byte	0x54
	.byte	0xb
	.long	0x593
	.byte	0x88
	.uleb128 0x1
	.long	.LASF378
	.byte	0x19
	.byte	0x55
	.byte	0x13
	.long	0x16d2
	.byte	0x90
	.uleb128 0x1
	.long	.LASF379
	.byte	0x19
	.byte	0x56
	.byte	0x8
	.long	0xd6
	.byte	0x98
	.uleb128 0x1
	.long	.LASF380
	.byte	0x19
	.byte	0x57
	.byte	0xf
	.long	0x6f4
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF332
	.byte	0x19
	.byte	0x58
	.byte	0x8
	.long	0xdd
	.byte	0xc8
	.uleb128 0x1
	.long	.LASF381
	.byte	0x19
	.byte	0x59
	.byte	0x9
	.long	0xd47
	.byte	0xd0
	.uleb128 0x1
	.long	.LASF382
	.byte	0x19
	.byte	0x5a
	.byte	0xf
	.long	0x173a
	.byte	0xd8
	.uleb128 0x1
	.long	.LASF383
	.byte	0x19
	.byte	0x5b
	.byte	0x13
	.long	0x16f2
	.byte	0xe0
	.uleb128 0x1
	.long	.LASF384
	.byte	0x19
	.byte	0x5c
	.byte	0x8
	.long	0xd6
	.byte	0xe8
	.uleb128 0x1
	.long	.LASF385
	.byte	0x19
	.byte	0x5d
	.byte	0x14
	.long	0x177b
	.byte	0xf0
	.uleb128 0x1d
	.long	.LASF386
	.byte	0x19
	.byte	0x5e
	.byte	0x10
	.long	0x43
	.value	0x108
	.uleb128 0x24
	.string	"run"
	.byte	0x19
	.byte	0x5f
	.byte	0x9
	.long	0x690
	.value	0x110
	.byte	0
	.uleb128 0x5
	.long	0x1086
	.uleb128 0x5
	.long	0x6d7
	.uleb128 0x5
	.long	0xe80
	.uleb128 0x3
	.long	.LASF387
	.byte	0x15
	.byte	0xcb
	.byte	0x1a
	.long	0x8a2
	.uleb128 0x5
	.long	0x11b7
	.uleb128 0x5
	.long	0x6e3
	.uleb128 0x6
	.long	.LASF388
	.byte	0x8
	.byte	0x1a
	.byte	0x3d
	.byte	0x8
	.long	0x11e8
	.uleb128 0x1
	.long	.LASF389
	.byte	0x1a
	.byte	0x3e
	.byte	0x10
	.long	0x11ad
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF388
	.byte	0x1a
	.byte	0x41
	.byte	0x1e
	.long	0x11cd
	.uleb128 0x11
	.long	.LASF390
	.uleb128 0x5
	.long	0x11f4
	.uleb128 0x11
	.long	.LASF391
	.uleb128 0x5
	.long	0x11fe
	.uleb128 0x6
	.long	.LASF392
	.byte	0x18
	.byte	0x1b
	.byte	0x27
	.byte	0x8
	.long	0x123d
	.uleb128 0x1
	.long	.LASF152
	.byte	0x1b
	.byte	0x28
	.byte	0xd
	.long	0x126d
	.byte	0
	.uleb128 0x1
	.long	.LASF393
	.byte	0x1b
	.byte	0x29
	.byte	0x10
	.long	0x11ad
	.byte	0x8
	.uleb128 0x1
	.long	.LASF394
	.byte	0x1b
	.byte	0x2a
	.byte	0x10
	.long	0x11ad
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	0x1208
	.uleb128 0x11
	.long	.LASF395
	.uleb128 0x5
	.long	0x1242
	.uleb128 0x13
	.long	0x1257
	.uleb128 0x4
	.long	0x1081
	.byte	0
	.uleb128 0x5
	.long	0x124c
	.uleb128 0x5
	.long	0x11e8
	.uleb128 0x3
	.long	.LASF396
	.byte	0x18
	.byte	0x36
	.byte	0x1b
	.long	0xf6f
	.uleb128 0x5
	.long	0x1261
	.uleb128 0x3
	.long	.LASF397
	.byte	0x1b
	.byte	0x31
	.byte	0x22
	.long	0x1208
	.uleb128 0x12
	.long	.LASF398
	.long	0x3c
	.byte	0x1b
	.byte	0x33
	.byte	0x6
	.long	0x12a1
	.uleb128 0x2
	.long	.LASF399
	.byte	0
	.uleb128 0x2
	.long	.LASF400
	.byte	0x1
	.uleb128 0x2
	.long	.LASF401
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF402
	.byte	0x1b
	.byte	0x3d
	.byte	0x22
	.long	0x127e
	.uleb128 0x12
	.long	.LASF403
	.long	0x3c
	.byte	0x1b
	.byte	0x3f
	.byte	0x6
	.long	0x12ca
	.uleb128 0x2
	.long	.LASF404
	.byte	0
	.uleb128 0x2
	.long	.LASF405
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF406
	.byte	0x1b
	.byte	0x48
	.byte	0x20
	.long	0x12ad
	.uleb128 0x12
	.long	.LASF407
	.long	0x3c
	.byte	0x1b
	.byte	0x4a
	.byte	0x6
	.long	0x12f9
	.uleb128 0x2
	.long	.LASF408
	.byte	0
	.uleb128 0x2
	.long	.LASF409
	.byte	0x1
	.uleb128 0x2
	.long	.LASF410
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF411
	.byte	0x1b
	.byte	0x54
	.byte	0x24
	.long	0x12d6
	.uleb128 0x3
	.long	.LASF412
	.byte	0x1b
	.byte	0x58
	.byte	0x10
	.long	0x1311
	.uleb128 0x5
	.long	0x1316
	.uleb128 0x13
	.long	0x1321
	.uleb128 0x4
	.long	0x1321
	.byte	0
	.uleb128 0x5
	.long	0x1272
	.uleb128 0x3
	.long	.LASF413
	.byte	0x1b
	.byte	0x59
	.byte	0x10
	.long	0x1332
	.uleb128 0x5
	.long	0x1337
	.uleb128 0x13
	.long	0x1342
	.uleb128 0x4
	.long	0x1342
	.byte	0
	.uleb128 0x5
	.long	0x1347
	.uleb128 0x6
	.long	.LASF414
	.byte	0x40
	.byte	0x1b
	.byte	0x9c
	.byte	0x8
	.long	0x13c9
	.uleb128 0x1
	.long	.LASF148
	.byte	0x1b
	.byte	0x9d
	.byte	0x11
	.long	0x1665
	.byte	0
	.uleb128 0x1
	.long	.LASF359
	.byte	0x1b
	.byte	0x9e
	.byte	0x14
	.long	0x1321
	.byte	0x8
	.uleb128 0x1
	.long	.LASF332
	.byte	0x1b
	.byte	0x9f
	.byte	0x8
	.long	0xdd
	.byte	0x10
	.uleb128 0xc
	.string	"id"
	.byte	0x1b
	.byte	0xa0
	.byte	0x8
	.long	0xdd
	.byte	0x18
	.uleb128 0x1
	.long	.LASF415
	.byte	0x1b
	.byte	0xa1
	.byte	0xf
	.long	0x3c
	.byte	0x20
	.uleb128 0x1
	.long	.LASF113
	.byte	0x1b
	.byte	0xa2
	.byte	0x8
	.long	0xd6
	.byte	0x28
	.uleb128 0x1
	.long	.LASF416
	.byte	0x1b
	.byte	0xa3
	.byte	0x6
	.long	0x70
	.byte	0x30
	.uleb128 0x1
	.long	.LASF417
	.byte	0x1b
	.byte	0xa4
	.byte	0x6
	.long	0x70
	.byte	0x34
	.uleb128 0x1
	.long	.LASF418
	.byte	0x1b
	.byte	0xa5
	.byte	0x16
	.long	0x1659
	.byte	0x38
	.byte	0
	.uleb128 0x3
	.long	.LASF419
	.byte	0x1b
	.byte	0x5a
	.byte	0x10
	.long	0x1332
	.uleb128 0x3
	.long	.LASF420
	.byte	0x1b
	.byte	0x5b
	.byte	0x10
	.long	0x13e1
	.uleb128 0x5
	.long	0x13e6
	.uleb128 0x13
	.long	0x13fb
	.uleb128 0x4
	.long	0x1342
	.uleb128 0x4
	.long	0x12a1
	.uleb128 0x4
	.long	0x70
	.byte	0
	.uleb128 0x3
	.long	.LASF421
	.byte	0x1b
	.byte	0x5c
	.byte	0x10
	.long	0x1407
	.uleb128 0x5
	.long	0x140c
	.uleb128 0x13
	.long	0x141c
	.uleb128 0x4
	.long	0x1342
	.uleb128 0x4
	.long	0x12ca
	.byte	0
	.uleb128 0x3
	.long	.LASF422
	.byte	0x1b
	.byte	0x5d
	.byte	0xf
	.long	0x1428
	.uleb128 0x5
	.long	0x142d
	.uleb128 0x10
	.long	0x70
	.long	0x1441
	.uleb128 0x4
	.long	0x1342
	.uleb128 0x4
	.long	0x12a1
	.byte	0
	.uleb128 0x3
	.long	.LASF423
	.byte	0x1b
	.byte	0x5e
	.byte	0xf
	.long	0x144d
	.uleb128 0x5
	.long	0x1452
	.uleb128 0x10
	.long	0x70
	.long	0x146b
	.uleb128 0x4
	.long	0x1342
	.uleb128 0x4
	.long	0x12f9
	.uleb128 0x4
	.long	0x70
	.byte	0
	.uleb128 0x3
	.long	.LASF424
	.byte	0x1b
	.byte	0x5f
	.byte	0xf
	.long	0x1477
	.uleb128 0x5
	.long	0x147c
	.uleb128 0x10
	.long	0x70
	.long	0x1490
	.uleb128 0x4
	.long	0x1342
	.uleb128 0x4
	.long	0x12f9
	.byte	0
	.uleb128 0x3
	.long	.LASF425
	.byte	0x1b
	.byte	0x60
	.byte	0x1e
	.long	0x149c
	.uleb128 0x5
	.long	0x14a1
	.uleb128 0x10
	.long	0x959
	.long	0x14b0
	.uleb128 0x4
	.long	0x1342
	.byte	0
	.uleb128 0x3
	.long	.LASF426
	.byte	0x1b
	.byte	0x61
	.byte	0x1e
	.long	0x149c
	.uleb128 0x3
	.long	.LASF427
	.byte	0x1b
	.byte	0x62
	.byte	0x1f
	.long	0x14c8
	.uleb128 0x5
	.long	0x14cd
	.uleb128 0x10
	.long	0x1342
	.long	0x14dc
	.uleb128 0x4
	.long	0x1342
	.byte	0
	.uleb128 0x3
	.long	.LASF428
	.byte	0x1b
	.byte	0x63
	.byte	0x10
	.long	0x14e8
	.uleb128 0x5
	.long	0x14ed
	.uleb128 0x13
	.long	0x14fd
	.uleb128 0x4
	.long	0x1342
	.uleb128 0x4
	.long	0x690
	.byte	0
	.uleb128 0x3
	.long	.LASF429
	.byte	0x1b
	.byte	0x64
	.byte	0x10
	.long	0x1311
	.uleb128 0x3
	.long	.LASF430
	.byte	0x1b
	.byte	0x65
	.byte	0x10
	.long	0x14e8
	.uleb128 0x3
	.long	.LASF431
	.byte	0x1b
	.byte	0x66
	.byte	0x10
	.long	0x14e8
	.uleb128 0x3
	.long	.LASF432
	.byte	0x1b
	.byte	0x67
	.byte	0x10
	.long	0x1332
	.uleb128 0x6
	.long	.LASF433
	.byte	0x88
	.byte	0x1b
	.byte	0x6a
	.byte	0x8
	.long	0x1618
	.uleb128 0x1
	.long	.LASF434
	.byte	0x1b
	.byte	0x6b
	.byte	0xe
	.long	0x366
	.byte	0
	.uleb128 0x1
	.long	.LASF435
	.byte	0x1b
	.byte	0x6c
	.byte	0x16
	.long	0x1305
	.byte	0x8
	.uleb128 0x1
	.long	.LASF341
	.byte	0x1b
	.byte	0x6d
	.byte	0x14
	.long	0x1326
	.byte	0x10
	.uleb128 0x1
	.long	.LASF436
	.byte	0x1b
	.byte	0x6e
	.byte	0x18
	.long	0x13d5
	.byte	0x18
	.uleb128 0x1
	.long	.LASF437
	.byte	0x1b
	.byte	0x6f
	.byte	0x18
	.long	0x141c
	.byte	0x20
	.uleb128 0x1
	.long	.LASF438
	.byte	0x1b
	.byte	0x70
	.byte	0x1a
	.long	0x13fb
	.byte	0x28
	.uleb128 0x1
	.long	.LASF439
	.byte	0x1b
	.byte	0x71
	.byte	0x1a
	.long	0x1441
	.byte	0x30
	.uleb128 0x1
	.long	.LASF440
	.byte	0x1b
	.byte	0x72
	.byte	0x1a
	.long	0x146b
	.byte	0x38
	.uleb128 0x1
	.long	.LASF441
	.byte	0x1b
	.byte	0x73
	.byte	0x1c
	.long	0x1490
	.byte	0x40
	.uleb128 0x1
	.long	.LASF442
	.byte	0x1b
	.byte	0x74
	.byte	0x1c
	.long	0x14b0
	.byte	0x48
	.uleb128 0x1
	.long	.LASF345
	.byte	0x1b
	.byte	0x75
	.byte	0x16
	.long	0x13c9
	.byte	0x50
	.uleb128 0x1
	.long	.LASF443
	.byte	0x1b
	.byte	0x76
	.byte	0x19
	.long	0x14bc
	.byte	0x58
	.uleb128 0x1
	.long	.LASF444
	.byte	0x1b
	.byte	0x77
	.byte	0x16
	.long	0x14fd
	.byte	0x60
	.uleb128 0x1
	.long	.LASF445
	.byte	0x1b
	.byte	0x78
	.byte	0x1c
	.long	0x14dc
	.byte	0x68
	.uleb128 0x1
	.long	.LASF446
	.byte	0x1b
	.byte	0x79
	.byte	0x1c
	.long	0x1509
	.byte	0x70
	.uleb128 0x1
	.long	.LASF447
	.byte	0x1b
	.byte	0x7a
	.byte	0x17
	.long	0x1515
	.byte	0x78
	.uleb128 0x1
	.long	.LASF448
	.byte	0x1b
	.byte	0x7b
	.byte	0x1a
	.long	0x1521
	.byte	0x80
	.byte	0
	.uleb128 0x3
	.long	.LASF449
	.byte	0x1b
	.byte	0x82
	.byte	0x1f
	.long	0x152d
	.uleb128 0x3
	.long	.LASF450
	.byte	0x1b
	.byte	0x88
	.byte	0x1b
	.long	0x1347
	.uleb128 0x12
	.long	.LASF451
	.long	0x3c
	.byte	0x1b
	.byte	0x8a
	.byte	0x6
	.long	0x1659
	.uleb128 0x2
	.long	.LASF452
	.byte	0
	.uleb128 0x2
	.long	.LASF453
	.byte	0x1
	.uleb128 0x2
	.long	.LASF454
	.byte	0x2
	.uleb128 0x2
	.long	.LASF455
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.long	.LASF456
	.byte	0x1b
	.byte	0x94
	.byte	0x23
	.long	0x1630
	.uleb128 0x5
	.long	0x1618
	.uleb128 0x6
	.long	.LASF457
	.byte	0x20
	.byte	0x1c
	.byte	0x27
	.byte	0x8
	.long	0x16c6
	.uleb128 0x1
	.long	.LASF458
	.byte	0x1c
	.byte	0x28
	.byte	0x7
	.long	0x356
	.byte	0
	.uleb128 0x1
	.long	.LASF459
	.byte	0x1c
	.byte	0x29
	.byte	0x6
	.long	0x70
	.byte	0x8
	.uleb128 0x1
	.long	.LASF460
	.byte	0x1c
	.byte	0x2a
	.byte	0x6
	.long	0xae
	.byte	0xc
	.uleb128 0x1
	.long	.LASF461
	.byte	0x1c
	.byte	0x2b
	.byte	0x8
	.long	0xd40
	.byte	0x14
	.uleb128 0x1
	.long	.LASF373
	.byte	0x1c
	.byte	0x2c
	.byte	0x6
	.long	0x70
	.byte	0x18
	.uleb128 0x1
	.long	.LASF462
	.byte	0x1c
	.byte	0x2d
	.byte	0x6
	.long	0x70
	.byte	0x1c
	.byte	0
	.uleb128 0x3
	.long	.LASF463
	.byte	0x1c
	.byte	0x30
	.byte	0x25
	.long	0x166a
	.uleb128 0x3
	.long	.LASF464
	.byte	0x19
	.byte	0x2d
	.byte	0x14
	.long	0x16de
	.uleb128 0x5
	.long	0x16e3
	.uleb128 0x10
	.long	0x593
	.long	0x16f2
	.uleb128 0x4
	.long	0xd6
	.byte	0
	.uleb128 0x3
	.long	.LASF465
	.byte	0x19
	.byte	0x34
	.byte	0xf
	.long	0x16fe
	.uleb128 0x5
	.long	0x1703
	.uleb128 0x10
	.long	0x70
	.long	0x1717
	.uleb128 0x4
	.long	0xd6
	.uleb128 0x4
	.long	0x593
	.byte	0
	.uleb128 0x12
	.long	.LASF466
	.long	0x3c
	.byte	0x19
	.byte	0x39
	.byte	0x6
	.long	0x173a
	.uleb128 0x2
	.long	.LASF467
	.byte	0
	.uleb128 0x2
	.long	.LASF468
	.byte	0x1
	.uleb128 0x2
	.long	.LASF469
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF470
	.byte	0x19
	.byte	0x3f
	.byte	0x1c
	.long	0x1717
	.uleb128 0x6
	.long	.LASF471
	.byte	0x18
	.byte	0x19
	.byte	0x41
	.byte	0x8
	.long	0x177b
	.uleb128 0x1
	.long	.LASF472
	.byte	0x19
	.byte	0x42
	.byte	0x6
	.long	0x70
	.byte	0
	.uleb128 0x1
	.long	.LASF376
	.byte	0x19
	.byte	0x43
	.byte	0xb
	.long	0x593
	.byte	0x8
	.uleb128 0x1
	.long	.LASF473
	.byte	0x19
	.byte	0x44
	.byte	0x6
	.long	0x70
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.long	.LASF474
	.byte	0x19
	.byte	0x47
	.byte	0x23
	.long	0x1746
	.uleb128 0x3
	.long	.LASF475
	.byte	0x19
	.byte	0x66
	.byte	0x1a
	.long	0x1086
	.uleb128 0x8
	.byte	0x10
	.byte	0x4
	.long	.LASF476
	.uleb128 0x25
	.long	.LASF531
	.byte	0x20
	.byte	0x3f
	.byte	0x15
	.long	0xf54
	.uleb128 0x6
	.long	.LASF477
	.byte	0x60
	.byte	0x1
	.byte	0x13
	.byte	0x8
	.long	0x1842
	.uleb128 0x1
	.long	.LASF478
	.byte	0x1
	.byte	0x15
	.byte	0x19
	.long	0x16c6
	.byte	0
	.uleb128 0x1
	.long	.LASF479
	.byte	0x1
	.byte	0x16
	.byte	0xf
	.long	0x11c3
	.byte	0x20
	.uleb128 0x1
	.long	.LASF480
	.byte	0x1
	.byte	0x17
	.byte	0xc
	.long	0x690
	.byte	0x28
	.uleb128 0x1
	.long	.LASF481
	.byte	0x1
	.byte	0x18
	.byte	0xc
	.long	0x690
	.byte	0x29
	.uleb128 0x1
	.long	.LASF482
	.byte	0x1
	.byte	0x19
	.byte	0xc
	.long	0x690
	.byte	0x2a
	.uleb128 0xc
	.string	"mf"
	.byte	0x1
	.byte	0x1a
	.byte	0x10
	.long	0x126d
	.byte	0x30
	.uleb128 0xc
	.string	"scm"
	.byte	0x1
	.byte	0x1b
	.byte	0x14
	.long	0x1321
	.byte	0x38
	.uleb128 0x1
	.long	.LASF483
	.byte	0x1
	.byte	0x1c
	.byte	0xa
	.long	0xe2
	.byte	0x40
	.uleb128 0x1
	.long	.LASF393
	.byte	0x1
	.byte	0x1d
	.byte	0xf
	.long	0x1842
	.byte	0x48
	.uleb128 0x1
	.long	.LASF484
	.byte	0x1
	.byte	0x1e
	.byte	0xb
	.long	0xdd
	.byte	0x50
	.uleb128 0x1
	.long	.LASF485
	.byte	0x1
	.byte	0x1f
	.byte	0xb
	.long	0xdd
	.byte	0x58
	.byte	0
	.uleb128 0x5
	.long	0x366
	.uleb128 0x3
	.long	.LASF486
	.byte	0x1
	.byte	0x22
	.byte	0x1a
	.long	0x17a6
	.uleb128 0x26
	.long	.LASF489
	.byte	0x1d
	.value	0x208
	.byte	0xc
	.long	0x70
	.uleb128 0xf
	.long	.LASF487
	.byte	0x19
	.byte	0xaa
	.byte	0x6
	.long	0x70
	.long	0x187b
	.uleb128 0x4
	.long	0x187b
	.uleb128 0x4
	.long	0x11c3
	.byte	0
	.uleb128 0x5
	.long	0x1787
	.uleb128 0xd
	.long	.LASF488
	.byte	0x15
	.value	0x188
	.byte	0x6
	.long	0x70
	.long	0x18a6
	.uleb128 0x4
	.long	0x11c3
	.uleb128 0x4
	.long	0x70
	.uleb128 0x4
	.long	0x11c3
	.uleb128 0x4
	.long	0x70
	.byte	0
	.uleb128 0x1e
	.long	.LASF490
	.byte	0x19
	.byte	0x8c
	.byte	0xc
	.long	0x187b
	.uleb128 0x27
	.long	.LASF495
	.byte	0x18
	.byte	0x74
	.byte	0x7
	.long	0x18c9
	.uleb128 0x4
	.long	0x126d
	.uleb128 0x4
	.long	0xf60
	.byte	0
	.uleb128 0xf
	.long	.LASF491
	.byte	0x18
	.byte	0xf1
	.byte	0xc
	.long	0x11c3
	.long	0x18e4
	.uleb128 0x4
	.long	0x126d
	.uleb128 0x4
	.long	0xd34
	.byte	0
	.uleb128 0xd
	.long	.LASF492
	.byte	0x1b
	.value	0x15c
	.byte	0x15
	.long	0x959
	.long	0x18fb
	.uleb128 0x4
	.long	0x18fb
	.byte	0
	.uleb128 0x5
	.long	0x1624
	.uleb128 0xd
	.long	.LASF493
	.byte	0x1b
	.value	0x153
	.byte	0x15
	.long	0x959
	.long	0x1917
	.uleb128 0x4
	.long	0x18fb
	.byte	0
	.uleb128 0xf
	.long	.LASF494
	.byte	0x1b
	.byte	0xd6
	.byte	0xe
	.long	0x18fb
	.long	0x1932
	.uleb128 0x4
	.long	0x1321
	.uleb128 0x4
	.long	0x366
	.byte	0
	.uleb128 0x28
	.long	.LASF496
	.byte	0x18
	.value	0x146
	.byte	0x7
	.long	0x1945
	.uleb128 0x4
	.long	0x126d
	.byte	0
	.uleb128 0x1e
	.long	.LASF497
	.byte	0x18
	.byte	0x47
	.byte	0xd
	.long	0x126d
	.uleb128 0xd
	.long	.LASF498
	.byte	0x1b
	.value	0x19e
	.byte	0xe
	.long	0x366
	.long	0x1968
	.uleb128 0x4
	.long	0x18fb
	.byte	0
	.uleb128 0xd
	.long	.LASF499
	.byte	0x12
	.value	0x12b
	.byte	0x8
	.long	0xd6
	.long	0x197f
	.uleb128 0x4
	.long	0xfa
	.byte	0
	.uleb128 0xf
	.long	.LASF500
	.byte	0x11
	.byte	0x35
	.byte	0x9
	.long	0xfa
	.long	0x1995
	.uleb128 0x4
	.long	0x11c8
	.byte	0
	.uleb128 0xd
	.long	.LASF501
	.byte	0x1b
	.value	0x10e
	.byte	0x17
	.long	0x11c8
	.long	0x19ac
	.uleb128 0x4
	.long	0x1321
	.byte	0
	.uleb128 0xf
	.long	.LASF502
	.byte	0x18
	.byte	0x69
	.byte	0x1c
	.long	0x123d
	.long	0x19c2
	.uleb128 0x4
	.long	0x126d
	.byte	0
	.uleb128 0xd
	.long	.LASF503
	.byte	0x15
	.value	0x19f
	.byte	0x6
	.long	0x70
	.long	0x19e3
	.uleb128 0x4
	.long	0x11c3
	.uleb128 0x4
	.long	0x3c
	.uleb128 0x4
	.long	0xd6
	.byte	0
	.uleb128 0xf
	.long	.LASF504
	.byte	0x1d
	.byte	0xb2
	.byte	0xc
	.long	0x70
	.long	0x19f9
	.uleb128 0x4
	.long	0x565
	.byte	0
	.uleb128 0xd
	.long	.LASF505
	.byte	0x1d
	.value	0x2a3
	.byte	0xf
	.long	0xfa
	.long	0x1a1f
	.uleb128 0x4
	.long	0xd8
	.uleb128 0x4
	.long	0xfa
	.uleb128 0x4
	.long	0xfa
	.uleb128 0x4
	.long	0x56a
	.byte	0
	.uleb128 0xf
	.long	.LASF506
	.byte	0x1e
	.byte	0x3d
	.byte	0xe
	.long	0xd6
	.long	0x1a3f
	.uleb128 0x4
	.long	0xd6
	.uleb128 0x4
	.long	0x70
	.uleb128 0x4
	.long	0xfa
	.byte	0
	.uleb128 0xd
	.long	.LASF507
	.byte	0x1d
	.value	0x102
	.byte	0xe
	.long	0x565
	.long	0x1a5b
	.uleb128 0x4
	.long	0x36b
	.uleb128 0x4
	.long	0x36b
	.byte	0
	.uleb128 0xf
	.long	.LASF508
	.byte	0x1f
	.byte	0x69
	.byte	0xc
	.long	0x70
	.long	0x1a71
	.uleb128 0x4
	.long	0x366
	.byte	0
	.uleb128 0xd
	.long	.LASF509
	.byte	0x12
	.value	0x12f
	.byte	0x9
	.long	0xdd
	.long	0x1a88
	.uleb128 0x4
	.long	0x366
	.byte	0
	.uleb128 0x29
	.long	.LASF510
	.byte	0x1f
	.value	0x270
	.byte	0xd
	.long	0x1a9b
	.uleb128 0x4
	.long	0x70
	.byte	0
	.uleb128 0xd
	.long	.LASF511
	.byte	0x1d
	.value	0x164
	.byte	0xc
	.long	0x70
	.long	0x1ab3
	.uleb128 0x4
	.long	0x366
	.uleb128 0x2a
	.byte	0
	.uleb128 0xf
	.long	.LASF512
	.byte	0x1e
	.byte	0x9c
	.byte	0xc
	.long	0x70
	.long	0x1ace
	.uleb128 0x4
	.long	0x366
	.uleb128 0x4
	.long	0x366
	.byte	0
	.uleb128 0x2b
	.long	.LASF532
	.byte	0x1
	.byte	0x9e
	.byte	0x5
	.long	0x70
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bb4
	.uleb128 0x14
	.long	.LASF513
	.byte	0x9e
	.byte	0xe
	.long	0x70
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x14
	.long	.LASF514
	.byte	0x9e
	.byte	0x1a
	.long	0x37d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x7
	.long	.LASF515
	.byte	0xa1
	.byte	0xe
	.long	0x1847
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x7
	.long	.LASF516
	.byte	0xae
	.byte	0x10
	.long	0x18fb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x7
	.long	.LASF517
	.byte	0xb1
	.byte	0xf
	.long	0x11c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x7
	.long	.LASF518
	.byte	0xb2
	.byte	0xf
	.long	0x11c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x7
	.long	.LASF519
	.byte	0xb4
	.byte	0xf
	.long	0x11c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x7
	.long	.LASF520
	.byte	0xb5
	.byte	0xf
	.long	0x11c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x7
	.long	.LASF521
	.byte	0xba
	.byte	0xf
	.long	0x11c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x7
	.long	.LASF479
	.byte	0xbd
	.byte	0xf
	.long	0x11c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0xe
	.string	"tee"
	.byte	0xc0
	.byte	0xf
	.long	0x11c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x7
	.long	.LASF154
	.byte	0xc3
	.byte	0xf
	.long	0x187b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2c
	.string	"c"
	.byte	0x1
	.value	0x102
	.byte	0xa
	.long	0xe2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -201
	.byte	0
	.uleb128 0x18
	.long	.LASF524
	.byte	0x8d
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c06
	.uleb128 0x16
	.string	"v"
	.byte	0x8d
	.byte	0x2f
	.long	0x1c06
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x7
	.long	.LASF522
	.byte	0x8f
	.byte	0x9
	.long	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.string	"i"
	.byte	0x90
	.byte	0x6
	.long	0x70
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x7
	.long	.LASF523
	.byte	0x91
	.byte	0x16
	.long	0x11c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x5
	.long	0x1847
	.uleb128 0x18
	.long	.LASF525
	.byte	0x75
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c90
	.uleb128 0x16
	.string	"v"
	.byte	0x75
	.byte	0x2d
	.long	0x1c06
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1096
	.uleb128 0x14
	.long	.LASF146
	.byte	0x75
	.byte	0x3a
	.long	0x11c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0xe
	.string	"f"
	.byte	0x78
	.byte	0xb
	.long	0x565
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0xe
	.string	"buf"
	.byte	0x79
	.byte	0xa
	.long	0x1c90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x7
	.long	.LASF526
	.byte	0x7b
	.byte	0xc
	.long	0xfa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1064
	.uleb128 0x19
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0xe
	.string	"cpy"
	.byte	0x81
	.byte	0xf
	.long	0xdd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0xe2
	.long	0x1ca1
	.uleb128 0x2d
	.long	0x43
	.value	0x400
	.byte	0
	.uleb128 0x18
	.long	.LASF527
	.byte	0x5e
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d26
	.uleb128 0x16
	.string	"v"
	.byte	0x5e
	.byte	0x28
	.long	0x1c06
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1096
	.uleb128 0x14
	.long	.LASF146
	.byte	0x5e
	.byte	0x35
	.long	0x11c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0xe
	.string	"f"
	.byte	0x61
	.byte	0xb
	.long	0x565
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0xe
	.string	"buf"
	.byte	0x62
	.byte	0xa
	.long	0x1c90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x7
	.long	.LASF526
	.byte	0x64
	.byte	0xc
	.long	0xfa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1064
	.uleb128 0x19
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0xe
	.string	"cpy"
	.byte	0x6a
	.byte	0xf
	.long	0xdd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF533
	.byte	0x1
	.byte	0x28
	.byte	0x6
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.long	.LASF513
	.byte	0x28
	.byte	0x14
	.long	0x70
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.long	.LASF514
	.byte	0x28
	.byte	0x20
	.long	0x37d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.string	"v"
	.byte	0x28
	.byte	0x32
	.long	0x1c06
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xe
	.string	"i"
	.byte	0x2a
	.byte	0x9
	.long	0x70
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x1d96
	.uleb128 0xe
	.string	"p"
	.byte	0x2f
	.byte	0x13
	.long	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x19
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x7
	.long	.LASF528
	.byte	0x4f
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x17
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x2a
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
.LASF221:
	.string	"MS_DSCAP_ID"
.LASF405:
	.string	"MS_SND_CARD_LINE"
.LASF53:
	.string	"__align"
.LASF24:
	.string	"__value64"
.LASF87:
	.string	"_unused2"
.LASF73:
	.string	"_fileno"
.LASF33:
	.string	"__pthread_mutex_s"
.LASF487:
	.string	"ms_ticker_attach"
.LASF381:
	.string	"av_load"
.LASF275:
	.string	"MS_AAC_ELD_ENC_ID"
.LASF200:
	.string	"MS_MPEG4_ENC_ID"
.LASF273:
	.string	"MS_GENERIC_PLC_ID"
.LASF440:
	.string	"get_control"
.LASF255:
	.string	"MS_G726_24_ENC_ID"
.LASF224:
	.string	"MS_EQUALIZER_ID"
.LASF469:
	.string	"MS_TICKER_PRIO_REALTIME"
.LASF169:
	.string	"MS_OSS_WRITE_ID"
.LASF8:
	.string	"__uint8_t"
.LASF355:
	.string	"plugins_dir"
.LASF450:
	.string	"MSSndCard"
.LASF235:
	.string	"MS_H264_DEC_ID"
.LASF267:
	.string	"MS_AAL2_G726_24_DEC_ID"
.LASF378:
	.string	"get_cur_time_ptr"
.LASF366:
	.string	"echo_canceller_filtername"
.LASF78:
	.string	"_shortbuf"
.LASF96:
	.string	"sa_family_t"
.LASF132:
	.string	"reserved1"
.LASF133:
	.string	"reserved2"
.LASF382:
	.string	"prio"
.LASF161:
	.string	"_MSQueue"
.LASF158:
	.string	"postponed_task"
.LASF438:
	.string	"set_capture"
.LASF454:
	.string	"MS_SND_CARD_STREAM_MEDIA"
.LASF484:
	.string	"script_preambula_name"
.LASF362:
	.string	"statistics_enabled"
.LASF256:
	.string	"MS_G726_16_ENC_ID"
.LASF260:
	.string	"MS_AAL2_G726_16_ENC_ID"
.LASF93:
	.string	"uint16_t"
.LASF456:
	.string	"MSSndCardStreamType"
.LASF59:
	.string	"_flags"
.LASF111:
	.string	"next"
.LASF136:
	.string	"net_addr"
.LASF423:
	.string	"MSSndCardSetControlFunc"
.LASF268:
	.string	"MS_AAL2_G726_16_DEC_ID"
.LASF13:
	.string	"__off_t"
.LASF401:
	.string	"MS_SND_CARD_CAPTURE"
.LASF452:
	.string	"MS_SND_CARD_STREAM_VOICE"
.LASF278:
	.string	"MS_OPUS_DEC_ID"
.LASF293:
	.string	"MS_MEDIACODEC_H264_ENC_ID"
.LASF467:
	.string	"MS_TICKER_PRIO_NORMAL"
.LASF79:
	.string	"_lock"
.LASF297:
	.string	"MS_PCAP_FILE_PLAYER_ID"
.LASF247:
	.string	"MY_FILTER_ID"
.LASF529:
	.string	"GNU C17 11.3.0 -mms-bitfields -mtune=generic -march=x86-64 -ggdb -ggdb -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF365:
	.string	"image_resources_dir"
.LASF523:
	.string	"elem"
.LASF144:
	.string	"queue_t"
.LASF508:
	.string	"atoi"
.LASF480:
	.string	"file_is_open"
.LASF286:
	.string	"MS_VT_H263_ENC_ID"
.LASF245:
	.string	"MS_ANDROID_VIDEO_WRITE_ID"
.LASF236:
	.string	"MS_IOUNIT_READ_ID"
.LASF50:
	.string	"pthread_t"
.LASF531:
	.string	"lua_filter_desc"
.LASF305:
	.string	"MS_MEDIACODEC_H265_ENC_ID"
.LASF145:
	.string	"_MSCPoint"
.LASF210:
	.string	"MS_CA_WRITE_ID"
.LASF320:
	.string	"MSFilterMethodFunc"
.LASF212:
	.string	"MS_WINSNDDS_WRITE_ID"
.LASF465:
	.string	"MSTickerTickFunc"
.LASF466:
	.string	"_MSTickerPrio"
.LASF288:
	.string	"MS_VT_H264_ENC_ID"
.LASF240:
	.string	"MS_JPEG_WRITER_ID"
.LASF137:
	.string	"net_addrlen"
.LASF279:
	.string	"MS_QSA_READ_ID"
.LASF427:
	.string	"MSSndCardDuplicateFunc"
.LASF368:
	.string	"_MSTicker"
.LASF65:
	.string	"_IO_write_end"
.LASF36:
	.string	"__owner"
.LASF103:
	.string	"s_addr"
.LASF283:
	.string	"MS_VAD_DTX_ID"
.LASF239:
	.string	"MS_ANDROID_SOUND_WRITE_ID"
.LASF441:
	.string	"create_reader"
.LASF307:
	.string	"MS_VT_H265_ENC_ID"
.LASF118:
	.string	"ipi_addr"
.LASF389:
	.string	"sound_devices_descriptions"
.LASF335:
	.string	"_MSFilterDesc"
.LASF152:
	.string	"factory"
.LASF379:
	.string	"get_cur_time_data"
.LASF211:
	.string	"MS_WINSNDDS_READ_ID"
.LASF460:
	.string	"frequencies"
.LASF533:
	.string	"scan_args"
.LASF528:
	.string	"freq"
.LASF333:
	.string	"bp_elapsed"
.LASF160:
	.string	"MSCPoint"
.LASF345:
	.string	"uninit"
.LASF148:
	.string	"desc"
.LASF34:
	.string	"__lock"
.LASF32:
	.string	"__pthread_list_t"
.LASF505:
	.string	"fread"
.LASF429:
	.string	"MSSndCardUnloadFunc"
.LASF417:
	.string	"latency"
.LASF408:
	.string	"MS_SND_CARD_MASTER_MUTE"
.LASF339:
	.string	"ninputs"
.LASF475:
	.string	"MSTicker"
.LASF521:
	.string	"lua_filter"
.LASF390:
	.string	"_MSVideoPresetsManager"
.LASF517:
	.string	"snd_card_read"
.LASF372:
	.string	"thread"
.LASF140:
	.string	"mblk_t"
.LASF392:
	.string	"_MSSndCardManager"
.LASF503:
	.string	"ms_filter_call_method"
.LASF276:
	.string	"MS_AAC_ELD_DEC_ID"
.LASF201:
	.string	"MS_MPEG4_DEC_ID"
.LASF519:
	.string	"voidsource"
.LASF315:
	.string	"mean"
.LASF9:
	.string	"__uint16_t"
.LASF116:
	.string	"ortp_mutex_t"
.LASF250:
	.string	"MS_VP8_DEC_ID"
.LASF328:
	.string	"MS_FILTER_ENCODING_CAPTURER"
.LASF526:
	.string	"read_res"
.LASF241:
	.string	"MS_QRCODE_READER_ID"
.LASF272:
	.string	"MS_GLXVIDEO_ID"
.LASF51:
	.string	"__data"
.LASF153:
	.string	"padding"
.LASF384:
	.string	"wait_next_tick_data"
.LASF72:
	.string	"_chain"
.LASF412:
	.string	"MSSndCardDetectFunc"
.LASF223:
	.string	"MS_AQ_WRITE_ID"
.LASF131:
	.string	"b_wptr"
.LASF172:
	.string	"MS_ALAW_ENC_ID"
.LASF2:
	.string	"unsigned char"
.LASF334:
	.string	"MSFilterStats"
.LASF415:
	.string	"capabilities"
.LASF129:
	.string	"b_datap"
.LASF54:
	.string	"pthread_mutex_t"
.LASF530:
	.string	"_IO_lock_t"
.LASF312:
	.string	"float"
.LASF213:
	.string	"MS_STATIC_IMAGE_ID"
.LASF309:
	.string	"MS_ANDROID_OPENGL_DISPLAY_ID"
.LASF264:
	.string	"MS_G726_16_DEC_ID"
.LASF491:
	.string	"ms_factory_create_filter"
.LASF432:
	.string	"MSSndCardAudioRouteFunc"
.LASF314:
	.string	"_MSUBoxPlot"
.LASF481:
	.string	"en_gen"
.LASF527:
	.string	"load_script_body"
.LASF242:
	.string	"MS_X11VIDEO_ID"
.LASF343:
	.string	"process"
.LASF455:
	.string	"MS_SND_CARD_STREAM_DTMF"
.LASF457:
	.string	"_MSDtmfGenCustomTone"
.LASF177:
	.string	"MS_FILE_REC_ID"
.LASF38:
	.string	"__kind"
.LASF443:
	.string	"duplicate"
.LASF95:
	.string	"uint64_t"
.LASF44:
	.string	"__g1_start"
.LASF292:
	.string	"MS_MEDIACODEC_H264_DEC_ID"
.LASF193:
	.string	"MS_TEE_ID"
.LASF341:
	.string	"init"
.LASF21:
	.string	"tv_usec"
.LASF47:
	.string	"__g1_orig_size"
.LASF287:
	.string	"MS_VT_H263_DEC_ID"
.LASF459:
	.string	"duration"
.LASF435:
	.string	"detect"
.LASF168:
	.string	"MS_OSS_READ_ID"
.LASF304:
	.string	"MS_MEDIACODEC_H265_DEC_ID"
.LASF358:
	.string	"max_payload_size"
.LASF183:
	.string	"MS_V4L_ID"
.LASF64:
	.string	"_IO_write_ptr"
.LASF525:
	.string	"load_script_preambula"
.LASF189:
	.string	"MS_WINSND_READ_ID"
.LASF16:
	.string	"__suseconds_t"
.LASF289:
	.string	"MS_VT_H264_DEC_ID"
.LASF510:
	.string	"exit"
.LASF477:
	.string	"_app_vars"
.LASF162:
	.string	"MSQueue"
.LASF346:
	.string	"methods"
.LASF296:
	.string	"MS_UDP_SEND_ID"
.LASF100:
	.string	"__ss_align"
.LASF493:
	.string	"ms_snd_card_create_reader"
.LASF52:
	.string	"__size"
.LASF142:
	.string	"_q_stopper"
.LASF434:
	.string	"driver_type"
.LASF88:
	.string	"FILE"
.LASF218:
	.string	"MS_VFW_ID"
.LASF446:
	.string	"audio_session_activated"
.LASF340:
	.string	"noutputs"
.LASF306:
	.string	"MS_VT_H265_DEC_ID"
.LASF393:
	.string	"cards"
.LASF45:
	.string	"__g_refs"
.LASF19:
	.string	"size_t"
.LASF35:
	.string	"__count"
.LASF92:
	.string	"uint8_t"
.LASF310:
	.string	"MS_ANDROID_TEXTURE_DISPLAY_ID"
.LASF518:
	.string	"snd_card_write"
.LASF422:
	.string	"MSSndCardGetLevelFunc"
.LASF424:
	.string	"MSSndCardGetControlFunc"
.LASF486:
	.string	"app_vars"
.LASF68:
	.string	"_IO_save_base"
.LASF122:
	.string	"addr"
.LASF156:
	.string	"last_tick"
.LASF57:
	.string	"socklen_t"
.LASF222:
	.string	"MS_AQ_READ_ID"
.LASF48:
	.string	"__wrefs"
.LASF319:
	.string	"MSFilterFunc"
.LASF164:
	.string	"MS_FILTER_PLUGIN_ID"
.LASF124:
	.string	"ortp_recv_addr_t"
.LASF374:
	.string	"exec_id"
.LASF198:
	.string	"MS_PASND_READ_ID"
.LASF98:
	.string	"ss_family"
.LASF300:
	.string	"MS_G729_ENC_ID"
.LASF167:
	.string	"MS_ALSA_WRITE_ID"
.LASF128:
	.string	"b_cont"
.LASF336:
	.string	"text"
.LASF494:
	.string	"ms_snd_card_manager_get_card"
.LASF82:
	.string	"_wide_data"
.LASF206:
	.string	"MS_VOLUME_ID"
.LASF115:
	.string	"ortp_thread_t"
.LASF413:
	.string	"MSSndCardInitFunc"
.LASF108:
	.string	"__in6_u"
.LASF498:
	.string	"ms_snd_card_get_string_id"
.LASF29:
	.string	"__pthread_internal_list"
.LASF135:
	.string	"recv_addr"
.LASF338:
	.string	"enc_fmt"
.LASF357:
	.string	"cpu_count"
.LASF30:
	.string	"__prev"
.LASF244:
	.string	"MS_ANDROID_VIDEO_READ_ID"
.LASF277:
	.string	"MS_OPUS_ENC_ID"
.LASF134:
	.string	"timestamp"
.LASF237:
	.string	"MS_IOUNIT_WRITE_ID"
.LASF214:
	.string	"MS_V4L2_CAPTURE_ID"
.LASF282:
	.string	"MS_MKV_PLAYER_ID"
.LASF155:
	.string	"notify_callbacks"
.LASF12:
	.string	"__uint64_t"
.LASF359:
	.string	"sndcardmanager"
.LASF478:
	.string	"dtmf_cfg"
.LASF243:
	.string	"MS_ANDROID_DISPLAY_ID"
.LASF230:
	.string	"MS_CHANNEL_ADAPTER_ID"
.LASF173:
	.string	"MS_ALAW_DEC_ID"
.LASF18:
	.string	"__socklen_t"
.LASF462:
	.string	"repeat_count"
.LASF479:
	.string	"recorder"
.LASF330:
	.string	"MSFilterCategory"
.LASF504:
	.string	"fclose"
.LASF104:
	.string	"__u6_addr8"
.LASF249:
	.string	"MS_VP8_ENC_ID"
.LASF233:
	.string	"MS_ITC_SOURCE_ID"
.LASF520:
	.string	"dtmfgen"
.LASF107:
	.string	"in6_addr"
.LASF141:
	.string	"_queue"
.LASF419:
	.string	"MSSndCardUninitFunc"
.LASF473:
	.string	"current_late_ms"
.LASF56:
	.string	"pthread_cond_t"
.LASF437:
	.string	"get_level"
.LASF399:
	.string	"MS_SND_CARD_MASTER"
.LASF217:
	.string	"MS_MIRE_ID"
.LASF516:
	.string	"snd_card"
.LASF298:
	.string	"MS_OGL_ID"
.LASF163:
	.string	"MS_FILTER_NOT_SET_ID"
.LASF506:
	.string	"memset"
.LASF253:
	.string	"MS_G726_40_ENC_ID"
.LASF332:
	.string	"name"
.LASF186:
	.string	"MS_H263_DEC_ID"
.LASF411:
	.string	"MSSndCardControlElem"
.LASF70:
	.string	"_IO_save_end"
.LASF31:
	.string	"__next"
.LASF436:
	.string	"set_level"
.LASF265:
	.string	"MS_AAL2_G726_40_DEC_ID"
.LASF27:
	.string	"__atomic_wide_counter"
.LASF483:
	.string	"cards_count"
.LASF295:
	.string	"MS_BV16_ENC_ID"
.LASF15:
	.string	"__time_t"
.LASF416:
	.string	"preferred_sample_rate"
.LASF174:
	.string	"MS_RTP_SEND_ID"
.LASF202:
	.string	"MS_MJPEG_DEC_ID"
.LASF428:
	.string	"MSSndCardSetUsageHintFunc"
.LASF231:
	.string	"MS_AUDIO_MIXER_ID"
.LASF248:
	.string	"MS_IOS_DISPLAY_ID"
.LASF461:
	.string	"amplitude"
.LASF433:
	.string	"_MSSndCardDesc"
.LASF302:
	.string	"MS_WASAPI_WRITE_ID"
.LASF40:
	.string	"__elision"
.LASF269:
	.string	"MS_L16_ENC_ID"
.LASF500:
	.string	"bctbx_list_size"
.LASF119:
	.string	"ipi6_addr"
.LASF501:
	.string	"ms_snd_card_manager_get_list"
.LASF344:
	.string	"postprocess"
.LASF3:
	.string	"short unsigned int"
.LASF6:
	.string	"signed char"
.LASF46:
	.string	"__g_size"
.LASF99:
	.string	"__ss_padding"
.LASF175:
	.string	"MS_RTP_RECV_ID"
.LASF445:
	.string	"usage_hint"
.LASF219:
	.string	"MS_VOID_SOURCE_ID"
.LASF181:
	.string	"MS_GSM_ENC_ID"
.LASF317:
	.string	"count"
.LASF14:
	.string	"__off64_t"
.LASF377:
	.string	"orig"
.LASF187:
	.string	"MS_ARTS_READ_ID"
.LASF369:
	.string	"cond"
.LASF62:
	.string	"_IO_read_base"
.LASF80:
	.string	"_offset"
.LASF380:
	.string	"cur_time_lock"
.LASF67:
	.string	"_IO_buf_end"
.LASF490:
	.string	"ms_ticker_new"
.LASF349:
	.string	"_MSFactory"
.LASF204:
	.string	"MS_RESAMPLE_ID"
.LASF157:
	.string	"stats"
.LASF449:
	.string	"MSSndCardDesc"
.LASF97:
	.string	"sockaddr_storage"
.LASF327:
	.string	"MS_FILTER_DECODER"
.LASF363:
	.string	"voip_initd"
.LASF86:
	.string	"_mode"
.LASF146:
	.string	"filter"
.LASF226:
	.string	"MS_JPEG_ENC_ID"
.LASF63:
	.string	"_IO_write_base"
.LASF299:
	.string	"MS_G729_DEC_ID"
.LASF337:
	.string	"category"
.LASF376:
	.string	"time"
.LASF159:
	.string	"seen"
.LASF458:
	.string	"tone_name"
.LASF11:
	.string	"long int"
.LASF492:
	.string	"ms_snd_card_create_writer"
.LASF138:
	.string	"ttl_or_hl"
.LASF121:
	.string	"family"
.LASF89:
	.string	"_IO_marker"
.LASF371:
	.string	"task_list"
.LASF271:
	.string	"MS_OSX_GL_DISPLAY_ID"
.LASF28:
	.string	"timeval"
.LASF196:
	.string	"MS_THEORA_ENC_ID"
.LASF375:
	.string	"ticks"
.LASF331:
	.string	"_MSFilterStats"
.LASF439:
	.string	"set_control"
.LASF281:
	.string	"MS_MKV_RECORDER_ID"
.LASF190:
	.string	"MS_WINSND_WRITE_ID"
.LASF488:
	.string	"ms_filter_link"
.LASF367:
	.string	"expected_video_bandwidth"
.LASF102:
	.string	"in_addr"
.LASF94:
	.string	"uint32_t"
.LASF191:
	.string	"MS_SPEEX_EC_ID"
.LASF165:
	.string	"MS_FILTER_BASE_ID"
.LASF90:
	.string	"_IO_codecvt"
.LASF373:
	.string	"interval"
.LASF385:
	.string	"late_event"
.LASF476:
	.string	"long double"
.LASF205:
	.string	"MS_VIDEO_OUT_ID"
.LASF410:
	.string	"MS_SND_CARD_CAPTURE_MUTE"
.LASF316:
	.string	"quad_moment"
.LASF125:
	.string	"msgb"
.LASF5:
	.string	"long unsigned int"
.LASF109:
	.string	"bool_t"
.LASF414:
	.string	"_MSSndCard"
.LASF522:
	.string	"ndev"
.LASF474:
	.string	"MSTickerLateEvent"
.LASF394:
	.string	"descs"
.LASF216:
	.string	"MS_H263_OLD_ENC_ID"
.LASF321:
	.string	"_MSFilterMethod"
.LASF178:
	.string	"MS_DTMF_GEN_ID"
.LASF238:
	.string	"MS_ANDROID_SOUND_READ_ID"
.LASF17:
	.string	"char"
.LASF192:
	.string	"MS_PIX_CONV_ID"
.LASF324:
	.string	"_MSFilterCategory"
.LASF398:
	.string	"_MSSndCardMixerElem"
.LASF39:
	.string	"__spins"
.LASF120:
	.string	"ortp_recv_addr"
.LASF66:
	.string	"_IO_buf_base"
.LASF37:
	.string	"__nusers"
.LASF261:
	.string	"MS_G726_40_DEC_ID"
.LASF485:
	.string	"script_body_name"
.LASF353:
	.string	"formats"
.LASF170:
	.string	"MS_ULAW_ENC_ID"
.LASF209:
	.string	"MS_CA_READ_ID"
.LASF61:
	.string	"_IO_read_end"
.LASF482:
	.string	"en_rec"
.LASF291:
	.string	"MS_RTT_4103_SINK_ID"
.LASF58:
	.string	"_IO_FILE"
.LASF294:
	.string	"MS_BV16_DEC_ID"
.LASF101:
	.string	"in_addr_t"
.LASF407:
	.string	"_MSSndCardControlElem"
.LASF91:
	.string	"_IO_wide_data"
.LASF105:
	.string	"__u6_addr16"
.LASF203:
	.string	"MS_JOIN_ID"
.LASF176:
	.string	"MS_FILE_PLAYER_ID"
.LASF23:
	.string	"__high"
.LASF426:
	.string	"MSSndCardCreateWriterFunc"
.LASF270:
	.string	"MS_L16_DEC_ID"
.LASF383:
	.string	"wait_next_tick"
.LASF149:
	.string	"lock"
.LASF22:
	.string	"__low"
.LASF274:
	.string	"MS_WEBRTC_AEC_ID"
.LASF262:
	.string	"MS_G726_32_DEC_ID"
.LASF85:
	.string	"__pad5"
.LASF182:
	.string	"MS_GSM_DEC_ID"
.LASF106:
	.string	"__u6_addr32"
.LASF199:
	.string	"MS_PASND_WRITE_ID"
.LASF246:
	.string	"MS_TONE_DETECTOR_ID"
.LASF464:
	.string	"MSTickerTimeFunc"
.LASF257:
	.string	"MS_AAL2_G726_40_ENC_ID"
.LASF325:
	.string	"MS_FILTER_OTHER"
.LASF71:
	.string	"_markers"
.LASF425:
	.string	"MSSndCardCreateReaderFunc"
.LASF81:
	.string	"_codecvt"
.LASF323:
	.string	"MSFilterMethod"
.LASF184:
	.string	"MS_SDL_OUT_ID"
.LASF313:
	.string	"double"
.LASF280:
	.string	"MS_QSA_WRITE_ID"
.LASF509:
	.string	"ortp_strdup"
.LASF208:
	.string	"MS_SNOW_ENC_ID"
.LASF49:
	.string	"__g_signals"
.LASF513:
	.string	"argc"
.LASF179:
	.string	"MS_SPEEX_ENC_ID"
.LASF220:
	.string	"MS_VOID_SINK_ID"
.LASF263:
	.string	"MS_G726_24_DEC_ID"
.LASF514:
	.string	"argv"
.LASF225:
	.string	"MS_JPEG_DEC_ID"
.LASF430:
	.string	"MSSndCardAudioSessionFunc"
.LASF444:
	.string	"unload"
.LASF360:
	.string	"wbcmanager"
.LASF10:
	.string	"__uint32_t"
.LASF511:
	.string	"printf"
.LASF354:
	.string	"platform_tags"
.LASF113:
	.string	"data"
.LASF420:
	.string	"MSSndCardSetLevelFunc"
.LASF258:
	.string	"MS_AAL2_G726_32_ENC_ID"
.LASF114:
	.string	"bctbx_list_t"
.LASF139:
	.string	"datab"
.LASF251:
	.string	"MS_G722_ENC_ID"
.LASF194:
	.string	"MS_SIZE_CONV_ID"
.LASF147:
	.string	"_MSFilter"
.LASF229:
	.string	"MS_DRAWDIB_DISPLAY_ID"
.LASF166:
	.string	"MS_ALSA_READ_ID"
.LASF126:
	.string	"b_prev"
.LASF185:
	.string	"MS_H263_ENC_ID"
.LASF499:
	.string	"ortp_malloc"
.LASF361:
	.string	"voip_uninit_func"
.LASF150:
	.string	"inputs"
.LASF197:
	.string	"MS_THEORA_DEC_ID"
.LASF130:
	.string	"b_rptr"
.LASF227:
	.string	"MS_PULSE_READ_ID"
.LASF431:
	.string	"MSSndCardCallKitFunc"
.LASF84:
	.string	"_freeres_buf"
.LASF308:
	.string	"MS_ANDROID_DISPLAY_BAD_ID"
.LASF421:
	.string	"MSSndCardSetCaptureFunc"
.LASF20:
	.string	"tv_sec"
.LASF318:
	.string	"MSUBoxPlot"
.LASF370:
	.string	"execution_list"
.LASF26:
	.string	"long long unsigned int"
.LASF409:
	.string	"MS_SND_CARD_PLAYBACK_MUTE"
.LASF76:
	.string	"_cur_column"
.LASF228:
	.string	"MS_PULSE_WRITE_ID"
.LASF41:
	.string	"__list"
.LASF151:
	.string	"outputs"
.LASF254:
	.string	"MS_G726_32_ENC_ID"
.LASF386:
	.string	"thread_id"
.LASF387:
	.string	"MSFilter"
.LASF188:
	.string	"MS_ARTS_WRITE_ID"
.LASF507:
	.string	"fopen"
.LASF448:
	.string	"audio_route_changed"
.LASF69:
	.string	"_IO_backup_base"
.LASF447:
	.string	"callkit_enabled"
.LASF60:
	.string	"_IO_read_ptr"
.LASF215:
	.string	"MS_H263_OLD_DEC_ID"
.LASF496:
	.string	"ms_factory_init_voip"
.LASF388:
	.string	"MSDevicesInfo"
.LASF83:
	.string	"_freeres_list"
.LASF284:
	.string	"MS_BB10_DISPLAY_ID"
.LASF515:
	.string	"vars"
.LASF472:
	.string	"lateMs"
.LASF285:
	.string	"MS_BB10_CAPTURE_ID"
.LASF502:
	.string	"ms_factory_get_snd_card_manager"
.LASF43:
	.string	"__wseq"
.LASF75:
	.string	"_old_offset"
.LASF364:
	.string	"devices_info"
.LASF171:
	.string	"MS_ULAW_DEC_ID"
.LASF303:
	.string	"MS_AUDIO_FLOW_CONTROL_ID"
.LASF127:
	.string	"b_next"
.LASF143:
	.string	"q_mcount"
.LASF400:
	.string	"MS_SND_CARD_PLAYBACK"
.LASF55:
	.string	"long long int"
.LASF406:
	.string	"MSSndCardCapture"
.LASF123:
	.string	"port"
.LASF74:
	.string	"_flags2"
.LASF42:
	.string	"__pthread_cond_s"
.LASF350:
	.string	"desc_list"
.LASF489:
	.string	"getchar"
.LASF524:
	.string	"build_sound_cards_table"
.LASF154:
	.string	"ticker"
.LASF404:
	.string	"MS_SND_CARD_MIC"
.LASF290:
	.string	"MS_RTT_4103_SOURCE_ID"
.LASF195:
	.string	"MS_CONF_ID"
.LASF301:
	.string	"MS_WASAPI_READ_ID"
.LASF470:
	.string	"MSTickerPrio"
.LASF497:
	.string	"ms_factory_new"
.LASF396:
	.string	"MSFactory"
.LASF329:
	.string	"MS_FILTER_DECODER_RENDERER"
.LASF468:
	.string	"MS_TICKER_PRIO_HIGH"
.LASF342:
	.string	"preprocess"
.LASF311:
	.string	"MSFilterId"
.LASF352:
	.string	"offer_answer_provider_list"
.LASF234:
	.string	"MS_EXT_DISPLAY_ID"
.LASF532:
	.string	"main"
.LASF351:
	.string	"stats_list"
.LASF25:
	.string	"__value32"
.LASF232:
	.string	"MS_ITC_SINK_ID"
.LASF395:
	.string	"_MSWebCamManager"
.LASF451:
	.string	"_MSSndCardStreamType"
.LASF418:
	.string	"streamType"
.LASF397:
	.string	"MSSndCardManager"
.LASF348:
	.string	"MSFilterDesc"
.LASF471:
	.string	"_MSTickerLateEvent"
.LASF495:
	.string	"ms_factory_register_filter"
.LASF117:
	.string	"ortp_cond_t"
.LASF322:
	.string	"method"
.LASF4:
	.string	"unsigned int"
.LASF259:
	.string	"MS_AAL2_G726_24_ENC_ID"
.LASF207:
	.string	"MS_SNOW_DEC_ID"
.LASF453:
	.string	"MS_SND_CARD_STREAM_RING"
.LASF180:
	.string	"MS_SPEEX_DEC_ID"
.LASF512:
	.string	"strcmp"
.LASF7:
	.string	"short int"
.LASF326:
	.string	"MS_FILTER_ENCODER"
.LASF110:
	.string	"_bctbx_list"
.LASF403:
	.string	"_MSSndCardCapture"
.LASF112:
	.string	"prev"
.LASF77:
	.string	"_vtable_offset"
.LASF463:
	.string	"MSDtmfGenCustomTone"
.LASF266:
	.string	"MS_AAL2_G726_32_DEC_ID"
.LASF402:
	.string	"MSSndCardMixerElem"
.LASF442:
	.string	"create_writer"
.LASF356:
	.string	"video_presets_manager"
.LASF391:
	.string	"_MSEventQueue"
.LASF347:
	.string	"flags"
.LASF252:
	.string	"MS_G722_DEC_ID"
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
