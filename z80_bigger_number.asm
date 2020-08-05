; This program verifies the bigger number
; By Mateus Novaes

org &8000 ; static start location 
	ld e, &0

	ld b, &A
	ld c, &B
	ld d, &C

	ld a, &A
	
	CountDown:
		
		inc e
		dec a
		
		
	
	
	ret ; return 
 