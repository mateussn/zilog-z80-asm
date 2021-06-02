; This program verifies the biggest number and save on address 0x7000
; By Mateus Novaes

org &8000		; Static start location 
	ld b, &19	; Loads 0x19 to b register
	ld c, &ff	; Loads 0xff to c register
	ld d, &fe	; Loads 0xf3 to d register

	ld a, b		; Loads b register to a register
	cp c		; Compares a register to c register
	jp nc, next1	; Jumps to next1 label if not-carry(>=)
	ld a, c		; Loads c register to a register
	next1:		; Label or identification of an adress
	cp d		; Compares a register to d register
	jp nc, next2	; Jumps to next2 label if not-carry(>=)
	ld a, d		; Loads d register to a register
	next2:		; Another label
	ld (&7000), a	; Loads acumulator to a specified adress 
	ret		; Returns to main routine
		
 
