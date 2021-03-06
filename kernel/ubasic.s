; https://github.com/adamdunkels/ubasic

%define MAX_VARNUM #40
ub_variables: resb 40
ub_string: resb 40

%define TOKENIZER_ERROR			#0
%define TOKENIZER_ENDOFINPUT	#1
%define TOKENIZER_NUMBER		#2
%define TOKENIZER_STRING		#3
%define TOKENIZER_VARIABLE		#4
%define TOKENIZER_LET			#5
%define TOKENIZER_PRINT			#6
%define TOKENIZER_IF			#7
%define TOKENIZER_THEN			#8
%define TOKENIZER_ELSE			#9
%define TOKENIZER_FOR			#10
%define TOKENIZER_TO			#11
%define TOKENIZER_NEXT			#12
%define TOKENIZER_GOTO			#13
%define TOKENIZER_GOSUB			#14
%define TOKENIZER_RETURN		#15
%define TOKENIZER_CALL			#16
%define TOKENIZER_REM			#17
%define TOKENIZER_PEEK			#18
%define TOKENIZER_POKE			#19
%define TOKENIZER_END			#20
%define TOKENIZER_COMMA			#21
%define TOKENIZER_SEMICOLON		#22
%define TOKENIZER_PLUS			#23
%define TOKENIZER_MINUS			#24
%define TOKENIZER_AND			#25
%define TOKENIZER_OR			#26
%define TOKENIZER_ASTR			#27
%define TOKENIZER_SLASH			#28
%define TOKENIZER_MOD			#29
%define TOKENIZER_HASH			#30
%define TOKENIZER_LEFTPAREN		#31
%define TOKENIZER_RIGHTPAREN	#32
%define TOKENIZER_LT			#33
%define TOKENIZER_GT			#34
%define TOKENIZER_EQ			#35
%define TOKENIZER_CR			#36

; index offsets in chunk (not pointers like original uBASIC code)
ub_line_index_current: resb 2
ub_line_index_chunk: resb 300	; support for 100 lines
ub_for_stack_index: resb 1
ub_for_stack: resb 12 ; MAX_FOR_STACK_DEPTH = 4
ub_gosub_stack_index: resb 1
ub_gosub_stack: resb 10	; MAX_GODUB_STACK_DEPTH = 10
ub_ptr: resb 2

program_ptr: resb 2
ended: resb 1
ubasic_init:
	push r0
	push r1

	st [program_ptr], r1
	st [program_ptr+1], r0

	xor r0, r0
	xor r1, r1
.clear_gosub_stack:
	st [ub_gosub_stack_index], r0
	gt r1, #9
	bzf .done_clear_gosub_stack
	st [ub_gosub_stack]+r1, r0
	add r1, #1
.done_clear_gosub_stack:

	st [ended], r0

	st [ub_line_index_current], r0
	st [ub_line_index_current+1], r0

	st [ub_for_stack_index], r0
	st [ub_for_stack], r0
	st [ub_for_stack+3], r0
	st [ub_for_stack+6], r0
	st [ub_for_stack+9], r0

	push pch
	push pcl
	b ubasic_index_free

	pop r1
	pop r0
	push pch
	push pcl
	b ubasic_tokenizer_init

	pop pcl
	pop pch

token: resb 1
ubasic_accept:
	st [token], r0

	push pch
	push pcl
	b ubasic_tokenizer_token

	ld r1, [token]
	xor r0, r1
	eq r0, #0
	bzf .cont
	; err
	push pch
	push pcl
	b ubasic_fatal


.cont:
	push pch
	push pcl
	b ubasic_tokenizer_next

	pop pcl
	pop pch

r: resb 1
ubasic_varfactor:
	push pch
	push pcl
	b ubasic_tokenizer_variable_num

	push pch
	push pcl
	b ubasic_get_variable
	st [r], r0

	mov r0, TOKENIZER_VARIABLE
	push pch
	push pcl
	b ubasic_accept

	ld r0, [r]
	pop pcl
	pop pch

ubasic_factor:
	push pch
	push pcl
	b ubasic_tokenizer_token

	eq r0, TOKENIZER_NUMBER
	bzf .number
	eq r0, TOKENIZER_LEFTPAREN
	bzf .leftparen
	; default
	push pch
	push pcl
	b ubasic_varfactor
	st [r], r0
	b .end

