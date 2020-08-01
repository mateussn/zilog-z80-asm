
screensize #4000 ;  defining 'screensize' label equals to 0x4000

; org is a directive 
; starts the program in this memory adress 
org #8000
	; memory range
	ld hl, #C000
	ld de, #C000+1
 
	ld bc, screensize-1 ; number of bytes that is copied
	ld (hl), #FE
	ldir ; copies a memory range from 'hl' source to 'de' destination 
ret