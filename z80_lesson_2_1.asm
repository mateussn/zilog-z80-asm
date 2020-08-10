screensize equ &4000 		; screensize string is equals to 4000

org &8100	     		; static start location
	ld a, %00001111 	; % means binary
FillAgain:			; label
	ld hl, &C000		; initial range location
	ld de, &C000+1		; final range location
	ld bc, screensize-1	; size of screen decreased
	ld (hl), a		; ff is loaded into 0xC000 adress
	ldir			; LOAD INCREMENT REPEAT 	
	dec a			; decrement a register 
	cp 255			; compare to ff
	jp nz, FillAgain	; if != jump to FillAgain
	jp giveup		; else jump to giveup


giveup: 
	ret			; return  
	