.number:
	push pch
	push pcl
	b ubasic_tokenizer_num
	st [r], r0

	mov r0, TOKENIZER_NUMBER
	push pch
	push pcl
	b ubasic_accept

	b .end

.leftparen:
	mov r0, TOKENIZER_LEFTPAREN
	push pch
	push pcl
	b ubasic_accept

	push pch
	push pcl
	b ubasic_expr
	st [r], r0

	mov r0, TOKENIZER_RIGHTPAREN
	push pch
	push pcl
	b ubasic_accept

.end:
	ld r0, [r]
	pop pcl
	pop pch

f1: resb 1
f2: resb 1
op: resb 1
ubasic_term:
	push pch
	push pcl
	b ubasic_factor
	st [f1], r0

	push pch
	push pcl
	b ubasic_tokenizer_token
	st [op], r0

.loop:
	ld r0, [op]
	eq r0, TOKENIZER_ASTR
	bzf .next
	eq r0, TOKENIZER_SLASH
	bzf .next
	eq r0, TOKENIZER_MOD
	bzf .next
	b .end

.next:
	push pch
	push pcl
	b ubasic_tokenizer_next

	push pch
	push pcl
	b ubasic_factor
	st [f2], r0

	ld r0, [op]
	eq r0, TOKENIZER_ASTR
	bzf .astr
	eq r0, TOKENIZER_SLASH
	bzf .slash
	eq r0, TOKENIZER_MOD
	bzf .mod
	b .getop

.astr:
	ld r0, [f1]
	ld r1, [f2]
    push pch
    push pcl
    b math_mul
    st [f1], r0
	b .getop

.slash:
	ld r0, [f1]
	ld r1, [f2]
    push pch
    push pcl
    b math_div
    st [f1], r0
	b .getop

.mod:
	ld r0, [f1]
	ld r1, [f2]
    push pch
    push pcl
    b math_div
    st [f1], r1
	b .getop

.getop:
	push pch
	push pcl
	b ubasic_tokenizer_token
	st [op], r0

	b .loop

.end:
	ld r0, [f1]
	pop pcl
	pop pch

t1: resb 1
t2: resb 1
ubasic_expr:
	push pch
	push pcl
	b ubasic_term
	st [t1], r0

	push pch
	push pcl
	b ubasic_tokenizer_token
	st [op], r0

.loop:
	ld r0, [op]
	eq r0, TOKENIZER_PLUS
	bzf .next
	eq r0, TOKENIZER_MINUS
	bzf .next
	eq r0, TOKENIZER_AND
	bzf .next
	eq r0, TOKENIZER_OR
	bzf .next
	b .end

.next:
	push pch
	push pcl
	b ubasic_tokenizer_next

	push pch
	push pcl
	b ubasic_factor
	st [t2], r0

	ld r0, [op]
	eq r0, TOKENIZER_PLUS
	bzf .plus
	eq r0, TOKENIZER_MINUS
	bzf .minus
	eq r0, TOKENIZER_AND
	bzf .and
	eq r0, TOKENIZER_OR
	bzf .or
	b .getop

.plus:
	ld r0, [t1]
	ld r1, [t2]
	add r0, r1
    st [t1], r0
	b .getop

.minus:
	ld r0, [t1]
	ld r1, [t2]
	sub r0, r1
    st [t1], r0
	b .getop

.and:
	ld r0, [t1]
	ld r1, [t2]
	and r0, r1
    st [t1], r0
	b .getop

.or:
	ld r0, [t1]
	ld r1, [t2]
	or r0, r1
    st [t1], r0
	b .getop

.getop:
	push pch
	push pcl
	b ubasic_tokenizer_token
	st [op], r0

	b .loop

.end:
	ld r0, [t1]
	pop pcl
	pop pch

re1: resb 1
re2: resb 1
ubasic_relation:
	push pch
	push pcl
	b ubasic_expr
	st [re1], r0

	push pch
	push pcl
	b ubasic_tokenizer_token
	st [op], r0

.loop:
	ld r0, [op]
	eq r0, TOKENIZER_LT
	bzf .next
	eq r0, TOKENIZER_GT
	bzf .next
	eq r0, TOKENIZER_EQ
	bzf .next
	b .end

