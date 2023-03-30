	.file	"lua_filter.c"
	.text
.Ltext0:
	.file 0 "/home/primauser/plastov/Mediastreamer2_LuaFilter/src" "lua_filter.c"
	.type	ms_queue_get, @function
ms_queue_get:
.LFB11:
	.file 1 "/usr/include/mediastreamer2/msqueue.h"
	.loc 1 41 47
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 42 9
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	getq@PLT
	.loc 1 43 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	ms_queue_get, .-ms_queue_get
	.type	ms_queue_put, @function
ms_queue_put:
.LFB12:
	.loc 1 45 55
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 1 46 2
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	putq@PLT
	.loc 1 47 2
	nop
	.loc 1 48 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	ms_queue_put, .-ms_queue_put
	.type	ms_queue_empty, @function
ms_queue_empty:
.LFB18:
	.loc 1 77 54
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 1 78 10
	movq	-8(%rbp), %rdx
	.loc 1 78 51
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 78 30
	cmpq	%rax, %rdx
	sete	%al
	.loc 1 79 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	ms_queue_empty, .-ms_queue_empty
	.section	.rodata
.LC0:
	.string	"%s"
	.text
	.type	l_my_print, @function
l_my_print:
.LFB20:
	.file 2 "lua_filter.c"
	.loc 2 7 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 8 15
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	lua_gettop@PLT
	movl	%eax, -12(%rbp)
.LBB2:
	.loc 2 10 12
	movl	$1, -16(%rbp)
	.loc 2 10 3
	jmp	.L8
