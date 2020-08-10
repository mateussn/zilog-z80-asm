; Fibonacci Sequence 
; By Mateus Novaes
; 06.08.2020

org &8000

Main:
	; loading values 0, 1 to inside 0x7000, 0x7001 memory locations 
	ld a, 0
	ld (&7000), a ; 0x7000 = 0; x = 0
	ld a, 1 
	ld (&7001), a ; 0x7001 = 1; y = 1 
	
	; z = x + y
	

	
	  		