.next:
	push pch
	push pcl
	b ubasic_tokenizer_next

	push pch
	push pcl
	b ubasic_factor
	st [re2], r0

	ld r0, [op]
	eq r0, TOKENIZER_LT
	bzf .lt
	eq r0, TOKENIZER_GT
	bzf .gt
	eq r0, TOKENIZER_EQ
	b .getop

.lt:
	ld r0, [re1]
	ld r1, [re2]
	lt r0, r1
	bzf .islt
	mov r0, #0
	b .lt_next
.islt:
	mov r0, #1
.lt_next:
    st [re1], r0
	b .getop

.gt:
	ld r0, [re1]
	ld r1, [re2]
	gt r0, r1
	bzf .isgt
	mov r0, #0
	b .gt_next
.isgt:
	mov r0, #1
.gt_next:
    st [re1], r0
	b .getop

.eq:
	ld r0, [re1]
	ld r1, [re2]
	eq r0, r1
	bzf .iseq
	mov r0, #0
	b .eq_next
.iseq:
	mov r0, #1
.eq_next:
    st [re1], r0
	b .getop

.getop:
	push pch
	push pcl
	b ubasic_tokenizer_token
	st [op], r0

	b .loop

.end:
	ld r0, [re1]
	pop pcl
	pop pch

linenum: resb 1
ubasic_jump_linenum_slow:
	st [linenum], r0

	ld r1, [program_ptr]
	ld r0, [program_ptr+1]
	push pch
	push pcl
	b ubasic_tokenizer_init

.loop0:
	push pch
	push pcl
	b ubasic_tokenizer_num
	ld r1, [linenum]
	eq r0, r1
	bzf .end

.loop1:
.loop2:
	push pch
	push pcl
	b ubasic_tokenizer_next
	push pch
	push pcl
	b ubasic_tokenizer_token
	eq r0, TOKENIZER_CR
	bzf .n0
	push pch
	push pcl
	b ubasic_tokenizer_token
	eq r0, TOKENIZER_ENDOFINPUT
	bzf .n0
	b .loop2
.n0:
	push pch
	push pcl
	b ubasic_tokenizer_token
	eq r0, TOKENIZER_CR
	bzf .n1
	b .n2
.n1:
	push pch
	push pcl
	b ubasic_tokenizer_next
.n2:
	push pch
	push pcl
	b ubasic_tokenizer_token
	eq r0, TOKENIZER_NUMBER
	bzf .loop0
	b .loop1

.end:
	pop pcl
	pop pch

ubasic_jump_linenum:
	st [linenum], r0
	push pch
	push pcl
	b ubasic_index_find
	bzf .pos_null
	push pch
	push pcl
	b ubasic_tokenizer_goto
	b .end
.pos_null:
	ld r0, [linenum]
	push pch
	push pcl
	b ubasic_jump_linenum_slow
.end:
	pop pcl
	pop pch

ubasic_goto_statement:
	mov r0, TOKENIZER_GOTO
	push pch
	push pcl
	b ubasic_accept

	push pch
	push pcl
	b ubasic_tokenizer_num

	push pch
	push pcl
	b ubasic_jump_linenum

	pop pcl
	pop pch

ubasic_print_statement:
	mov r0, TOKENIZER_FOR
	mov r0, TOKENIZER_PRINT
	push pch
	push pcl
	b ubasic_accept

.loop:
	push pch
	push pcl
	b ubasic_tokenizer_token
	eq r0, TOKENIZER_STRING
	bzf .string
	eq r0, TOKENIZER_COMMA
	bzf .comma
	eq r0, TOKENIZER_SEMICOLON
	bzf .semicolon
	eq r0, TOKENIZER_VARIABLE
	bzf .var_or_num
	eq r0, TOKENIZER_NUMBER
	bzf .var_or_num
	b .end

.string:
	push pch
	push pcl
	b ubasic_tokenizer_string
	mov r0, #>[ub_string]
	mov r1, #<[ub_string]
	push pch
	push pcl
	b str_printstr
	push pch
	push pcl
	b ubasic_tokenizer_next
	b .next
.comma:
	mov r0, #32
	mov r1, #0
	st [ub_string], r0
	st [ub_string+1], r1
	mov r0, #>[ub_string]
	mov r1, #<[ub_string]
	push pch
	push pcl
	b str_printstr
	push pch
	push pcl
	b ubasic_tokenizer_next
	b .next
.semicolon:
	push pch
	push pcl
	b ubasic_tokenizer_next
	b .next
