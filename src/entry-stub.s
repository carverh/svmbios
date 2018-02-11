[BITS 16]

section main
global init
init:
	cli
	cld

	; should always be mapped
	mov esp, 0x7000

	mov al, '!'
	out 0xe9, al

	xchg bx, bx

section reset
	jmp init
	align 16
