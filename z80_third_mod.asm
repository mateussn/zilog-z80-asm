; Simple calculator 
; By Mateus

Init:
	org #8100 	; static memory start
	ld c, 80 	; first number
	ld d, 35	; second number
	
	ld a, c
	ld b, d
Addition:
	add b	  	; do the addition 
	ld (#7000), a 	; save the result in a adress

	call Ress 	; reseting registers

Subtract:
	dec a
	dec b
	jp nz, Subtract
	
	ld (#7001), a
	call Final
Ress:
	ld a, c 	; first number
	ld b, d 	; second number
	ret	 	; return

Final:
	end		; end of program

	