.var_or_num:
	push pch
	push pcl
	b ubasic_expr
	push pch
	push pcl
	b str_printuint8
	;b str_printuint16
	b .next

.next:
	push pch
	push pcl
	b ubasic_tokenizer_token
	eq r0, TOKENIZER_CR
	bzf .end
	eq r0, TOKENIZER_ENDOFINPUT
	bzf .end
	b .loop

.end:
	mov r0, #10
	mov r1, #0
	st [ub_string], r0
	st [ub_string+1], r1
	mov r0, #>[ub_string]
	mov r1, #<[ub_string]
	push pch
	push pcl
	b str_printstr
	push pch
	push pcl
	b ubasic_tokenizer_next
	pop pcl
	pop pch

ubasic_if_statement:
	mov r0, TOKENIZER_IF
	push pch
	push pcl
	b ubasic_accept

	push pch
	push pcl
	b ubasic_relation
	st [r], r0

	mov r0, TOKENIZER_THEN
	push pch
	push pcl
	b ubasic_accept

	ld r0, [r]
	eq r0, #0
	bzf .else
	push pch
	push pcl
	b ubasic_statement
	b .end
.else:
.loop:
	push pch
	push pcl
	b ubasic_tokenizer_next
	push pch
	push pcl
	b ubasic_tokenizer_token
	eq r0, TOKENIZER_ELSE
	bzf .n
	eq r0, TOKENIZER_CR
	bzf .n
	eq r0, TOKENIZER_ENDOFINPUT
	bzf .n
	b .loop
.n:
	push pch
	push pcl
	b ubasic_tokenizer_token
	eq r0, TOKENIZER_ELSE
	bzf .tok_else
	eq r0, TOKENIZER_CR
	bzf .tok_next

.tok_else:
	push pch
	push pcl
	b ubasic_tokenizer_next
	push pch
	push pcl
	b ubasic_statement
	b .end

.tok_next:
	push pch
	push pcl
	b ubasic_tokenizer_next

.end:
	pop pcl
	pop pch

ub_var: resb 1
ubasic_let_statement:
	push pch
	push pcl
	b ubasic_tokenizer_variable_num
	st [ub_var], r0

	mov r0, TOKENIZER_VARIABLE
	push pch
	push pcl
	b ubasic_accept

	mov r0, TOKENIZER_EQ
	push pch
	push pcl
	b ubasic_accept

	push pch
	push pcl
	b ubasic_expr
	mov r1, r0
	ld r0, [ub_var]
	push pch
	push pcl
	b ubasic_set_variable

	mov r0, TOKENIZER_CR
	push pch
	push pcl
	b ubasic_accept

	pop pcl
	pop pch

ubasic_gosub_statement:
	mov r0, TOKENIZER_GOSUB
	push pch
	push pcl
	b ubasic_accept

	push pch
	push pcl
	b ubasic_tokenizer_num
	push r0		; linenum

	mov r0, TOKENIZER_NUMBER
	push pch
	push pcl
	b ubasic_accept
	mov r0, TOKENIZER_CR
	push pch
	push pcl
	b ubasic_accept

.if:
	ld r1, [ub_gosub_stack_index]
	gt r1, #9
	bzf .else
	push pch
	push pcl
	b ubasic_tokenizer_num
	st [ub_gosub_stack]+r1, r0
	add r1, #1
	st [ub_gosub_stack_index], r1
	pop r0
	b ubasic_jump_linenum
	b .done
.else:
	push pch
	push pcl
	b ubasic_fatal

.done:
	pop pcl
	pop pch

ubasic_return_statement:
	mov r0, TOKENIZER_RETURN
	push pch
	push pcl
	b ubasic_accept

.if:
	ld r1, [ub_gosub_stack_index]
	eq r1, #0
	bzf .else
	sub r1, #1
	st [ub_gosub_stack_index], r1
	ld r0, [ub_gosub_stack]+r1
	push pch
	push pcl
	b ubasic_jump_linenum
	b .done
.else:
	push pch
	push pcl
	b ubasic_fatal

.done:
	pop pcl
	pop pch

ubasic_next_statement:
	mov r0, TOKENIZER_NEXT
	push pch
	push pcl
	b ubasic_accept

	push pch
	push pcl
	b ubasic_tokenizer_variable_num
	push r0			; var

