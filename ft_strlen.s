
section	.text
		global _ft_strlen

_ft_strlen:
		xor rax, rax

_loop:
		cmp	byte[rdi + rax], 0
		je	_quit
		inc	rax
		jmp	_loop
_quit:
	ret