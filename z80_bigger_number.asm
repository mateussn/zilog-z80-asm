; This program verifies the bigger number and save on adress 0x7000
; By Mateus Novaes

org &8000 ; static start location 
	;ld e, &0

	ld b, &19
	ld c, &ff
	ld d, &fe

	ld a, b
	cp c
	jp nc, next1
	ld a, c
	next1:
	cp d
	jp nc, next2
	ld a, d
	next2:
	ld (&7000), a
	nop		; do nothing
ret
		
 