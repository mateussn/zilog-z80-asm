; This program verifies the biggest number and save on address 0x7000
; By Mateus Novaes 
; Creation: 16.08.2020 
; Last modification: 02.06.2021

; Start of code

value1 equ &19 ; Value 1 is equal to 0x19
value2 equ &ff ; Value 2 is equal to 0xff
value3 equ &fe ; Value 3 is equal to 0xfe

org &8000		; Static start location in memory
	ld b, value1	; Loads value1 to 'b' register
	ld c, value2	; Loads value2 'c' register
	ld d, value3	; Loads value3 'd' register

	ld a, b		; Loads 'b' register to 'a' register
	cp c		; Compares 'a' register to 'c' register
	jp nc, next1	; Jumps to next1 label if not-carry(>=)
	ld a, c		; Loads 'c' register to 'a' register
	next1:		; Label or identification of an adress
	cp d		; Compares 'a' register to 'd' register
	jp nc, next2	; Jumps to next2 label if not-carry(>=)
	ld a, d		; Loads 'd' register to 'a' register
	next2:		; Another label
	ld (&7000), a	; Loads acumulator to a specified adress 
	ret		; Returns to main routine
