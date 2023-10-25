; this is a comment. nothing special.
		INCLUDE core_cm4_constants.s		; Load Constant Definitions
		INCLUDE stm32l476xx_constants.s      
		
		AREA andTwoInts, CODE, READONLY
		EXPORT __main
		ENTRY

__main	PROC
		
		LDR r0, =0xA0000001
		LDR r1, =0x80000009
		AND r2, r0, r1
		
		ENDP
		END