.if0:
	ld r1, [ub_for_stack_index]
	eq r1, #0
	bzf .else0
	sub r1, #3
	add r1, #1
	ld r0, [ub_for_stack]+r1	; for_variable
	pop r1			; var
	eq r0, r1
	bzf .if0_next
	b .else0
.if0_next:
	mov r0, r1		; var
	push pch
	push pcl
	b ubasic_get_variable
	add r0, #1
	push r1			; var
	mov r1, r0
	pop r0			; var
	push pch
	push pcl
	b ubasic_set_variable
.if1:
	push pch
	push pcl
	b ubasic_get_variable
	push r0			; var
	ld r1, [ub_for_stack_index]
	sub r1, #3
	add r1, #2
	ld r0, [ub_for_stack]+r1	; to
	pop r1			; var
	gt r1, r0
	bzf .else1
.if1_next:
	ld r1, [ub_for_stack_index]
	sub r1, #3
	ld r0, [ub_for_stack]+r1	; line_after_for
	push pch
	push pcl
	b ubasic_jump_linenum
	b .done
.else1:
	ld r1, [ub_for_stack_index]
	sub r1, #3
	st [ub_for_stack_index], r1
	mov r0, TOKENIZER_CR
	push pch
	push pcl
	b ubasic_accept
	b .done

.else0:
	mov r0, TOKENIZER_CR
	push pch
	push pcl
	b ubasic_accept
	push pch
	push pcl
	b ubasic_fatal

.done:
	pop pcl
	pop pch

ubasic_for_statement:
	push pch
	push pcl
	b ubasic_accept

	push pch
	push pcl
	b ubasic_tokenizer_variable_num
	push r0			; for_variable
	mov r0, TOKENIZER_VARIABLE
	push pch
	push pcl
	b ubasic_accept
	mov r0, TOKENIZER_EQ
	push pch
	push pcl
	b ubasic_accept
	push pch
	push pcl
	b ubasic_expr
	mov r1, r0
	pop r0			; for_variable
	push r0			; for_variable
	push pch
	push pcl
	b ubasic_set_variable
	mov r0, TOKENIZER_TO
	push pch
	push pcl
	b ubasic_accept
	push pch
	push pcl
	b ubasic_expr
	push r0			; to
	mov r0, TOKENIZER_CR
	push pch
	push pcl
	b ubasic_accept

	ld r1, [ub_for_stack_index]
	gt r1, #11
	push r1
	bzf .stack_depth_exceeded
	push pch
	push pcl
	b ubasic_tokenizer_num
	pop r1
	st [ub_for_stack]+r1, r0
	pop r0			; to
	add r1, #2
	st [ub_for_stack]+r1, r0
	pop r0			; for_variable
	sub r1, #1
	st [ub_for_stack]+r1, r0

	add r1, #2
	st [ub_for_stack_index], r1
	b .done

.stack_depth_exceeded:
	push pch
	push pcl
	b ubasic_fatal

.done:
	pop pcl
	pop pch

ub_mem_ptr: resb 2
ubasic_peek_statement:
;todo - need 16 bit number support first!
;	st [ub_mem_ptr], r1
;	st [ub_mem_ptr+1], r0
;
;	ldd r0, [ub_mem_ptr]

	pop pcl
	pop pch

ubasic_poke_statement:
;todo - need 16 bit number support first!

	pop pcl
	pop pch

ubasic_end_statement:
	mov r0, TOKENIZER_END
	push pch
	push pcl
	b ubasic_accept
	mov r0, #1
	st [ended], r0

	pop pcl
	pop pch

token: resb 1
ubasic_statement:
	push pch
	push pcl
	b ubasic_tokenizer_token
	st [token], r0

	eq r0, TOKENIZER_PRINT
	bzf .print
	eq r0, TOKENIZER_IF
	bzf .if
	eq r0, TOKENIZER_GOTO
	bzf .goto
	eq r0, TOKENIZER_GOSUB
	bzf .gosub
	eq r0, TOKENIZER_RETURN
	bzf .return
	eq r0, TOKENIZER_FOR
	bzf .for
	eq r0, TOKENIZER_PEEK
	bzf .peek
	eq r0, TOKENIZER_POKE
	bzf .poke
	eq r0, TOKENIZER_NEXT
	bzf .next
	eq r0, TOKENIZER_END
	bzf .end
	eq r0, TOKENIZER_LET
	bzf .let
	eq r0, TOKENIZER_VARIABLE
	bzf .variable

