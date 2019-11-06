section .data
	number db 0, 10

section .text
	global _start

_start:
	call _printRAX
	mov rax, 60
	mov rdi, 0
	syscall

_printRAX:
	add rax, 48
	add [number], al
	mov rax, 1
	mov rdi, 1
	mov rsi, number
	mov rdx, 2
	syscall
	ret
