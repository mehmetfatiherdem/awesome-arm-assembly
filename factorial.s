		INCLUDE core_cm4_constants.s		; Load Constant Definitions
		INCLUDE stm32l476xx_constants.s
		
		AREA factorial, CODE, READONLY
		EXPORT __main
		ENTRY
		
__main	PROC
		
		LDR r1, =val
		LDR r2, [r1]
		
		MOV r0, #1 ; return value
		MOV r3, #1 ; index

loop	MUL r0, r0, r3
		ADD r3, r3, #1
		
		CMP r3, r2
		BLE loop
		
		ENDP
			
		MOV r5, r0
		
		AREA data, DATA, READWRITE
		
val		DCD	5
		
		END