.invalid:
	; err
	push pch
	push pcl
	b ubasic_fatal

.print:
	push pch
	push pcl
	b ubasic_print_statement
	b .done

.if:
	push pch
	push pcl
	b ubasic_if_statement
	b .done

.goto:
	push pch
	push pcl
	b ubasic_goto_statement
	b .done

.gosub:
	push pch
	push pcl
	b ubasic_gosub_statement
	b .done

.return:
	push pch
	push pcl
	b ubasic_return_statement
	b .done

.for:
	push pch
	push pcl
	b ubasic_for_statement
	b .done

.peek:
	push pch
	push pcl
	b ubasic_peek_statement
	b .done

.poke:
	push pch
	push pcl
	b ubasic_poke_statement
	b .done

.next:
	push pch
	push pcl
	b ubasic_next_statement
	b .done

.end:
	push pch
	push pcl
	b ubasic_end_statement
	b .done

.let:
	mov r0, TOKENIZER_LET
	push pch
	push pcl
	b ubasic_accept
	; fall through

.variable:
	push pch
	push pcl
	b ubasic_let_statement

.done:
	pop pcl
	pop pch

ubasic_line_statement:
	push pch
	push pcl
	b ubasic_tokenizer_num
	push pch
	push pcl
	b ubasic_index_add

	mov r0, TOKENIZER_NUMBER
	push pch
	push pcl
	b ubasic_accept

	push pch
	push pcl
	b ubasic_statement

	pop pcl
	pop pch

ubasic_run:
	push pch
	push pcl
	b ubasic_tokenizer_finished
	gt r0, #0
	bzf .done

	push pch
	push pcl
	b ubasic_line_statement

.done:
	pop pcl
	pop pch

ubasic_finished:
	push pch
	push pcl
	b ubasic_tokenizer_finished

	ld r1, [ended]

	or r0, r1

	pop pcl
	pop pch

ubasic_set_variable:
	gt r0, MAX_VARNUM
	bzf .done
	st [ub_variables]+r0, r1

.done:
	pop pcl
	pop pch

ubasic_get_variable:
	gt r0, MAX_VARNUM
	bzf .done
	ld r0, [ub_variables]+r0

.done:
	pop pcl
	pop pch

ubasic_fatal:
	ub_fatal_error db "BASIC: FATAL ERROR!\n"
	mov r0, #>[ub_fatal_error]
	mov r1, #<[ub_fatal_error]
	push pch
	push pcl
	b str_printstr
.done:
	mov r0, #1
	st [ended], r0
	pop pcl
	pop pch

ub_linenum: resb 1
ub_cur_chunk_offset: resb 1
ubasic_index_add:
	st [ub_linenum], r0

	push pch
	push pcl
	b ubasic_index_find
	gt r0, #0
	bzf .done

	ld r0, [ub_linenum]
	ld r1, [ub_line_index_current]
	st [ub_line_index_chunk]+r1, r0

	ld r1, [ub_line_index_current]
	add r1, #2
	ld r0, [ub_ptr+1]
	st [ub_line_index_chunk]+r1, r0
	sub r1, #1
	ld r0, [ub_ptr]
	st [ub_line_index_chunk]+r1, r0

	sub r1, #1
	add r1, #3
	st [ub_line_index_current], r1
.done:
	pop pcl
	pop pch

ub_i: resb 1
ubasic_index_find:
	st [ub_linenum], r0

	xor r1, r1
	push r1

.loop:
	pop r1
	ld r0, [ub_line_index_chunk]+r1
	eq r0, #0
	bzf .nomatch
	push r1
	ld r1, [ub_linenum]
	eq r0, r1
	pop r1
	bzf .match
	add r1, #3
	push r1
	b .loop

.match:
	; offset in r1
	add r1, #2
	ld r0, [ub_line_index_chunk]+r1
	sub r1, #1
	ld r1, [ub_line_index_chunk]+r1
	b .done

.nomatch:
	xor r0, r0
	xor r1, r1

.done:
	pop pcl
	pop pch

ubasic_index_free:
	xor r1, r1
.loop:
	ld r0, [ub_line_index_chunk]+r1
	eq r0, #0
	bzf .done
	xor r0, r0
	st [ub_line_index_chunk]+r1, r0
	add r1, #3
	b .loop
;
.done:
	pop pcl
	pop pch
