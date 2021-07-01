
extern	___error

section .text
	global _ft_write

_ft_write:
		mov		rax, 0x02000004
		syscall
		jb	_quit
		ret
_quit:
		push	rax
		call	___error
		pop		r10
		mov		[rax], r10
		mov		rax, -1
		ret