.L10:
	.loc 2 12 11
	movl	-16(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	lua_isstring@PLT
	.loc 2 12 10
	testl	%eax, %eax
	je	.L9
.LBB3:
	.loc 2 15 21
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	lua_gettop@PLT
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	lua_tolstring@PLT
	movq	%rax, -8(%rbp)
	.loc 2 16 4
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L9:
.LBE3:
	.loc 2 10 32 discriminator 2
	addl	$1, -16(%rbp)
.L8:
	.loc 2 10 21 discriminator 1
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jle	.L10
.LBE2:
	.loc 2 24 10
	movl	$0, %eax
	.loc 2 25 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	l_my_print, .-l_my_print
	.section	.rodata
.LC1:
	.string	"print"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	printlib, @object
	.size	printlib, 32
printlib:
	.quad	.LC1
	.quad	l_my_print
	.quad	0
	.quad	0
	.section	.rodata
.LC2:
	.string	"_G"
	.text
	.globl	luaopen_luamylib
	.type	luaopen_luamylib, @function
luaopen_luamylib:
.LFB21:
	.loc 2 37 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 38 3
	movq	-8(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lua_getglobal@PLT
	.loc 2 39 3
	movq	-8(%rbp), %rax
	movl	$0, %edx
	leaq	printlib(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	luaL_setfuncs@PLT
	.loc 2 40 2
	movq	-8(%rbp), %rax
	movl	$-2, %esi
	movq	%rax, %rdi
	call	lua_settop@PLT
	.loc 2 41 10
	movl	$0, %eax
	.loc 2 42 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	luaopen_luamylib, .-luaopen_luamylib
	.globl	set_queues
	.type	set_queues, @function
set_queues:
.LFB22:
	.loc 2 60 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 2 62 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	set_queues, .-set_queues
	.section	.rodata
	.align 8
.LC3:
	.string	"filter <%s> Lua script preamble error.\n"
.LC4:
	.string	"Error description:<%s>\n"
	.text
	.type	run_preambula, @function
run_preambula:
.LFB23:
	.loc 2 68 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	.loc 2 69 14
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 2 70 6
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 70 4
	testq	%rax, %rax
	je	.L16
.LBB4:
	.loc 2 72 6
	movl	$0, -20(%rbp)
	.loc 2 74 8
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 74 8
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	luaL_loadstring@PLT
	.loc 2 74 9
	testl	%eax, %eax
	jne	.L17
	.loc 2 74 12 discriminator 2
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$-1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	lua_pcallk@PLT
	.loc 2 74 9 discriminator 2
	testl	%eax, %eax
	je	.L18
.L17:
	.loc 2 74 9 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L19
.L18:
	.loc 2 74 9 discriminator 4
	movl	$0, %eax
.L19:
	.loc 2 74 6 is_stmt 1 discriminator 6
	movl	%eax, -20(%rbp)
	.loc 2 75 5 discriminator 6
	cmpl	$0, -20(%rbp)
	je	.L20
.LBB5:
	.loc 2 78 6
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 77 4
	movq	8(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 79 24
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	lua_gettop@PLT
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	lua_tolstring@PLT
	movq	%rax, -8(%rbp)
	.loc 2 80 7
	cmpq	$0, -8(%rbp)
	je	.L22
	.loc 2 82 5
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.LBE5:
.LBE4:
	.loc 2 95 1
	jmp	.L22
.L20:
.LBB6:
	.loc 2 87 24
	movq	-16(%rbp), %rax
	movb	$1, 25(%rax)
.LBE6:
	.loc 2 95 1
	jmp	.L22
.L16:
	.loc 2 93 22
	movq	-16(%rbp), %rax
	movb	$1, 25(%rax)
.L22:
	.loc 2 95 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	run_preambula, .-run_preambula
	.type	control_init, @function
control_init:
.LFB24:
	.loc 2 100 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 101 20
	movl	$32, %edi
	call	ortp_malloc0@PLT
	movq	%rax, -8(%rbp)
	.loc 2 102 9
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 80(%rax)
	.loc 2 103 9
	call	luaL_newstate@PLT
	.loc 2 103 7
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	.loc 2 104 1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	luaL_openlibs@PLT
	.loc 2 105 1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	luaopen_luamylib
	.loc 2 106 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	control_init, .-control_init
	.type	control_uninit, @function
control_uninit:
.LFB25:
	.loc 2 111 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 112 14
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 2 113 1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	lua_close@PLT
	.loc 2 114 10
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 114 1
	movq	%rax, %rdi
	call	ortp_free@PLT
	.loc 2 115 10
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 115 1
	movq	%rax, %rdi
	call	ortp_free@PLT
	.loc 2 116 1
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ortp_free@PLT
	.loc 2 117 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	control_uninit, .-control_uninit
	.section	.rodata
.LC5:
	.string	"input_empty"
.LC6:
	.string	"in msg_body[0]=%hhu\n"
.LC7:
	.string	"in msg_body[1]=%hhu\n"
.LC8:
	.string	"in short[0]=%i\n"
.LC9:
	.string	"lf_data_len"
.LC10:
	.string	"lf_data"
	.align 8
.LC11:
	.string	"\nFilter <%s> script_body_status: %i.\n"
	.align 8
.LC12:
	.string	"\nFilter <%s> bad script_body_status: %i.\n"
.LC13:
	.string	"lf_data_out_len"
.LC14:
	.string	"Type on top: %i\n"
.LC15:
	.string	"------- size from lua %lu\n"
.LC16:
	.string	"lf_data_out"
.LC17:
	.string	"out msg_body[0]=%hhu\n"
.LC18:
	.string	"out msg_body[1]=%hhu\n"
.LC19:
	.string	"out msg_body[2]=%hhu\n"
.LC20:
	.string	"out msg_body[3]=%hhu\n"
.LC21:
	.string	"out short[0]=%i\n"
.LC22:
	.string	"out str_len =%lu\n"
	.align 8
.LC23:
	.string	"-----------------------------------------"
.LC24:
	.string	"\nFilter <%s> Lua error.\n"
.LC25:
	.string	"Lua error description:<%s>.\n"
	.text
	.type	control_process, @function
control_process:
.LFB26:
	.loc 2 122 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -120(%rbp)
	.loc 2 122 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 123 14
	movq	-120(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -56(%rbp)
	.loc 2 125 9
	movq	$0, -80(%rbp)
	.loc 2 126 5
	movl	$0, -104(%rbp)
	.loc 2 129 8
	movq	-56(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 129 4
	testb	%al, %al
	jne	.L27
	.loc 2 129 25 discriminator 1
	movq	-56(%rbp), %rax
	movzbl	25(%rax), %eax
	.loc 2 129 19 discriminator 1
	testb	%al, %al
	jne	.L27
	.loc 2 131 2
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	run_preambula
	.loc 2 134 7
	jmp	.L27
.L41:
.LBB7:
	.loc 2 136 15
	movl	$0, -100(%rbp)
	.loc 2 137 9
	movq	-56(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 137 5
	testb	%al, %al
	jne	.L28
	.loc 2 137 25 discriminator 1
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 137 20 discriminator 1
	testq	%rax, %rax
	je	.L28
	.loc 2 137 45 discriminator 2
	movq	-56(%rbp), %rax
	movzbl	25(%rax), %eax
	.loc 2 137 40 discriminator 2
	testb	%al, %al
	je	.L28
.LBB8:
	.loc 2 139 41
	movq	-120(%rbp), %rax
	movq	48(%rax), %rax
	.loc 2 139 25
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ms_queue_empty
	movb	%al, -110(%rbp)
	.loc 2 140 4
	movzbl	-110(%rbp), %edx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lua_pushinteger@PLT
	.loc 2 141 4
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lua_setglobal@PLT
.LBB9:
	.loc 2 144 41
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 144 49
	movzbl	(%rax), %eax
	.loc 2 144 7
	movzbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 145 41
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 145 49
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 2 145 7
	movzbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 146 46
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 146 34
	movzwl	(%rax), %eax
	.loc 2 146 7
	cwtl
	movl	%eax, %esi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 148 29
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	msgdsize@PLT
	.loc 2 148 12
	addq	%rax, %rax
	movq	%rax, -40(%rbp)
	.loc 2 149 5
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lua_pushinteger@PLT
	.loc 2 150 5
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC9(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lua_setglobal@PLT
	.loc 2 151 43
	movq	-48(%rbp), %rax
	movq	32(%rax), %rcx
	.loc 2 151 5
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	lua_pushlstring@PLT
.LBE9:
	.loc 2 154 4
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC10(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lua_setglobal@PLT
	.loc 2 158 22
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	lua_gettop@PLT
	movl	%eax, -96(%rbp)
	.loc 2 159 3
	movl	-96(%rbp), %eax
	notl	%eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	lua_settop@PLT
	.loc 2 162 10
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 2 162 10
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	luaL_loadstring@PLT
	.loc 2 162 11
	testl	%eax, %eax
	jne	.L29
	.loc 2 162 14 discriminator 2
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$-1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	lua_pcallk@PLT
	.loc 2 162 11 discriminator 2
	testl	%eax, %eax
	je	.L30
.L29:
	.loc 2 162 11 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L31
.L30:
	.loc 2 162 11 discriminator 4
	movl	$0, %eax
.L31:
	.loc 2 162 8 is_stmt 1 discriminator 6
	movl	%eax, -104(%rbp)
	.loc 2 165 7 discriminator 6
	cmpl	$0, -104(%rbp)
	jne	.L32
.LBB10:
	.loc 2 167 29
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	lua_gettop@PLT
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	lua_tointegerx@PLT
	.loc 2 167 9
	movl	%eax, -92(%rbp)
	.loc 2 168 8
	cmpl	$0, -92(%rbp)
	js	.L33
	.loc 2 170 57
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 170 6
	movq	8(%rax), %rax
	movl	-92(%rbp), %edx
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L34
.L33:
	.loc 2 175 61
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 175 6
	movq	8(%rax), %rax
	movl	-92(%rbp), %edx
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L34:
	.loc 2 180 5
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC13(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lua_getglobal@PLT
	.loc 2 181 12
	movq	$0, -72(%rbp)
	.loc 2 182 24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	lua_gettop@PLT
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	lua_type@PLT
	.loc 2 182 10
	movb	%al, -109(%rbp)
	.loc 2 183 5
	movsbl	-109(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 184 8
	cmpb	$3, -109(%rbp)
	jne	.L35
	.loc 2 187 14
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	lua_gettop@PLT
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	lua_tointegerx@PLT
	.loc 2 186 16
	movq	%rax, -72(%rbp)
	.loc 2 188 6
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L35:
	.loc 2 190 4
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	$-2, %esi
	movq	%rax, %rdi
	call	lua_settop@PLT
	.loc 2 194 5
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC16(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lua_getglobal@PLT
	.loc 2 195 12
	movq	$0, -88(%rbp)
	.loc 2 196 9
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	lua_gettop@PLT
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	lua_type@PLT
	.loc 2 196 8
	cmpl	$4, %eax
	jne	.L36
.LBB11:
	.loc 2 198 29
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	-88(%rbp), %rdx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	lua_tolstring@PLT
	movq	%rax, -24(%rbp)
	.loc 2 199 9
	cmpq	$0, -24(%rbp)
	je	.L36
	.loc 2 199 19 discriminator 1
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	je	.L36
.LBB12:
	.loc 2 201 48
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 201 7
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 202 48
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 2 202 7
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 203 48
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	.loc 2 203 7
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 204 48
	movq	-24(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	.loc 2 204 7
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 205 35
	movq	-24(%rbp), %rax
	movzwl	(%rax), %eax
	.loc 2 205 7
	cwtl
	movl	%eax, %esi
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 206 7
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 207 7
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 2 208 14
	movq	-72(%rbp), %rax
	shrq	%rax
	movq	%rax, -16(%rbp)
	.loc 2 210 23
	movq	-16(%rbp), %rax
	.loc 2 210 16
	cltq
	movl	$0, %esi
	movq	%rax, %rdi
	call	allocb@PLT
	movq	%rax, -80(%rbp)
	.loc 2 211 20
	movq	-80(%rbp), %rax
	movq	40(%rax), %rax
	.loc 2 211 7
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	.loc 2 212 30
	movq	-80(%rbp), %rax
	movq	40(%rax), %rdx
	.loc 2 212 39
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 212 22
	movq	-80(%rbp), %rax
	movq	%rdx, 40(%rax)
.L36:
.LBE12:
.LBE11:
	.loc 2 215 4
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	$-2, %esi
	movq	%rax, %rdi
	call	lua_settop@PLT
	.loc 2 218 23
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	lua_gettop@PLT
	movl	%eax, -96(%rbp)
	.loc 2 219 4
	movl	-96(%rbp), %eax
	notl	%eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	lua_settop@PLT
.LBE10:
	jmp	.L28
.L32:
.LBB13:
	.loc 2 223 43
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 223 5
	movq	8(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 224 25
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	lua_gettop@PLT
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	lua_tolstring@PLT
	movq	%rax, -32(%rbp)
	.loc 2 225 8
	cmpq	$0, -32(%rbp)
	je	.L28
	.loc 2 227 6
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L28:
.LBE13:
.LBE8:
	.loc 2 231 10
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	.loc 2 232 5
	cmpq	$0, -80(%rbp)
	je	.L37
	.loc 2 233 5
	movq	-80(%rbp), %rax
	movq	%rax, -64(%rbp)
.L37:
	.loc 2 236 10
	movl	$0, -108(%rbp)
	.loc 2 236 3
	jmp	.L38
.L40:
	.loc 2 239 8
	cmpl	$0, -100(%rbp)
	jne	.L39
	.loc 2 239 30 discriminator 1
	movq	-120(%rbp), %rax
	movq	56(%rax), %rdx
	.loc 2 239 39 discriminator 1
	movl	-108(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 239 25 discriminator 1
	testq	%rax, %rax
	je	.L39
	.loc 2 240 8
	cmpq	$0, -64(%rbp)
	je	.L39
	.loc 2 241 6
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	dupmsg@PLT
	movq	%rax, %rdx
	.loc 2 241 20
	movq	-120(%rbp), %rax
	movq	56(%rax), %rcx
	.loc 2 241 29
	movl	-108(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rcx, %rax
	.loc 2 241 6
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ms_queue_put
.L39:
	.loc 2 236 39 discriminator 2
	addl	$1, -108(%rbp)
.L38:
	.loc 2 236 20 discriminator 1
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 236 26 discriminator 1
	movl	44(%rax), %eax
	.loc 2 236 17 discriminator 1
	cmpl	%eax, -108(%rbp)
	jl	.L40
	.loc 2 244 2
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	freemsg@PLT
	.loc 2 245 2
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	freemsg@PLT
.L27:
.LBE7:
	.loc 2 134 28
	movq	-120(%rbp), %rax
	movq	48(%rax), %rax
	.loc 2 134 14
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ms_queue_get
	movq	%rax, -48(%rbp)
	.loc 2 134 42
	cmpq	$0, -48(%rbp)
	jne	.L41
	.loc 2 247 1
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L42
	call	__stack_chk_fail@PLT
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	control_process, .-control_process
	.type	control_stop, @function
control_stop:
.LFB27:
	.loc 2 253 1
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
	.loc 2 254 15
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 2 255 13
	movq	-8(%rbp), %rax
	movb	$1, 24(%rax)
	.loc 2 256 5
	cmpq	$0, -32(%rbp)
	je	.L44
	.loc 2 258 7
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 258 5
	testq	%rax, %rax
	je	.L45
	.loc 2 259 11
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 259 2
	movq	%rax, %rdi
	call	ortp_free@PLT
.L45:
	.loc 2 260 18
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ortp_strdup@PLT
	.loc 2 260 17
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	.loc 2 261 1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ortp_free@PLT
.L44:
	.loc 2 263 9
	movl	$0, %eax
	.loc 2 264 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	control_stop, .-control_stop
	.type	control_run, @function
control_run:
.LFB28:
	.loc 2 271 1
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
	.loc 2 272 15
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 2 273 13
	movq	-8(%rbp), %rax
	movb	$0, 24(%rax)
	.loc 2 274 5
	cmpq	$0, -32(%rbp)
	je	.L48
	.loc 2 276 7
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 276 5
	testq	%rax, %rax
	je	.L49
	.loc 2 277 11
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 277 2
	movq	%rax, %rdi
	call	ortp_free@PLT
.L49:
	.loc 2 278 18
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ortp_strdup@PLT
	.loc 2 278 17
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	.loc 2 279 1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ortp_free@PLT
.L48:
	.loc 2 281 9
	movl	$0, %eax
	.loc 2 282 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	control_run, .-control_run
	.type	control_set_preamble, @function
control_set_preamble:
.LFB29:
	.loc 2 288 1
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
	.loc 2 289 15
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 2 290 22
	movq	-8(%rbp), %rax
	movb	$0, 25(%rax)
	.loc 2 291 5
	cmpq	$0, -32(%rbp)
	je	.L52
	.loc 2 293 7
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 293 5
	testq	%rax, %rax
	je	.L53
	.loc 2 294 11
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 294 2
	movq	%rax, %rdi
	call	ortp_free@PLT
.L53:
	.loc 2 295 22
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ortp_strdup@PLT
	.loc 2 295 21
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	.loc 2 296 1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ortp_free@PLT
.L52:
	.loc 2 298 9
	movl	$0, %eax
	.loc 2 299 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	control_set_preamble, .-control_set_preamble
	.section	.data.rel.local,"aw"
	.align 32
	.type	control_methods, @object
	.size	control_methods, 64
control_methods:
	.long	262209796
	.zero	4
	.quad	control_stop
	.long	262209537
	.zero	4
	.quad	control_run
	.long	262210049
	.zero	4
	.quad	control_set_preamble
	.long	0
	.zero	4
	.quad	0
	.globl	lua_filter_desc
	.section	.rodata
.LC26:
	.string	"LUA_FILTER"
	.align 8
.LC27:
	.string	"A filter that runs a Lua-script."
	.section	.data.rel.local
	.align 32
	.type	lua_filter_desc, @object
	.size	lua_filter_desc, 104
lua_filter_desc:
	.long	4001
	.zero	4
	.quad	.LC26
	.quad	.LC27
	.long	0
	.zero	12
	.long	1
	.long	1
	.quad	control_init
	.zero	8
	.quad	control_process
	.zero	8
	.quad	control_uninit
	.quad	control_methods
	.zero	8
	.text
.Letext0:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/11/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h"
	.file 9 "/usr/include/unistd.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/sockaddr.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/socket.h"
	.file 13 "/usr/include/netinet/in.h"
	.file 14 "/usr/include/bctoolbox/port.h"
	.file 15 "/usr/include/bctoolbox/list.h"
	.file 16 "/usr/include/ortp/port.h"
	.file 17 "/usr/include/ortp/str_utils.h"
	.file 18 "/usr/include/mediastreamer2/msfilter.h"
	.file 19 "/usr/include/mediastreamer2/allfilters.h"
	.file 20 "/usr/include/mediastreamer2/box-plot.h"
	.file 21 "/usr/include/mediastreamer2/msfactory.h"
	.file 22 "/usr/include/mediastreamer2/devices.h"
	.file 23 "/usr/include/lua5.3/lua.h"
	.file 24 "/usr/include/lua5.3/lauxlib.h"
	.file 25 "/usr/include/string.h"
	.file 26 "/usr/include/lua5.3/lualib.h"
	.file 27 "/usr/include/stdio.h"
	.file 28 "lua_filter.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x16fc
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x21
	.long	.LASF390
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
	.uleb128 0x4
	.long	.LASF8
	.byte	0x3
	.byte	0x26
	.byte	0x17
	.long	0x2e
	.uleb128 0x8
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x4
	.long	.LASF9
	.byte	0x3
	.byte	0x28
	.byte	0x1c
	.long	0x35
	.uleb128 0x22
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.long	.LASF10
	.byte	0x3
	.byte	0x2a
	.byte	0x16
	.long	0x3c
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.long	.LASF11
	.uleb128 0x4
	.long	.LASF12
	.byte	0x3
	.byte	0x2d
	.byte	0x1b
	.long	0x43
	.uleb128 0x4
	.long	.LASF13
	.byte	0x3
	.byte	0xa0
	.byte	0x12
	.long	0x83
	.uleb128 0x4
	.long	.LASF14
	.byte	0x3
	.byte	0xa2
	.byte	0x12
	.long	0x83
	.uleb128 0x23
	.byte	0x8
	.uleb128 0x5
	.long	0xb5
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.long	.LASF15
	.uleb128 0x13
	.long	0xb5
	.uleb128 0x4
	.long	.LASF16
	.byte	0x3
	.byte	0xcf
	.byte	0x12
	.long	0x83
	.uleb128 0x4
	.long	.LASF17
	.byte	0x3
	.byte	0xd2
	.byte	0x16
	.long	0x3c
	.uleb128 0x4
	.long	.LASF18
	.byte	0x4
	.byte	0xd1
	.byte	0x1b
	.long	0x43
	.uleb128 0x6
	.long	.LASF22
	.byte	0x10
	.byte	0x5
	.byte	0x8
	.byte	0x8
	.long	0x10d
	.uleb128 0x2
	.long	.LASF19
	.byte	0x5
	.byte	0xe
	.byte	0xc
	.long	0x96
	.byte	0
	.uleb128 0x2
	.long	.LASF20
	.byte	0x5
	.byte	0xf
	.byte	0x11
	.long	0xa2
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.long	.LASF21
	.uleb128 0x6
	.long	.LASF23
	.byte	0x10
	.byte	0x6
	.byte	0x33
	.byte	0x10
	.long	0x13c
	.uleb128 0x2
	.long	.LASF24
	.byte	0x6
	.byte	0x35
	.byte	0x23
	.long	0x13c
	.byte	0
	.uleb128 0x2
	.long	.LASF25
	.byte	0x6
	.byte	0x36
	.byte	0x23
	.long	0x13c
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	0x114
	.uleb128 0x4
	.long	.LASF26
	.byte	0x6
	.byte	0x37
	.byte	0x3
	.long	0x114
	.uleb128 0x6
	.long	.LASF27
	.byte	0x28
	.byte	0x7
	.byte	0x16
	.byte	0x8
	.long	0x1c3
	.uleb128 0x2
	.long	.LASF28
	.byte	0x7
	.byte	0x18
	.byte	0x7
	.long	0x70
	.byte	0
	.uleb128 0x2
	.long	.LASF29
	.byte	0x7
	.byte	0x19
	.byte	0x10
	.long	0x3c
	.byte	0x4
	.uleb128 0x2
	.long	.LASF30
	.byte	0x7
	.byte	0x1a
	.byte	0x7
	.long	0x70
	.byte	0x8
	.uleb128 0x2
	.long	.LASF31
	.byte	0x7
	.byte	0x1c
	.byte	0x10
	.long	0x3c
	.byte	0xc
	.uleb128 0x2
	.long	.LASF32
	.byte	0x7
	.byte	0x20
	.byte	0x7
	.long	0x70
	.byte	0x10
	.uleb128 0x2
	.long	.LASF33
	.byte	0x7
	.byte	0x22
	.byte	0x9
	.long	0x5d
	.byte	0x14
	.uleb128 0x2
	.long	.LASF34
	.byte	0x7
	.byte	0x23
	.byte	0x9
	.long	0x5d
	.byte	0x16
	.uleb128 0x2
	.long	.LASF35
	.byte	0x7
	.byte	0x24
	.byte	0x14
	.long	0x141
	.byte	0x18
	.byte	0
	.uleb128 0x17
	.byte	0x28
	.byte	0x8
	.byte	0x43
	.byte	0x9
	.long	0x1f1
	.uleb128 0xd
	.long	.LASF36
	.byte	0x8
	.byte	0x45
	.byte	0x1c
	.long	0x14d
	.uleb128 0xd
	.long	.LASF37
	.byte	0x8
	.byte	0x46
	.byte	0x8
	.long	0x1f1
	.uleb128 0xd
	.long	.LASF38
	.byte	0x8
	.byte	0x47
	.byte	0xc
	.long	0x83
	.byte	0
	.uleb128 0xe
	.long	0xb5
	.long	0x201
	.uleb128 0xf
	.long	0x43
	.byte	0x27
	.byte	0
	.uleb128 0x4
	.long	.LASF39
	.byte	0x8
	.byte	0x48
	.byte	0x3
	.long	0x1c3
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.long	.LASF40
	.uleb128 0x5
	.long	0xbc
	.uleb128 0x18
	.long	.LASF41
	.byte	0x9
	.value	0x10b
	.byte	0x14
	.long	0xc1
	.uleb128 0x18
	.long	.LASF42
	.byte	0x9
	.value	0x112
	.byte	0x15
	.long	0xcd
	.uleb128 0x5
	.long	0x238
	.uleb128 0x24
	.uleb128 0x4
	.long	.LASF43
	.byte	0xa
	.byte	0x18
	.byte	0x13
	.long	0x51
	.uleb128 0x4
	.long	.LASF44
	.byte	0xa
	.byte	0x19
	.byte	0x14
	.long	0x64
	.uleb128 0x4
	.long	.LASF45
	.byte	0xa
	.byte	0x1a
	.byte	0x14
	.long	0x77
	.uleb128 0x4
	.long	.LASF46
	.byte	0xa
	.byte	0x1b
	.byte	0x14
	.long	0x8a
	.uleb128 0x4
	.long	.LASF47
	.byte	0xb
	.byte	0x1c
	.byte	0x1c
	.long	0x35
	.uleb128 0x6
	.long	.LASF48
	.byte	0x80
	.byte	0xc
	.byte	0xc1
	.byte	0x8
	.long	0x2aa
	.uleb128 0x2
	.long	.LASF49
	.byte	0xc
	.byte	0xc3
	.byte	0x11
	.long	0x269
	.byte	0
	.uleb128 0x2
	.long	.LASF50
	.byte	0xc
	.byte	0xc4
	.byte	0xa
	.long	0x2aa
	.byte	0x2
	.uleb128 0x2
	.long	.LASF51
	.byte	0xc
	.byte	0xc5
	.byte	0x17
	.long	0x43
	.byte	0x78
	.byte	0
	.uleb128 0xe
	.long	0xb5
	.long	0x2ba
	.uleb128 0xf
	.long	0x43
	.byte	0x75
	.byte	0
	.uleb128 0x4
	.long	.LASF52
	.byte	0xd
	.byte	0x1e
	.byte	0x12
	.long	0x251
	.uleb128 0x6
	.long	.LASF53
	.byte	0x4
	.byte	0xd
	.byte	0x1f
	.byte	0x8
	.long	0x2e1
	.uleb128 0x2
	.long	.LASF54
	.byte	0xd
	.byte	0x21
	.byte	0xf
	.long	0x2ba
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x10
	.byte	0xd
	.byte	0xdd
	.byte	0x5
	.long	0x30f
	.uleb128 0xd
	.long	.LASF55
	.byte	0xd
	.byte	0xdf
	.byte	0xa
	.long	0x30f
	.uleb128 0xd
	.long	.LASF56
	.byte	0xd
	.byte	0xe0
	.byte	0xb
	.long	0x31f
	.uleb128 0xd
	.long	.LASF57
	.byte	0xd
	.byte	0xe1
	.byte	0xb
	.long	0x32f
	.byte	0
	.uleb128 0xe
	.long	0x239
	.long	0x31f
	.uleb128 0xf
	.long	0x43
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.long	0x245
	.long	0x32f
	.uleb128 0xf
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.long	0x251
	.long	0x33f
	.uleb128 0xf
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.long	.LASF58
	.byte	0x10
	.byte	0xd
	.byte	0xdb
	.byte	0x8
	.long	0x35a
	.uleb128 0x2
	.long	.LASF59
	.byte	0xd
	.byte	0xe2
	.byte	0x9
	.long	0x2e1
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	.LASF60
	.byte	0xe
	.value	0x150
	.byte	0x17
	.long	0x2e
	.uleb128 0x6
	.long	.LASF61
	.byte	0x18
	.byte	0xf
	.byte	0x1d
	.byte	0x10
	.long	0x39c
	.uleb128 0x2
	.long	.LASF62
	.byte	0xf
	.byte	0x1e
	.byte	0x16
	.long	0x39c
	.byte	0
	.uleb128 0x2
	.long	.LASF63
	.byte	0xf
	.byte	0x1f
	.byte	0x16
	.long	0x39c
	.byte	0x8
	.uleb128 0x2
	.long	.LASF64
	.byte	0xf
	.byte	0x20
	.byte	0x8
	.long	0xae
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	0x367
	.uleb128 0x4
	.long	.LASF65
	.byte	0xf
	.byte	0x21
	.byte	0x3
	.long	0x367
	.uleb128 0x4
	.long	.LASF66
	.byte	0x10
	.byte	0x3f
	.byte	0x19
	.long	0x201
	.uleb128 0x17
	.byte	0x10
	.byte	0x11
	.byte	0x2b
	.byte	0x2
	.long	0x3db
	.uleb128 0xd
	.long	.LASF67
	.byte	0x11
	.byte	0x2c
	.byte	0x12
	.long	0x2c6
	.uleb128 0xd
	.long	.LASF68
	.byte	0x11
	.byte	0x2d
	.byte	0x13
	.long	0x33f
	.byte	0
	.uleb128 0x6
	.long	.LASF69
	.byte	0x18
	.byte	0x11
	.byte	0x29
	.byte	0x10
	.long	0x410
	.uleb128 0x2
	.long	.LASF70
	.byte	0x11
	.byte	0x2a
	.byte	0x6
	.long	0x70
	.byte	0
	.uleb128 0x2
	.long	.LASF71
	.byte	0x11
	.byte	0x2e
	.byte	0x4
	.long	0x3b9
	.byte	0x4
	.uleb128 0x2
	.long	.LASF72
	.byte	0x11
	.byte	0x2f
	.byte	0x11
	.long	0x35
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.long	.LASF73
	.byte	0x11
	.byte	0x30
	.byte	0x3
	.long	0x3db
	.uleb128 0x6
	.long	.LASF74
	.byte	0xe8
	.byte	0x11
	.byte	0x38
	.byte	0x10
	.long	0x4d3
	.uleb128 0x2
	.long	.LASF75
	.byte	0x11
	.byte	0x3a
	.byte	0xf
	.long	0x4d3
	.byte	0
	.uleb128 0x2
	.long	.LASF76
	.byte	0x11
	.byte	0x3b
	.byte	0xf
	.long	0x4d3
	.byte	0x8
	.uleb128 0x2
	.long	.LASF77
	.byte	0x11
	.byte	0x3c
	.byte	0xf
	.long	0x4d3
	.byte	0x10
	.uleb128 0x2
	.long	.LASF78
	.byte	0x11
	.byte	0x3d
	.byte	0x10
	.long	0x4dd
	.byte	0x18
	.uleb128 0x2
	.long	.LASF79
	.byte	0x11
	.byte	0x3e
	.byte	0x11
	.long	0x4e2
	.byte	0x20
	.uleb128 0x2
	.long	.LASF80
	.byte	0x11
	.byte	0x3f
	.byte	0x11
	.long	0x4e2
	.byte	0x28
	.uleb128 0x2
	.long	.LASF81
	.byte	0x11
	.byte	0x40
	.byte	0xb
	.long	0x251
	.byte	0x30
	.uleb128 0x2
	.long	.LASF82
	.byte	0x11
	.byte	0x41
	.byte	0xb
	.long	0x251
	.byte	0x34
	.uleb128 0x2
	.long	.LASF83
	.byte	0x11
	.byte	0x42
	.byte	0x11
	.long	0xe5
	.byte	0x38
	.uleb128 0x2
	.long	.LASF84
	.byte	0x11
	.byte	0x43
	.byte	0x13
	.long	0x410
	.byte	0x48
	.uleb128 0x2
	.long	.LASF85
	.byte	0x11
	.byte	0x44
	.byte	0x1a
	.long	0x275
	.byte	0x60
	.uleb128 0x2
	.long	.LASF86
	.byte	0x11
	.byte	0x45
	.byte	0xc
	.long	0x226
	.byte	0xe0
	.uleb128 0x2
	.long	.LASF87
	.byte	0x11
	.byte	0x46
	.byte	0xa
	.long	0x239
	.byte	0xe4
	.byte	0
	.uleb128 0x5
	.long	0x41c
	.uleb128 0x11
	.long	.LASF316
	.uleb128 0x5
	.long	0x4d8
	.uleb128 0x5
	.long	0x2e
	.uleb128 0x4
	.long	.LASF88
	.byte	0x11
	.byte	0x47
	.byte	0x3
	.long	0x41c
	.uleb128 0x13
	.long	0x4e7
	.uleb128 0x6
	.long	.LASF89
	.byte	0xf0
	.byte	0x11
	.byte	0x4d
	.byte	0x10
	.long	0x520
	.uleb128 0x2
	.long	.LASF90
	.byte	0x11
	.byte	0x4f
	.byte	0x9
	.long	0x4e7
	.byte	0
	.uleb128 0x2
	.long	.LASF91
	.byte	0x11
	.byte	0x50
	.byte	0x6
	.long	0x70
	.byte	0xe8
	.byte	0
	.uleb128 0x4
	.long	.LASF92
	.byte	0x11
	.byte	0x51
	.byte	0x3
	.long	0x4f8
	.uleb128 0x6
	.long	.LASF93
	.byte	0x10
	.byte	0x1
	.byte	0x1a
	.byte	0x10
	.long	0x554
	.uleb128 0x2
	.long	.LASF94
	.byte	0x1
	.byte	0x1b
	.byte	0x14
	.long	0x60b
	.byte	0
	.uleb128 0xc
	.string	"pin"
	.byte	0x1
	.byte	0x1c
	.byte	0x6
	.long	0x70
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.long	.LASF95
	.byte	0x80
	.byte	0x12
	.byte	0xb4
	.byte	0x8
	.long	0x60b
	.uleb128 0x2
	.long	.LASF96
	.byte	0x12
	.byte	0xb5
	.byte	0x10
	.long	0xc17
	.byte	0
	.uleb128 0x2
	.long	.LASF97
	.byte	0x12
	.byte	0xb7
	.byte	0xf
	.long	0x3ad
	.byte	0x8
	.uleb128 0x2
	.long	.LASF98
	.byte	0x12
	.byte	0xb8
	.byte	0xc
	.long	0xc1c
	.byte	0x30
	.uleb128 0x2
	.long	.LASF99
	.byte	0x12
	.byte	0xb9
	.byte	0xc
	.long	0xc1c
	.byte	0x38
	.uleb128 0x2
	.long	.LASF100
	.byte	0x12
	.byte	0xba
	.byte	0x15
	.long	0xd38
	.byte	0x40
	.uleb128 0x2
	.long	.LASF101
	.byte	0x12
	.byte	0xbb
	.byte	0x8
	.long	0xae
	.byte	0x48
	.uleb128 0x2
	.long	.LASF64
	.byte	0x12
	.byte	0xbc
	.byte	0x8
	.long	0xae
	.byte	0x50
	.uleb128 0x2
	.long	.LASF102
	.byte	0x12
	.byte	0xbd
	.byte	0x14
	.long	0xd42
	.byte	0x58
	.uleb128 0x2
	.long	.LASF103
	.byte	0x12
	.byte	0xbf
	.byte	0x10
	.long	0xd47
	.byte	0x60
	.uleb128 0x2
	.long	.LASF104
	.byte	0x12
	.byte	0xc0
	.byte	0xb
	.long	0x251
	.byte	0x68
	.uleb128 0x2
	.long	.LASF105
	.byte	0x12
	.byte	0xc1
	.byte	0x11
	.long	0xd4c
	.byte	0x70
	.uleb128 0x2
	.long	.LASF106
	.byte	0x12
	.byte	0xc2
	.byte	0x6
	.long	0x70
	.byte	0x78
	.uleb128 0x2
	.long	.LASF107
	.byte	0x12
	.byte	0xc3
	.byte	0x9
	.long	0x35a
	.byte	0x7c
	.byte	0
	.uleb128 0x5
	.long	0x554
	.uleb128 0x4
	.long	.LASF108
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.long	0x52c
	.uleb128 0x25
	.long	.LASF109
	.value	0x110
	.byte	0x1
	.byte	0x1f
	.byte	0x10
	.long	0x651
	.uleb128 0xc
	.string	"q"
	.byte	0x1
	.byte	0x21
	.byte	0xa
	.long	0x520
	.byte	0
	.uleb128 0x2
	.long	.LASF63
	.byte	0x1
	.byte	0x22
	.byte	0xb
	.long	0x610
	.byte	0xf0
	.uleb128 0x26
	.long	.LASF62
	.byte	0x1
	.byte	0x23
	.byte	0xb
	.long	0x610
	.value	0x100
	.byte	0
	.uleb128 0x4
	.long	.LASF110
	.byte	0x1
	.byte	0x24
	.byte	0x2
	.long	0x61c
	.uleb128 0x13
	.long	0x651
	.uleb128 0x1a
	.long	.LASF259
	.long	0x3c
	.byte	0x13
	.byte	0x1b
	.byte	0xe
	.long	0x9eb
	.uleb128 0x1
	.long	.LASF111
	.byte	0
	.uleb128 0x1
	.long	.LASF112
	.byte	0x1
	.uleb128 0x1
	.long	.LASF113
	.byte	0x2
	.uleb128 0x1
	.long	.LASF114
	.byte	0x3
	.uleb128 0x1
	.long	.LASF115
	.byte	0x4
	.uleb128 0x1
	.long	.LASF116
	.byte	0x5
	.uleb128 0x1
	.long	.LASF117
	.byte	0x6
	.uleb128 0x1
	.long	.LASF118
	.byte	0x7
	.uleb128 0x1
	.long	.LASF119
	.byte	0x8
	.uleb128 0x1
	.long	.LASF120
	.byte	0x9
	.uleb128 0x1
	.long	.LASF121
	.byte	0xa
	.uleb128 0x1
	.long	.LASF122
	.byte	0xb
	.uleb128 0x1
	.long	.LASF123
	.byte	0xc
	.uleb128 0x1
	.long	.LASF124
	.byte	0xd
	.uleb128 0x1
	.long	.LASF125
	.byte	0xe
	.uleb128 0x1
	.long	.LASF126
	.byte	0xf
	.uleb128 0x1
	.long	.LASF127
	.byte	0x10
	.uleb128 0x1
	.long	.LASF128
	.byte	0x11
	.uleb128 0x1
	.long	.LASF129
	.byte	0x12
	.uleb128 0x1
	.long	.LASF130
	.byte	0x13
	.uleb128 0x1
	.long	.LASF131
	.byte	0x14
	.uleb128 0x1
	.long	.LASF132
	.byte	0x15
	.uleb128 0x1
	.long	.LASF133
	.byte	0x16
	.uleb128 0x1
	.long	.LASF134
	.byte	0x17
	.uleb128 0x1
	.long	.LASF135
	.byte	0x18
	.uleb128 0x1
	.long	.LASF136
	.byte	0x19
	.uleb128 0x1
	.long	.LASF137
	.byte	0x1a
	.uleb128 0x1
	.long	.LASF138
	.byte	0x1b
	.uleb128 0x1
	.long	.LASF139
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF140
	.byte	0x1d
	.uleb128 0x1
	.long	.LASF141
	.byte	0x1e
	.uleb128 0x1
	.long	.LASF142
	.byte	0x1f
	.uleb128 0x1
	.long	.LASF143
	.byte	0x20
	.uleb128 0x1
	.long	.LASF144
	.byte	0x21
	.uleb128 0x1
	.long	.LASF145
	.byte	0x22
	.uleb128 0x1
	.long	.LASF146
	.byte	0x23
	.uleb128 0x1
	.long	.LASF147
	.byte	0x24
	.uleb128 0x1
	.long	.LASF148
	.byte	0x25
	.uleb128 0x1
	.long	.LASF149
	.byte	0x26
	.uleb128 0x1
	.long	.LASF150
	.byte	0x27
	.uleb128 0x1
	.long	.LASF151
	.byte	0x28
	.uleb128 0x1
	.long	.LASF152
	.byte	0x29
	.uleb128 0x1
	.long	.LASF153
	.byte	0x2a
	.uleb128 0x1
	.long	.LASF154
	.byte	0x2b
	.uleb128 0x1
	.long	.LASF155
	.byte	0x2c
	.uleb128 0x1
	.long	.LASF156
	.byte	0x2d
	.uleb128 0x1
	.long	.LASF157
	.byte	0x2e
	.uleb128 0x1
	.long	.LASF158
	.byte	0x2f
	.uleb128 0x1
	.long	.LASF159
	.byte	0x30
	.uleb128 0x1
	.long	.LASF160
	.byte	0x31
	.uleb128 0x1
	.long	.LASF161
	.byte	0x32
	.uleb128 0x1
	.long	.LASF162
	.byte	0x33
	.uleb128 0x1
	.long	.LASF163
	.byte	0x34
	.uleb128 0x1
	.long	.LASF164
	.byte	0x35
	.uleb128 0x1
	.long	.LASF165
	.byte	0x36
	.uleb128 0x1
	.long	.LASF166
	.byte	0x37
	.uleb128 0x1
	.long	.LASF167
	.byte	0x38
	.uleb128 0x1
	.long	.LASF168
	.byte	0x39
	.uleb128 0x1
	.long	.LASF169
	.byte	0x3a
	.uleb128 0x1
	.long	.LASF170
	.byte	0x3b
	.uleb128 0x1
	.long	.LASF171
	.byte	0x3c
	.uleb128 0x1
	.long	.LASF172
	.byte	0x3d
	.uleb128 0x1
	.long	.LASF173
	.byte	0x3e
	.uleb128 0x1
	.long	.LASF174
	.byte	0x3f
	.uleb128 0x1
	.long	.LASF175
	.byte	0x40
	.uleb128 0x1
	.long	.LASF176
	.byte	0x41
	.uleb128 0x1
	.long	.LASF177
	.byte	0x42
	.uleb128 0x1
	.long	.LASF178
	.byte	0x43
	.uleb128 0x1
	.long	.LASF179
	.byte	0x44
	.uleb128 0x1
	.long	.LASF180
	.byte	0x45
	.uleb128 0x1
	.long	.LASF181
	.byte	0x46
	.uleb128 0x1
	.long	.LASF182
	.byte	0x47
	.uleb128 0x1
	.long	.LASF183
	.byte	0x48
	.uleb128 0x1
	.long	.LASF184
	.byte	0x49
	.uleb128 0x1
	.long	.LASF185
	.byte	0x4a
	.uleb128 0x1
	.long	.LASF186
	.byte	0x4b
	.uleb128 0x1
	.long	.LASF187
	.byte	0x4c
	.uleb128 0x1
	.long	.LASF188
	.byte	0x4d
	.uleb128 0x1
	.long	.LASF189
	.byte	0x4e
	.uleb128 0x1
	.long	.LASF190
	.byte	0x4f
	.uleb128 0x1
	.long	.LASF191
	.byte	0x50
	.uleb128 0x1
	.long	.LASF192
	.byte	0x51
	.uleb128 0x1
	.long	.LASF193
	.byte	0x52
	.uleb128 0x1
	.long	.LASF194
	.byte	0x53
	.uleb128 0x1
	.long	.LASF195
	.byte	0x54
	.uleb128 0x1
	.long	.LASF196
	.byte	0x55
	.uleb128 0x1
	.long	.LASF197
	.byte	0x56
	.uleb128 0x1
	.long	.LASF198
	.byte	0x57
	.uleb128 0x1
	.long	.LASF199
	.byte	0x58
	.uleb128 0x1
	.long	.LASF200
	.byte	0x59
	.uleb128 0x1
	.long	.LASF201
	.byte	0x5a
	.uleb128 0x1
	.long	.LASF202
	.byte	0x5b
	.uleb128 0x1
	.long	.LASF203
	.byte	0x5c
	.uleb128 0x1
	.long	.LASF204
	.byte	0x5d
	.uleb128 0x1
	.long	.LASF205
	.byte	0x5e
	.uleb128 0x1
	.long	.LASF206
	.byte	0x5f
	.uleb128 0x1
	.long	.LASF207
	.byte	0x60
	.uleb128 0x1
	.long	.LASF208
	.byte	0x61
	.uleb128 0x1
	.long	.LASF209
	.byte	0x62
	.uleb128 0x1
	.long	.LASF210
	.byte	0x63
	.uleb128 0x1
	.long	.LASF211
	.byte	0x64
	.uleb128 0x1
	.long	.LASF212
	.byte	0x65
	.uleb128 0x1
	.long	.LASF213
	.byte	0x66
	.uleb128 0x1
	.long	.LASF214
	.byte	0x67
	.uleb128 0x1
	.long	.LASF215
	.byte	0x68
	.uleb128 0x1
	.long	.LASF216
	.byte	0x69
	.uleb128 0x1
	.long	.LASF217
	.byte	0x6a
	.uleb128 0x1
	.long	.LASF218
	.byte	0x6b
	.uleb128 0x1
	.long	.LASF219
	.byte	0x6c
	.uleb128 0x1
	.long	.LASF220
	.byte	0x6d
	.uleb128 0x1
	.long	.LASF221
	.byte	0x6e
	.uleb128 0x1
	.long	.LASF222
	.byte	0x6f
	.uleb128 0x1
	.long	.LASF223
	.byte	0x70
	.uleb128 0x1
	.long	.LASF224
	.byte	0x71
	.uleb128 0x1
	.long	.LASF225
	.byte	0x72
	.uleb128 0x1
	.long	.LASF226
	.byte	0x73
	.uleb128 0x1
	.long	.LASF227
	.byte	0x74
	.uleb128 0x1
	.long	.LASF228
	.byte	0x75
	.uleb128 0x1
	.long	.LASF229
	.byte	0x76
	.uleb128 0x1
	.long	.LASF230
	.byte	0x77
	.uleb128 0x1
	.long	.LASF231
	.byte	0x78
	.uleb128 0x1
	.long	.LASF232
	.byte	0x79
	.uleb128 0x1
	.long	.LASF233
	.byte	0x7a
	.uleb128 0x1
	.long	.LASF234
	.byte	0x7b
	.uleb128 0x1
	.long	.LASF235
	.byte	0x7c
	.uleb128 0x1
	.long	.LASF236
	.byte	0x7d
	.uleb128 0x1
	.long	.LASF237
	.byte	0x7e
	.uleb128 0x1
	.long	.LASF238
	.byte	0x7f
	.uleb128 0x1
	.long	.LASF239
	.byte	0x80
	.uleb128 0x1
	.long	.LASF240
	.byte	0x81
	.uleb128 0x1
	.long	.LASF241
	.byte	0x82
	.uleb128 0x1
	.long	.LASF242
	.byte	0x83
	.uleb128 0x1
	.long	.LASF243
	.byte	0x84
	.uleb128 0x1
	.long	.LASF244
	.byte	0x85
	.uleb128 0x1
	.long	.LASF245
	.byte	0x86
	.uleb128 0x1
	.long	.LASF246
	.byte	0x87
	.uleb128 0x1
	.long	.LASF247
	.byte	0x88
	.uleb128 0x1
	.long	.LASF248
	.byte	0x89
	.uleb128 0x1
	.long	.LASF249
	.byte	0x8a
	.uleb128 0x1
	.long	.LASF250
	.byte	0x8b
	.uleb128 0x1
	.long	.LASF251
	.byte	0x8c
	.uleb128 0x1
	.long	.LASF252
	.byte	0x8d
	.uleb128 0x1
	.long	.LASF253
	.byte	0x8e
	.uleb128 0x1
	.long	.LASF254
	.byte	0x8f
	.uleb128 0x1
	.long	.LASF255
	.byte	0x90
	.uleb128 0x1
	.long	.LASF256
	.byte	0x91
	.uleb128 0x1
	.long	.LASF257
	.byte	0x92
	.uleb128 0x1
	.long	.LASF258
	.byte	0x93
	.byte	0
	.uleb128 0x4
	.long	.LASF259
	.byte	0x13
	.byte	0xb0
	.byte	0x3
	.long	0x662
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.long	.LASF260
	.uleb128 0x8
	.byte	0x8
	.byte	0x4
	.long	.LASF261
	.uleb128 0x6
	.long	.LASF262
	.byte	0x28
	.byte	0x14
	.byte	0x2a
	.byte	0x10
	.long	0xa54
	.uleb128 0xc
	.string	"min"
	.byte	0x14
	.byte	0x2b
	.byte	0xb
	.long	0x25d
	.byte	0
	.uleb128 0xc
	.string	"max"
	.byte	0x14
	.byte	0x2c
	.byte	0xb
	.long	0x25d
	.byte	0x8
	.uleb128 0x2
	.long	.LASF263
	.byte	0x14
	.byte	0x2d
	.byte	0x9
	.long	0x9fe
	.byte	0x10
	.uleb128 0x2
	.long	.LASF264
	.byte	0x14
	.byte	0x2e
	.byte	0x9
	.long	0x9fe
	.byte	0x18
	.uleb128 0x2
	.long	.LASF265
	.byte	0x14
	.byte	0x2f
	.byte	0xb
	.long	0x25d
	.byte	0x20
	.byte	0
	.uleb128 0x4
	.long	.LASF266
	.byte	0x14
	.byte	0x30
	.byte	0x3
	.long	0xa05
	.uleb128 0x4
	.long	.LASF267
	.byte	0x12
	.byte	0x32
	.byte	0x10
	.long	0xa6c
	.uleb128 0x5
	.long	0xa71
	.uleb128 0x1b
	.long	0xa7c
	.uleb128 0x3
	.long	0x60b
	.byte	0
	.uleb128 0x4
	.long	.LASF268
	.byte	0x12
	.byte	0x38
	.byte	0xf
	.long	0xa88
	.uleb128 0x5
	.long	0xa8d
	.uleb128 0x19
	.long	0x70
	.long	0xaa1
	.uleb128 0x3
	.long	0x60b
	.uleb128 0x3
	.long	0xae
	.byte	0
	.uleb128 0x6
	.long	.LASF269
	.byte	0x10
	.byte	0x12
	.byte	0x40
	.byte	0x8
	.long	0xac8
	.uleb128 0xc
	.string	"id"
	.byte	0x12
	.byte	0x41
	.byte	0xf
	.long	0x3c
	.byte	0
	.uleb128 0x2
	.long	.LASF270
	.byte	0x12
	.byte	0x42
	.byte	0x15
	.long	0xa7c
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	.LASF271
	.byte	0x12
	.byte	0x67
	.byte	0x20
	.long	0xaa1
	.uleb128 0x1a
	.long	.LASF272
	.long	0x3c
	.byte	0x12
	.byte	0x6c
	.byte	0x6
	.long	0xb03
	.uleb128 0x1
	.long	.LASF273
	.byte	0
	.uleb128 0x1
	.long	.LASF274
	.byte	0x1
	.uleb128 0x1
	.long	.LASF275
	.byte	0x2
	.uleb128 0x1
	.long	.LASF276
	.byte	0x3
	.uleb128 0x1
	.long	.LASF277
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.long	.LASF278
	.byte	0x12
	.byte	0x84
	.byte	0x20
	.long	0xad4
	.uleb128 0x6
	.long	.LASF279
	.byte	0x30
	.byte	0x12
	.byte	0x96
	.byte	0x8
	.long	0xb37
	.uleb128 0x2
	.long	.LASF280
	.byte	0x12
	.byte	0x97
	.byte	0xe
	.long	0x214
	.byte	0
	.uleb128 0x2
	.long	.LASF281
	.byte	0x12
	.byte	0x98
	.byte	0xd
	.long	0xa54
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	.LASF282
	.byte	0x12
	.byte	0x9b
	.byte	0x1f
	.long	0xb0f
	.uleb128 0x6
	.long	.LASF283
	.byte	0x68
	.byte	0x12
	.byte	0x9d
	.byte	0x8
	.long	0xc06
	.uleb128 0xc
	.string	"id"
	.byte	0x12
	.byte	0x9e
	.byte	0xd
	.long	0x9eb
	.byte	0
	.uleb128 0x2
	.long	.LASF280
	.byte	0x12
	.byte	0x9f
	.byte	0xe
	.long	0x214
	.byte	0x8
	.uleb128 0x2
	.long	.LASF284
	.byte	0x12
	.byte	0xa0
	.byte	0xe
	.long	0x214
	.byte	0x10
	.uleb128 0x2
	.long	.LASF285
	.byte	0x12
	.byte	0xa1
	.byte	0x13
	.long	0xb03
	.byte	0x18
	.uleb128 0x2
	.long	.LASF286
	.byte	0x12
	.byte	0xa2
	.byte	0xe
	.long	0x214
	.byte	0x20
	.uleb128 0x2
	.long	.LASF287
	.byte	0x12
	.byte	0xa3
	.byte	0x6
	.long	0x70
	.byte	0x28
	.uleb128 0x2
	.long	.LASF288
	.byte	0x12
	.byte	0xa4
	.byte	0x6
	.long	0x70
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF289
	.byte	0x12
	.byte	0xa5
	.byte	0xf
	.long	0xa60
	.byte	0x30
	.uleb128 0x2
	.long	.LASF290
	.byte	0x12
	.byte	0xa6
	.byte	0xf
	.long	0xa60
	.byte	0x38
	.uleb128 0x2
	.long	.LASF291
	.byte	0x12
	.byte	0xa7
	.byte	0xf
	.long	0xa60
	.byte	0x40
	.uleb128 0x2
	.long	.LASF292
	.byte	0x12
	.byte	0xa8
	.byte	0xf
	.long	0xa60
	.byte	0x48
	.uleb128 0x2
	.long	.LASF293
	.byte	0x12
	.byte	0xa9
	.byte	0xf
	.long	0xa60
	.byte	0x50
	.uleb128 0x2
	.long	.LASF294
	.byte	0x12
	.byte	0xaa
	.byte	0x12
	.long	0xc06
	.byte	0x58
	.uleb128 0x2
	.long	.LASF295
	.byte	0x12
	.byte	0xab
	.byte	0xf
	.long	0x3c
	.byte	0x60
	.byte	0
	.uleb128 0x5
	.long	0xac8
	.uleb128 0x4
	.long	.LASF296
	.byte	0x12
	.byte	0xb2
	.byte	0x1e
	.long	0xb43
	.uleb128 0x5
	.long	0xc0b
	.uleb128 0x5
	.long	0xc21
	.uleb128 0x5
	.long	0x651
	.uleb128 0x6
	.long	.LASF297
	.byte	0x90
	.byte	0x15
	.byte	0x1c
	.byte	0x8
	.long	0xd38
	.uleb128 0x2
	.long	.LASF298
	.byte	0x15
	.byte	0x1d
	.byte	0x10
	.long	0xd47
	.byte	0
	.uleb128 0x2
	.long	.LASF299
	.byte	0x15
	.byte	0x1e
	.byte	0x10
	.long	0xd47
	.byte	0x8
	.uleb128 0x2
	.long	.LASF300
	.byte	0x15
	.byte	0x1f
	.byte	0x10
	.long	0xd47
	.byte	0x10
	.uleb128 0x2
	.long	.LASF301
	.byte	0x15
	.byte	0x23
	.byte	0x10
	.long	0xd47
	.byte	0x18
	.uleb128 0x2
	.long	.LASF302
	.byte	0x15
	.byte	0x24
	.byte	0x10
	.long	0xd47
	.byte	0x20
	.uleb128 0x2
	.long	.LASF303
	.byte	0x15
	.byte	0x25
	.byte	0x8
	.long	0xb0
	.byte	0x28
	.uleb128 0x2
	.long	.LASF304
	.byte	0x15
	.byte	0x26
	.byte	0x21
	.long	0xd93
	.byte	0x30
	.uleb128 0x2
	.long	.LASF305
	.byte	0x15
	.byte	0x27
	.byte	0x6
	.long	0x70
	.byte	0x38
	.uleb128 0xc
	.string	"evq"
	.byte	0x15
	.byte	0x28
	.byte	0x18
	.long	0xd9d
	.byte	0x40
	.uleb128 0x2
	.long	.LASF306
	.byte	0x15
	.byte	0x29
	.byte	0x6
	.long	0x70
	.byte	0x48
	.uleb128 0xc
	.string	"mtu"
	.byte	0x15
	.byte	0x2a
	.byte	0x6
	.long	0x70
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF307
	.byte	0x15
	.byte	0x2b
	.byte	0x1c
	.long	0xda7
	.byte	0x50
	.uleb128 0x2
	.long	.LASF308
	.byte	0x15
	.byte	0x2c
	.byte	0x1b
	.long	0xdb1
	.byte	0x58
	.uleb128 0x2
	.long	.LASF309
	.byte	0x15
	.byte	0x2d
	.byte	0x9
	.long	0xdc1
	.byte	0x60
	.uleb128 0x2
	.long	.LASF310
	.byte	0x15
	.byte	0x2e
	.byte	0x9
	.long	0x35a
	.byte	0x68
	.uleb128 0x2
	.long	.LASF311
	.byte	0x15
	.byte	0x2f
	.byte	0x9
	.long	0x35a
	.byte	0x69
	.uleb128 0x2
	.long	.LASF312
	.byte	0x15
	.byte	0x30
	.byte	0x11
	.long	0xdc6
	.byte	0x70
	.uleb128 0x2
	.long	.LASF313
	.byte	0x15
	.byte	0x31
	.byte	0x8
	.long	0xb0
	.byte	0x78
	.uleb128 0x2
	.long	.LASF314
	.byte	0x15
	.byte	0x32
	.byte	0x8
	.long	0xb0
	.byte	0x80
	.uleb128 0x2
	.long	.LASF315
	.byte	0x15
	.byte	0x33
	.byte	0x6
	.long	0x70
	.byte	0x88
	.byte	0
	.uleb128 0x5
	.long	0xc26
	.uleb128 0x11
	.long	.LASF317
	.uleb128 0x5
	.long	0xd3d
	.uleb128 0x5
	.long	0x3a1
	.uleb128 0x5
	.long	0xb37
	.uleb128 0x4
	.long	.LASF318
	.byte	0x12
	.byte	0xcb
	.byte	0x1a
	.long	0x554
	.uleb128 0x5
	.long	0xd51
	.uleb128 0x5
	.long	0x4e7
	.uleb128 0x6
	.long	.LASF319
	.byte	0x8
	.byte	0x16
	.byte	0x3d
	.byte	0x8
	.long	0xd82
	.uleb128 0x2
	.long	.LASF320
	.byte	0x16
	.byte	0x3e
	.byte	0x10
	.long	0xd47
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF319
	.byte	0x16
	.byte	0x41
	.byte	0x1e
	.long	0xd67
	.uleb128 0x11
	.long	.LASF321
	.uleb128 0x5
	.long	0xd8e
	.uleb128 0x11
	.long	.LASF322
	.uleb128 0x5
	.long	0xd98
	.uleb128 0x11
	.long	.LASF323
	.uleb128 0x5
	.long	0xda2
	.uleb128 0x11
	.long	.LASF324
	.uleb128 0x5
	.long	0xdac
	.uleb128 0x1b
	.long	0xdc1
	.uleb128 0x3
	.long	0xd38
	.byte	0
	.uleb128 0x5
	.long	0xdb6
	.uleb128 0x5
	.long	0xd82
	.uleb128 0x8
	.byte	0x10
	.byte	0x4
	.long	.LASF325
	.uleb128 0x4
	.long	.LASF326
	.byte	0x17
	.byte	0x37
	.byte	0x1a
	.long	0xdde
	.uleb128 0x11
	.long	.LASF326
	.uleb128 0x4
	.long	.LASF327
	.byte	0x17
	.byte	0x5c
	.byte	0x13
	.long	0x20d
	.uleb128 0x4
	.long	.LASF328
	.byte	0x17
	.byte	0x62
	.byte	0x12
	.long	0x219
	.uleb128 0x4
	.long	.LASF329
	.byte	0x17
	.byte	0x68
	.byte	0xf
	.long	0xe07
	.uleb128 0x5
	.long	0xe0c
	.uleb128 0x19
	.long	0x70
	.long	0xe1b
	.uleb128 0x3
	.long	0xe1b
	.byte	0
	.uleb128 0x5
	.long	0xdd2
	.uleb128 0x4
	.long	.LASF330
	.byte	0x17
	.byte	0x6d
	.byte	0xf
	.long	0xe2c
	.uleb128 0x5
	.long	0xe31
	.uleb128 0x19
	.long	0x70
	.long	0xe4a
	.uleb128 0x3
	.long	0xe1b
	.uleb128 0x3
	.long	0x70
	.uleb128 0x3
	.long	0xdef
	.byte	0
	.uleb128 0x5
	.long	0xd9
	.uleb128 0x6
	.long	.LASF331
	.byte	0x10
	.byte	0x18
	.byte	0x1f
	.byte	0x10
	.long	0xe77
	.uleb128 0x2
	.long	.LASF280
	.byte	0x18
	.byte	0x20
	.byte	0xf
	.long	0x214
	.byte	0
	.uleb128 0x2
	.long	.LASF332
	.byte	0x18
	.byte	0x21
	.byte	0x11
	.long	0xdfb
	.byte	0x8
	.byte	0
	.uleb128 0x13
	.long	0xe4f
	.uleb128 0x4
	.long	.LASF331
	.byte	0x18
	.byte	0x22
	.byte	0x3
	.long	0xe4f
	.uleb128 0x13
	.long	0xe7c
	.uleb128 0x27
	.long	.LASF391
	.byte	0x1c
	.byte	0x3c
	.byte	0x15
	.long	0xc0b
	.uleb128 0xe
	.long	0xe77
	.long	0xea9
	.uleb128 0xf
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.long	0xe99
	.uleb128 0x7
	.long	.LASF339
	.byte	0x1d
	.byte	0x1e
	.long	0xea9
	.uleb128 0x9
	.byte	0x3
	.quad	printlib
	.uleb128 0x6
	.long	.LASF333
	.byte	0x20
	.byte	0x2
	.byte	0x2d
	.byte	0x10
	.long	0xf1d
	.uleb128 0xc
	.string	"L"
	.byte	0x2
	.byte	0x2f
	.byte	0xe
	.long	0xe1b
	.byte	0
	.uleb128 0x2
	.long	.LASF334
	.byte	0x2
	.byte	0x30
	.byte	0x9
	.long	0xb0
	.byte	0x8
	.uleb128 0x2
	.long	.LASF335
	.byte	0x2
	.byte	0x32
	.byte	0x9
	.long	0xb0
	.byte	0x10
	.uleb128 0x2
	.long	.LASF336
	.byte	0x2
	.byte	0x34
	.byte	0xa
	.long	0x35a
	.byte	0x18
	.uleb128 0x2
	.long	.LASF337
	.byte	0x2
	.byte	0x35
	.byte	0xa
	.long	0x35a
	.byte	0x19
	.uleb128 0x2
	.long	.LASF101
	.byte	0x2
	.byte	0x36
	.byte	0x8
	.long	0xf1d
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.long	0xb5
	.long	0xf2d
	.uleb128 0xf
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.long	.LASF338
	.byte	0x2
	.byte	0x37
	.byte	0x3
	.long	0xec3
	.uleb128 0xe
	.long	0xac8
	.long	0xf49
	.uleb128 0xf
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x28
	.long	.LASF340
	.byte	0x2
	.value	0x12f
	.byte	0x17
	.long	0xf39
	.uleb128 0x9
	.byte	0x3
	.quad	control_methods
	.uleb128 0x29
	.long	0xe8d
	.byte	0x2
	.value	0x14a
	.byte	0xe
	.uleb128 0x9
	.byte	0x3
	.quad	lua_filter_desc
	.uleb128 0x15
	.long	.LASF341
	.byte	0x10
	.value	0x12f
	.byte	0x9
	.long	0xb0
	.long	0xf8a
	.uleb128 0x3
	.long	0x214
	.byte	0
	.uleb128 0x9
	.long	.LASF342
	.byte	0x11
	.byte	0x61
	.byte	0xb
	.long	0xd62
	.long	0xfa0
	.uleb128 0x3
	.long	0xfa0
	.byte	0
	.uleb128 0x5
	.long	0x520
	.uleb128 0x12
	.long	.LASF343
	.byte	0x11
	.byte	0x5f
	.byte	0x7
	.long	0xfbc
	.uleb128 0x3
	.long	0xfa0
	.uleb128 0x3
	.long	0xd62
	.byte	0
	.uleb128 0x12
	.long	.LASF344
	.byte	0x11
	.byte	0x7d
	.byte	0x7
	.long	0xfce
	.uleb128 0x3
	.long	0xd62
	.byte	0
	.uleb128 0x9
	.long	.LASF345
	.byte	0x11
	.byte	0x83
	.byte	0xa
	.long	0xd62
	.long	0xfe4
	.uleb128 0x3
	.long	0xd62
	.byte	0
	.uleb128 0x9
	.long	.LASF346
	.byte	0x19
	.byte	0x2b
	.byte	0xe
	.long	0xae
	.long	0x1004
	.uleb128 0x3
	.long	0xae
	.uleb128 0x3
	.long	0x233
	.uleb128 0x3
	.long	0xd9
	.byte	0
	.uleb128 0x9
	.long	.LASF347
	.byte	0x11
	.byte	0x72
	.byte	0xa
	.long	0xd62
	.long	0x101f
	.uleb128 0x3
	.long	0xd9
	.uleb128 0x3
	.long	0x70
	.byte	0
	.uleb128 0x9
	.long	.LASF348
	.byte	0x17
	.byte	0xb1
	.byte	0xd
	.long	0x70
	.long	0x103a
	.uleb128 0x3
	.long	0xe1b
	.uleb128 0x3
	.long	0x70
	.byte	0
	.uleb128 0x9
	.long	.LASF349
	.byte	0x17
	.byte	0xb5
	.byte	0x15
	.long	0xde3
	.long	0x105a
	.uleb128 0x3
	.long	0xe1b
	.uleb128 0x3
	.long	0x70
	.uleb128 0x3
	.long	0x105a
	.byte	0
	.uleb128 0x5
	.long	0x70
	.uleb128 0x9
	.long	.LASF350
	.byte	0x17
	.byte	0xe2
	.byte	0x15
	.long	0x214
	.long	0x107f
	.uleb128 0x3
	.long	0xe1b
	.uleb128 0x3
	.long	0x214
	.uleb128 0x3
	.long	0xd9
	.byte	0
	.uleb128 0x9
	.long	.LASF351
	.byte	0x11
	.byte	0x86
	.byte	0x9
	.long	0xd9
	.long	0x1095
	.uleb128 0x3
	.long	0x1095
	.byte	0
	.uleb128 0x5
	.long	0x4f3
	.uleb128 0x1c
	.long	.LASF352
	.byte	0x17
	.value	0x101
	.byte	0xe
	.long	0x10b2
	.uleb128 0x3
	.long	0xe1b
	.uleb128 0x3
	.long	0x214
	.byte	0
	.uleb128 0x12
	.long	.LASF353
	.byte	0x17
	.byte	0xe1
	.byte	0xe
	.long	0x10c9
	.uleb128 0x3
	.long	0xe1b
	.uleb128 0x3
	.long	0xde3
	.byte	0
	.uleb128 0x1c
	.long	.LASF354
	.byte	0x10
	.value	0x12c
	.byte	0x7
	.long	0x10dc
	.uleb128 0x3
	.long	0xae
	.byte	0
	.uleb128 0x12
	.long	.LASF355
	.byte	0x17
	.byte	0x91
	.byte	0xe
	.long	0x10ee
	.uleb128 0x3
	.long	0xe1b
	.byte	0
	.uleb128 0x12
	.long	.LASF356
	.byte	0x1a
	.byte	0x34
	.byte	0xe
	.long	0x1100
	.uleb128 0x3
	.long	0xe1b
	.byte	0
	.uleb128 0x2a
	.long	.LASF392
	.byte	0x18
	.byte	0x5c
	.byte	0x14
	.long	0xe1b
	.uleb128 0x15
	.long	.LASF357
	.byte	0x10
	.value	0x12e
	.byte	0x8
	.long	0xae
	.long	0x1123
	.uleb128 0x3
	.long	0xd9
	.byte	0
	.uleb128 0x15
	.long	.LASF358
	.byte	0x17
	.value	0x113
	.byte	0xd
	.long	0x70
	.long	0x1153
	.uleb128 0x3
	.long	0xe1b
	.uleb128 0x3
	.long	0x70
	.uleb128 0x3
	.long	0x70
	.uleb128 0x3
	.long	0x70
	.uleb128 0x3
	.long	0xdef
	.uleb128 0x3
	.long	0xe20
	.byte	0
	.uleb128 0x9
	.long	.LASF359
	.byte	0x18
	.byte	0x5a
	.byte	0xd
	.long	0x70
	.long	0x116e
	.uleb128 0x3
	.long	0xe1b
	.uleb128 0x3
	.long	0x214
	.byte	0
	.uleb128 0x12
	.long	.LASF360
	.byte	0x17
	.byte	0x9f
	.byte	0xe
	.long	0x1185
	.uleb128 0x3
	.long	0xe1b
	.uleb128 0x3
	.long	0x70
	.byte	0
	.uleb128 0x12
	.long	.LASF361
	.byte	0x18
	.byte	0x63
	.byte	0xe
	.long	0x11a1
	.uleb128 0x3
	.long	0xe1b
	.uleb128 0x3
	.long	0x11a1
	.uleb128 0x3
	.long	0x70
	.byte	0
	.uleb128 0x5
	.long	0xe88
	.uleb128 0x9
	.long	.LASF362
	.byte	0x17
	.byte	0xf0
	.byte	0xd
	.long	0x70
	.long	0x11c1
	.uleb128 0x3
	.long	0xe1b
	.uleb128 0x3
	.long	0x214
	.byte	0
	.uleb128 0x15
	.long	.LASF363
	.byte	0x1b
	.value	0x164
	.byte	0xc
	.long	0x70
	.long	0x11d9
	.uleb128 0x3
	.long	0x214
	.uleb128 0x2b
	.byte	0
	.uleb128 0x9
	.long	.LASF364
	.byte	0x17
	.byte	0xb7
	.byte	0x15
	.long	0x214
	.long	0x11f9
	.uleb128 0x3
	.long	0xe1b
	.uleb128 0x3
	.long	0x70
	.uleb128 0x3
	.long	0xe4a
	.byte	0
	.uleb128 0x9
	.long	.LASF365
	.byte	0x17
	.byte	0xad
	.byte	0xd
	.long	0x70
	.long	0x1214
	.uleb128 0x3
	.long	0xe1b
	.uleb128 0x3
	.long	0x70
	.byte	0
	.uleb128 0x9
	.long	.LASF366
	.byte	0x17
	.byte	0x9e
	.byte	0xd
	.long	0x70
	.long	0x122a
	.uleb128 0x3
	.long	0xe1b
	.byte	0
	.uleb128 0x1d
	.long	.LASF367
	.value	0x11f
	.long	0x70
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x1274
	.uleb128 0x16
	.string	"f"
	.value	0x11f
	.byte	0x20
	.long	0xd5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.string	"arg"
	.value	0x11f
	.byte	0x29
	.long	0xae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.string	"d"
	.value	0x121
	.long	0x1274
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.long	0xf2d
	.uleb128 0x1d
	.long	.LASF368
	.value	0x10e
	.long	0x70
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x12c3
	.uleb128 0x16
	.string	"f"
	.value	0x10e
	.byte	0x17
	.long	0xd5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.string	"arg"
	.value	0x10e
	.byte	0x20
	.long	0xae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.string	"d"
	.value	0x110
	.long	0x1274
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1f
	.long	.LASF369
	.byte	0xfc
	.long	0x70
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x130c
	.uleb128 0xa
	.string	"f"
	.byte	0x2
	.byte	0xfc
	.byte	0x18
	.long	0xd5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"arg"
	.byte	0x2
	.byte	0xfc
	.byte	0x21
	.long	0xae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.string	"d"
	.byte	0xfe
	.byte	0xf
	.long	0x1274
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x14
	.long	.LASF381
	.byte	0x2
	.byte	0x79
	.byte	0x1
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x14b1
	.uleb128 0xa
	.string	"f"
	.byte	0x2
	.byte	0x79
	.byte	0x1b
	.long	0xd5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0xb
	.string	"d"
	.byte	0x7b
	.byte	0xe
	.long	0x1274
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xb
	.string	"im"
	.byte	0x7c
	.byte	0x9
	.long	0xd62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x7
	.long	.LASF370
	.byte	0x7d
	.byte	0x9
	.long	0xd62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xb
	.string	"err"
	.byte	0x7e
	.byte	0x5
	.long	0x70
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0xb
	.string	"i"
	.byte	0x7f
	.byte	0x5
	.long	0x70
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x10
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x7
	.long	.LASF371
	.byte	0x88
	.byte	0xf
	.long	0x3c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0xb
	.string	"p"
	.byte	0xe7
	.byte	0xa
	.long	0xd62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x10
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x7
	.long	.LASF372
	.byte	0x8b
	.byte	0xb
	.long	0x35a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -126
	.uleb128 0x7
	.long	.LASF373
	.byte	0x9d
	.byte	0x8
	.long	0x70
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x20
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0x13fc
	.uleb128 0xb
	.string	"sz"
	.byte	0x94
	.byte	0xc
	.long	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x20
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x148e
	.uleb128 0x7
	.long	.LASF374
	.byte	0xa7
	.byte	0x9
	.long	0x70
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x7
	.long	.LASF375
	.byte	0xb5
	.byte	0xc
	.long	0xd9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x7
	.long	.LASF376
	.byte	0xb6
	.byte	0xa
	.long	0xb5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -125
	.uleb128 0x7
	.long	.LASF377
	.byte	0xc3
	.byte	0xc
	.long	0xd9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x10
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x7
	.long	.LASF378
	.byte	0xc6
	.byte	0x12
	.long	0x214
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x7
	.long	.LASF379
	.byte	0xd0
	.byte	0xe
	.long	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x7
	.long	.LASF380
	.byte	0xe0
	.byte	0x11
	.long	0x214
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LASF382
	.byte	0x2
	.byte	0x6e
	.byte	0x1
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x14ea
	.uleb128 0xa
	.string	"f"
	.byte	0x2
	.byte	0x6e
	.byte	0x1a
	.long	0xd5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.string	"cd"
	.byte	0x70
	.byte	0xe
	.long	0x1274
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x14
	.long	.LASF383
	.byte	0x2
	.byte	0x63
	.byte	0x1
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x1523
	.uleb128 0xa
	.string	"f"
	.byte	0x2
	.byte	0x63
	.byte	0x18
	.long	0xd5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.string	"cd"
	.byte	0x65
	.byte	0xe
	.long	0x1274
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x14
	.long	.LASF384
	.byte	0x2
	.byte	0x43
	.byte	0x1
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x158f
	.uleb128 0xa
	.string	"f"
	.byte	0x2
	.byte	0x43
	.byte	0x19
	.long	0xd5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xb
	.string	"d"
	.byte	0x45
	.byte	0xe
	.long	0x1274
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LLRL0
	.uleb128 0xb
	.string	"err"
	.byte	0x48
	.byte	0x6
	.long	0x70
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x7
	.long	.LASF380
	.byte	0x4f
	.byte	0x10
	.long	0x214
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF393
	.byte	0x2
	.byte	0x3b
	.byte	0x1
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x15bb
	.uleb128 0xa
	.string	"f"
	.byte	0x2
	.byte	0x3b
	.byte	0x18
	.long	0xd5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2e
	.long	.LASF394
	.byte	0x2
	.byte	0x24
	.byte	0x1
	.long	0x70
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x15eb
	.uleb128 0xa
	.string	"L"
	.byte	0x2
	.byte	0x24
	.byte	0x1e
	.long	0xe1b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1f
	.long	.LASF385
	.byte	0x6
	.long	0x70
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x1665
	.uleb128 0xa
	.string	"L"
	.byte	0x2
	.byte	0x6
	.byte	0x18
	.long	0xe1b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.long	.LASF386
	.byte	0x8
	.byte	0x7
	.long	0x70
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0xb
	.string	"i"
	.byte	0xa
	.byte	0xc
	.long	0x70
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0xb
	.string	"str"
	.byte	0xf
	.byte	0x10
	.long	0x214
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF387
	.byte	0x1
	.byte	0x4d
	.byte	0x16
	.long	0x35a
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x1695
	.uleb128 0xa
	.string	"q"
	.byte	0x1
	.byte	0x4d
	.byte	0x34
	.long	0x1695
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.long	0x65d
	.uleb128 0x14
	.long	.LASF388
	.byte	0x1
	.byte	0x2d
	.byte	0x14
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x16d3
	.uleb128 0xa
	.string	"q"
	.byte	0x1
	.byte	0x2d
	.byte	0x2a
	.long	0xc21
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.string	"m"
	.byte	0x1
	.byte	0x2d
	.byte	0x35
	.long	0xd62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x30
	.long	.LASF389
	.byte	0x1
	.byte	0x29
	.byte	0x17
	.long	0xd62
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.string	"q"
	.byte	0x1
	.byte	0x29
	.byte	0x2d
	.long	0xc21
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.sleb128 2
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
	.uleb128 0xa
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 15
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x2e
	.byte	0x1
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
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.long	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.LLRL0:
	.byte	0x4
	.uleb128 .LBB4-.Ltext0
	.uleb128 .LBE4-.Ltext0
	.byte	0x4
	.uleb128 .LBB6-.Ltext0
	.uleb128 .LBE6-.Ltext0
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF92:
	.string	"queue_t"
.LASF281:
	.string	"bp_elapsed"
.LASF267:
	.string	"MSFilterFunc"
.LASF252:
	.string	"MS_MEDIACODEC_H265_DEC_ID"
.LASF282:
	.string	"MSFilterStats"
.LASF127:
	.string	"MS_SPEEX_ENC_ID"
.LASF164:
	.string	"MS_H263_OLD_ENC_ID"
.LASF236:
	.string	"MS_VT_H264_ENC_ID"
.LASF73:
	.string	"ortp_recv_addr_t"
.LASF158:
	.string	"MS_CA_WRITE_ID"
.LASF371:
	.string	"disabled_out"
.LASF155:
	.string	"MS_SNOW_DEC_ID"
.LASF140:
	.string	"MS_PIX_CONV_ID"
.LASF133:
	.string	"MS_H263_ENC_ID"
.LASF166:
	.string	"MS_VFW_ID"
.LASF295:
	.string	"flags"
.LASF67:
	.string	"ipi_addr"
.LASF151:
	.string	"MS_JOIN_ID"
.LASF231:
	.string	"MS_VAD_DTX_ID"
.LASF213:
	.string	"MS_AAL2_G726_40_DEC_ID"
.LASF4:
	.string	"unsigned int"
.LASF134:
	.string	"MS_H263_DEC_ID"
.LASF62:
	.string	"next"
.LASF142:
	.string	"MS_SIZE_CONV_ID"
.LASF169:
	.string	"MS_DSCAP_ID"
.LASF154:
	.string	"MS_VOLUME_ID"
.LASF229:
	.string	"MS_MKV_RECORDER_ID"
.LASF100:
	.string	"factory"
.LASF130:
	.string	"MS_GSM_DEC_ID"
.LASF350:
	.string	"lua_pushlstring"
.LASF315:
	.string	"expected_video_bandwidth"
.LASF80:
	.string	"b_wptr"
.LASF257:
	.string	"MS_ANDROID_OPENGL_DISPLAY_ID"
.LASF113:
	.string	"MS_FILTER_BASE_ID"
.LASF305:
	.string	"cpu_count"
.LASF317:
	.string	"_MSTicker"
.LASF256:
	.string	"MS_ANDROID_DISPLAY_BAD_ID"
.LASF144:
	.string	"MS_THEORA_ENC_ID"
.LASF120:
	.string	"MS_ALAW_ENC_ID"
.LASF332:
	.string	"func"
.LASF122:
	.string	"MS_RTP_SEND_ID"
.LASF90:
	.string	"_q_stopper"
.LASF63:
	.string	"prev"
.LASF235:
	.string	"MS_VT_H263_DEC_ID"
.LASF29:
	.string	"__count"
.LASF16:
	.string	"__intptr_t"
.LASF171:
	.string	"MS_AQ_WRITE_ID"
.LASF77:
	.string	"b_cont"
.LASF85:
	.string	"net_addr"
.LASF81:
	.string	"reserved1"
.LASF293:
	.string	"uninit"
.LASF56:
	.string	"__u6_addr16"
.LASF70:
	.string	"family"
.LASF119:
	.string	"MS_ULAW_DEC_ID"
.LASF228:
	.string	"MS_QSA_WRITE_ID"
.LASF364:
	.string	"lua_tolstring"
.LASF23:
	.string	"__pthread_internal_list"
.LASF357:
	.string	"ortp_malloc0"
.LASF132:
	.string	"MS_SDL_OUT_ID"
.LASF176:
	.string	"MS_PULSE_WRITE_ID"
.LASF45:
	.string	"uint32_t"
.LASF24:
	.string	"__prev"
.LASF76:
	.string	"b_next"
.LASF198:
	.string	"MS_VP8_DEC_ID"
.LASF21:
	.string	"long long unsigned int"
.LASF380:
	.string	"answer"
.LASF376:
	.string	"type_on_top"
.LASF321:
	.string	"_MSVideoPresetsManager"
.LASF221:
	.string	"MS_GENERIC_PLC_ID"
.LASF260:
	.string	"float"
.LASF109:
	.string	"_MSQueue"
.LASF331:
	.string	"luaL_Reg"
.LASF204:
	.string	"MS_G726_16_ENC_ID"
.LASF78:
	.string	"b_datap"
.LASF265:
	.string	"count"
.LASF365:
	.string	"lua_isstring"
.LASF159:
	.string	"MS_WINSNDDS_READ_ID"
.LASF194:
	.string	"MS_TONE_DETECTOR_ID"
.LASF245:
	.string	"MS_PCAP_FILE_PLAYER_ID"
.LASF238:
	.string	"MS_RTT_4103_SOURCE_ID"
.LASF291:
	.string	"process"
.LASF93:
	.string	"_MSCPoint"
.LASF170:
	.string	"MS_AQ_READ_ID"
.LASF308:
	.string	"wbcmanager"
.LASF55:
	.string	"__u6_addr8"
.LASF224:
	.string	"MS_AAC_ELD_DEC_ID"
.LASF153:
	.string	"MS_VIDEO_OUT_ID"
.LASF152:
	.string	"MS_RESAMPLE_ID"
.LASF218:
	.string	"MS_L16_DEC_ID"
.LASF185:
	.string	"MS_IOUNIT_WRITE_ID"
.LASF276:
	.string	"MS_FILTER_ENCODING_CAPTURER"
.LASF279:
	.string	"_MSFilterStats"
.LASF20:
	.string	"tv_usec"
.LASF9:
	.string	"__uint16_t"
.LASF116:
	.string	"MS_OSS_READ_ID"
.LASF306:
	.string	"max_payload_size"
.LASF30:
	.string	"__owner"
.LASF34:
	.string	"__elision"
.LASF310:
	.string	"statistics_enabled"
.LASF161:
	.string	"MS_STATIC_IMAGE_ID"
.LASF68:
	.string	"ipi6_addr"
.LASF57:
	.string	"__u6_addr32"
.LASF202:
	.string	"MS_G726_32_ENC_ID"
.LASF22:
	.string	"timeval"
.LASF272:
	.string	"_MSFilterCategory"
.LASF343:
	.string	"putq"
.LASF54:
	.string	"s_addr"
.LASF18:
	.string	"size_t"
.LASF47:
	.string	"sa_family_t"
.LASF135:
	.string	"MS_ARTS_READ_ID"
.LASF387:
	.string	"ms_queue_empty"
.LASF187:
	.string	"MS_ANDROID_SOUND_WRITE_ID"
.LASF356:
	.string	"luaL_openlibs"
.LASF60:
	.string	"bool_t"
.LASF261:
	.string	"double"
.LASF344:
	.string	"freemsg"
.LASF242:
	.string	"MS_BV16_DEC_ID"
.LASF307:
	.string	"sndcardmanager"
.LASF379:
	.string	"msg_len"
.LASF49:
	.string	"ss_family"
.LASF216:
	.string	"MS_AAL2_G726_16_DEC_ID"
.LASF12:
	.string	"__uint64_t"
.LASF211:
	.string	"MS_G726_24_DEC_ID"
.LASF95:
	.string	"_MSFilter"
.LASF141:
	.string	"MS_TEE_ID"
.LASF324:
	.string	"_MSWebCamManager"
.LASF273:
	.string	"MS_FILTER_OTHER"
.LASF233:
	.string	"MS_BB10_CAPTURE_ID"
.LASF314:
	.string	"echo_canceller_filtername"
.LASF162:
	.string	"MS_V4L2_CAPTURE_ID"
.LASF372:
	.string	"input_empty"
.LASF207:
	.string	"MS_AAL2_G726_24_ENC_ID"
.LASF255:
	.string	"MS_VT_H265_ENC_ID"
.LASF115:
	.string	"MS_ALSA_WRITE_ID"
.LASF286:
	.string	"enc_fmt"
.LASF48:
	.string	"sockaddr_storage"
.LASF108:
	.string	"MSCPoint"
.LASF103:
	.string	"notify_callbacks"
.LASF385:
	.string	"l_my_print"
.LASF15:
	.string	"char"
.LASF172:
	.string	"MS_EQUALIZER_ID"
.LASF51:
	.string	"__ss_align"
.LASF329:
	.string	"lua_CFunction"
.LASF311:
	.string	"voip_initd"
.LASF360:
	.string	"lua_settop"
.LASF369:
	.string	"control_stop"
.LASF214:
	.string	"MS_AAL2_G726_32_DEC_ID"
.LASF148:
	.string	"MS_MPEG4_ENC_ID"
.LASF377:
	.string	"str_len"
.LASF284:
	.string	"text"
.LASF147:
	.string	"MS_PASND_WRITE_ID"
.LASF209:
	.string	"MS_G726_40_DEC_ID"
.LASF320:
	.string	"sound_devices_descriptions"
.LASF333:
	.string	"_ControlData"
.LASF88:
	.string	"mblk_t"
.LASF269:
	.string	"_MSFilterMethod"
.LASF33:
	.string	"__spins"
.LASF183:
	.string	"MS_H264_DEC_ID"
.LASF43:
	.string	"uint8_t"
.LASF292:
	.string	"postprocess"
.LASF247:
	.string	"MS_G729_DEC_ID"
.LASF389:
	.string	"ms_queue_get"
.LASF126:
	.string	"MS_DTMF_GEN_ID"
.LASF102:
	.string	"ticker"
.LASF288:
	.string	"noutputs"
.LASF139:
	.string	"MS_SPEEX_EC_ID"
.LASF355:
	.string	"lua_close"
.LASF112:
	.string	"MS_FILTER_PLUGIN_ID"
.LASF359:
	.string	"luaL_loadstring"
.LASF271:
	.string	"MSFilterMethod"
.LASF180:
	.string	"MS_ITC_SINK_ID"
.LASF98:
	.string	"inputs"
.LASF99:
	.string	"outputs"
.LASF226:
	.string	"MS_OPUS_DEC_ID"
.LASF177:
	.string	"MS_DRAWDIB_DISPLAY_ID"
.LASF167:
	.string	"MS_VOID_SOURCE_ID"
.LASF35:
	.string	"__list"
.LASF40:
	.string	"long long int"
.LASF370:
	.string	"out_im"
.LASF186:
	.string	"MS_ANDROID_SOUND_READ_ID"
.LASF363:
	.string	"printf"
.LASF97:
	.string	"lock"
.LASF217:
	.string	"MS_L16_ENC_ID"
.LASF101:
	.string	"padding"
.LASF328:
	.string	"lua_KContext"
.LASF253:
	.string	"MS_MEDIACODEC_H265_ENC_ID"
.LASF362:
	.string	"lua_getglobal"
.LASF237:
	.string	"MS_VT_H264_DEC_ID"
.LASF220:
	.string	"MS_GLXVIDEO_ID"
.LASF175:
	.string	"MS_PULSE_READ_ID"
.LASF303:
	.string	"plugins_dir"
.LASF136:
	.string	"MS_ARTS_WRITE_ID"
.LASF316:
	.string	"datab"
.LASF318:
	.string	"MSFilter"
.LASF156:
	.string	"MS_SNOW_ENC_ID"
.LASF300:
	.string	"offer_answer_provider_list"
.LASF285:
	.string	"category"
.LASF347:
	.string	"allocb"
.LASF309:
	.string	"voip_uninit_func"
.LASF258:
	.string	"MS_ANDROID_TEXTURE_DISPLAY_ID"
.LASF353:
	.string	"lua_pushinteger"
.LASF59:
	.string	"__in6_u"
.LASF393:
	.string	"set_queues"
.LASF32:
	.string	"__kind"
.LASF392:
	.string	"luaL_newstate"
.LASF196:
	.string	"MS_IOS_DISPLAY_ID"
.LASF326:
	.string	"lua_State"
.LASF277:
	.string	"MS_FILTER_DECODER_RENDERER"
.LASF197:
	.string	"MS_VP8_ENC_ID"
.LASF322:
	.string	"_MSEventQueue"
.LASF367:
	.string	"control_set_preamble"
.LASF107:
	.string	"seen"
.LASF79:
	.string	"b_rptr"
.LASF129:
	.string	"MS_GSM_ENC_ID"
.LASF69:
	.string	"ortp_recv_addr"
.LASF319:
	.string	"MSDevicesInfo"
.LASF335:
	.string	"script_code"
.LASF302:
	.string	"platform_tags"
.LASF64:
	.string	"data"
.LASF131:
	.string	"MS_V4L_ID"
.LASF368:
	.string	"control_run"
.LASF26:
	.string	"__pthread_list_t"
.LASF325:
	.string	"long double"
.LASF41:
	.string	"intptr_t"
.LASF44:
	.string	"uint16_t"
.LASF382:
	.string	"control_uninit"
.LASF121:
	.string	"MS_ALAW_DEC_ID"
.LASF83:
	.string	"timestamp"
.LASF106:
	.string	"postponed_task"
.LASF182:
	.string	"MS_EXT_DISPLAY_ID"
.LASF206:
	.string	"MS_AAL2_G726_32_ENC_ID"
.LASF240:
	.string	"MS_MEDIACODEC_H264_DEC_ID"
.LASF10:
	.string	"__uint32_t"
.LASF145:
	.string	"MS_THEORA_DEC_ID"
.LASF234:
	.string	"MS_VT_H263_ENC_ID"
.LASF378:
	.string	"msg_body"
.LASF124:
	.string	"MS_FILE_PLAYER_ID"
.LASF249:
	.string	"MS_WASAPI_READ_ID"
.LASF86:
	.string	"net_addrlen"
.LASF390:
	.string	"GNU C17 11.3.0 -mms-bitfields -mtune=generic -march=x86-64 -ggdb -ggdb -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF128:
	.string	"MS_SPEEX_DEC_ID"
.LASF386:
	.string	"nargs"
.LASF7:
	.string	"short int"
.LASF374:
	.string	"script_body_status"
.LASF118:
	.string	"MS_ULAW_ENC_ID"
.LASF191:
	.string	"MS_ANDROID_DISPLAY_ID"
.LASF312:
	.string	"devices_info"
.LASF11:
	.string	"long int"
.LASF313:
	.string	"image_resources_dir"
.LASF181:
	.string	"MS_ITC_SOURCE_ID"
.LASF193:
	.string	"MS_ANDROID_VIDEO_WRITE_ID"
.LASF381:
	.string	"control_process"
.LASF259:
	.string	"MSFilterId"
.LASF264:
	.string	"quad_moment"
.LASF232:
	.string	"MS_BB10_DISPLAY_ID"
.LASF165:
	.string	"MS_MIRE_ID"
.LASF251:
	.string	"MS_AUDIO_FLOW_CONTROL_ID"
.LASF361:
	.string	"luaL_setfuncs"
.LASF94:
	.string	"filter"
.LASF274:
	.string	"MS_FILTER_ENCODER"
.LASF330:
	.string	"lua_KFunction"
.LASF184:
	.string	"MS_IOUNIT_READ_ID"
.LASF117:
	.string	"MS_OSS_WRITE_ID"
.LASF212:
	.string	"MS_G726_16_DEC_ID"
.LASF294:
	.string	"methods"
.LASF91:
	.string	"q_mcount"
.LASF246:
	.string	"MS_OGL_ID"
.LASF84:
	.string	"recv_addr"
.LASF339:
	.string	"printlib"
.LASF349:
	.string	"lua_tointegerx"
.LASF223:
	.string	"MS_AAC_ELD_ENC_ID"
.LASF82:
	.string	"reserved2"
.LASF8:
	.string	"__uint8_t"
.LASF266:
	.string	"MSUBoxPlot"
.LASF208:
	.string	"MS_AAL2_G726_16_ENC_ID"
.LASF36:
	.string	"__data"
.LASF280:
	.string	"name"
.LASF351:
	.string	"msgdsize"
.LASF110:
	.string	"MSQueue"
.LASF143:
	.string	"MS_CONF_ID"
.LASF203:
	.string	"MS_G726_24_ENC_ID"
.LASF137:
	.string	"MS_WINSND_READ_ID"
.LASF287:
	.string	"ninputs"
.LASF31:
	.string	"__nusers"
.LASF342:
	.string	"getq"
.LASF289:
	.string	"init"
.LASF19:
	.string	"tv_sec"
.LASF58:
	.string	"in6_addr"
.LASF391:
	.string	"lua_filter_desc"
.LASF5:
	.string	"long unsigned int"
.LASF338:
	.string	"ControlData"
.LASF345:
	.string	"dupmsg"
.LASF146:
	.string	"MS_PASND_READ_ID"
.LASF123:
	.string	"MS_RTP_RECV_ID"
.LASF168:
	.string	"MS_VOID_SINK_ID"
.LASF297:
	.string	"_MSFactory"
.LASF25:
	.string	"__next"
.LASF72:
	.string	"port"
.LASF39:
	.string	"pthread_mutex_t"
.LASF150:
	.string	"MS_MJPEG_DEC_ID"
.LASF28:
	.string	"__lock"
.LASF334:
	.string	"script_preamble"
.LASF53:
	.string	"in_addr"
.LASF227:
	.string	"MS_QSA_READ_ID"
.LASF243:
	.string	"MS_BV16_ENC_ID"
.LASF268:
	.string	"MSFilterMethodFunc"
.LASF2:
	.string	"unsigned char"
.LASF192:
	.string	"MS_ANDROID_VIDEO_READ_ID"
.LASF296:
	.string	"MSFilterDesc"
.LASF290:
	.string	"preprocess"
.LASF230:
	.string	"MS_MKV_PLAYER_ID"
.LASF354:
	.string	"ortp_free"
.LASF17:
	.string	"__socklen_t"
.LASF278:
	.string	"MSFilterCategory"
.LASF87:
	.string	"ttl_or_hl"
.LASF299:
	.string	"stats_list"
.LASF157:
	.string	"MS_CA_READ_ID"
.LASF50:
	.string	"__ss_padding"
.LASF373:
	.string	"values_on_stack"
.LASF304:
	.string	"video_presets_manager"
.LASF383:
	.string	"control_init"
.LASF270:
	.string	"method"
.LASF14:
	.string	"__suseconds_t"
.LASF179:
	.string	"MS_AUDIO_MIXER_ID"
.LASF219:
	.string	"MS_OSX_GL_DISPLAY_ID"
.LASF336:
	.string	"stopped"
.LASF222:
	.string	"MS_WEBRTC_AEC_ID"
.LASF71:
	.string	"addr"
.LASF358:
	.string	"lua_pcallk"
.LASF13:
	.string	"__time_t"
.LASF125:
	.string	"MS_FILE_REC_ID"
.LASF66:
	.string	"ortp_mutex_t"
.LASF178:
	.string	"MS_CHANNEL_ADAPTER_ID"
.LASF46:
	.string	"uint64_t"
.LASF105:
	.string	"stats"
.LASF205:
	.string	"MS_AAL2_G726_40_ENC_ID"
.LASF188:
	.string	"MS_JPEG_WRITER_ID"
.LASF215:
	.string	"MS_AAL2_G726_24_DEC_ID"
.LASF138:
	.string	"MS_WINSND_WRITE_ID"
.LASF254:
	.string	"MS_VT_H265_DEC_ID"
.LASF384:
	.string	"run_preambula"
.LASF348:
	.string	"lua_type"
.LASF210:
	.string	"MS_G726_32_DEC_ID"
.LASF241:
	.string	"MS_MEDIACODEC_H264_ENC_ID"
.LASF189:
	.string	"MS_QRCODE_READER_ID"
.LASF104:
	.string	"last_tick"
.LASF6:
	.string	"signed char"
.LASF327:
	.string	"lua_Integer"
.LASF61:
	.string	"_bctbx_list"
.LASF3:
	.string	"short unsigned int"
.LASF174:
	.string	"MS_JPEG_ENC_ID"
.LASF74:
	.string	"msgb"
.LASF262:
	.string	"_MSUBoxPlot"
.LASF346:
	.string	"memcpy"
.LASF301:
	.string	"formats"
.LASF340:
	.string	"control_methods"
.LASF149:
	.string	"MS_MPEG4_DEC_ID"
.LASF375:
	.string	"real_size"
.LASF366:
	.string	"lua_gettop"
.LASF283:
	.string	"_MSFilterDesc"
.LASF65:
	.string	"bctbx_list_t"
.LASF200:
	.string	"MS_G722_DEC_ID"
.LASF394:
	.string	"luaopen_luamylib"
.LASF89:
	.string	"_queue"
.LASF201:
	.string	"MS_G726_40_ENC_ID"
.LASF275:
	.string	"MS_FILTER_DECODER"
.LASF239:
	.string	"MS_RTT_4103_SINK_ID"
.LASF298:
	.string	"desc_list"
.LASF195:
	.string	"MY_FILTER_ID"
.LASF388:
	.string	"ms_queue_put"
.LASF52:
	.string	"in_addr_t"
.LASF190:
	.string	"MS_X11VIDEO_ID"
.LASF38:
	.string	"__align"
.LASF160:
	.string	"MS_WINSNDDS_WRITE_ID"
.LASF173:
	.string	"MS_JPEG_DEC_ID"
.LASF248:
	.string	"MS_G729_ENC_ID"
.LASF250:
	.string	"MS_WASAPI_WRITE_ID"
.LASF352:
	.string	"lua_setglobal"
.LASF244:
	.string	"MS_UDP_SEND_ID"
.LASF96:
	.string	"desc"
.LASF341:
	.string	"ortp_strdup"
.LASF199:
	.string	"MS_G722_ENC_ID"
.LASF42:
	.string	"socklen_t"
.LASF323:
	.string	"_MSSndCardManager"
.LASF37:
	.string	"__size"
.LASF111:
	.string	"MS_FILTER_NOT_SET_ID"
.LASF163:
	.string	"MS_H263_OLD_DEC_ID"
.LASF263:
	.string	"mean"
.LASF114:
	.string	"MS_ALSA_READ_ID"
.LASF225:
	.string	"MS_OPUS_ENC_ID"
.LASF337:
	.string	"preabmle_was_run"
.LASF27:
	.string	"__pthread_mutex_s"
.LASF75:
	.string	"b_prev"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/primauser/plastov/Mediastreamer2_LuaFilter/src"
.LASF0:
	.string	"lua_filter.c"
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
