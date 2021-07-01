
section .text
		global _ft_strcmp

_ft_strcmp:
		xor	rcx,rcx
		xor	rax, rax

_loop:
		mov	bl, byte[rsi + rcx]
		mov al, byte[rdi + rcx]
		cmp	byte[rdi + rcx], 0
		je _quit
		cmp	byte[rsi + rcx], 0
		je _quit
		cmp	byte[rdi + rcx], bl
		jne _quit
		inc rcx
		jmp	_loop

_quit:
		mov	bl, byte[rsi + rcx]
		mov	al, byte[rdi + rcx]
		sub rax, rbx
		ret
