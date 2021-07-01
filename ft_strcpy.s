
section	.text
		global _ft_strcpy

_ft_strcpy:
		xor	rax, rax

_loop:
		cmp	byte[rsi + rax], 0
		je	_quit
		mov r9b, byte[rsi + rax]
		mov byte[rdi + rax], r9b
		inc rax
		jmp _loop

_quit:
	mov	rax, rdi
	ret