
extern	___error
extern	_ft_strlen
extern	_malloc
extern	_ft_strcpy

section	.text
	global	_ft_strdup

_ft_strdup:
	push	rdi
	call	_ft_strlen
	inc		rax
	mov		rdi, rax
	call	_malloc
	mov		rdi, rax
	pop		rdi
	mov		rsi, rax
	call	_ft_strcpy
	ret