		INCLUDE core_cm4_constants.s		; Load Constant Definitions
		INCLUDE stm32l476xx_constants.s
		
		AREA findMaxInArray, CODE, READONLY
		EXPORT __main
		ALIGN
		ENTRY

__main	PROC
		
		LDR r1, =size ; load the address of the size
		LDR r1, [r1]  ; load the size value
		LDR r2, =array ; load the starting address of the array
		
		LDR r0, [r2] ; temp max value is the first elm of the array
		
		MOV r3, #1 ; loop index i = 0

loop	
		LDR r5, [r2, r3, LSL #2]
		CMP r5, r0
		MOVGT r0, r5
		
		ADD r3, r3, #1
		CMP r3, r1
		BLT loop
		
		MOV r6, r0
		
		ENDP
		
		
		
		AREA arr, DATA, READWRITE

array 	DCD 1, 3, 2, 5, 9, 7
size 	DCD 6
		
		END