.include "nios_iodefs.s" /* include i/o constants */
.text
.global displayProgressComplete
displayProgressComplete:

funcInit:
	/* push to stack */
	subi sp, sp, 8
	stw r17, 4(sp)
	stw r16, 0(sp)

funcExec:
	movia r16, SEVENSEG30_BASE
	movia r17, 0xFFFFFFFF
	stwio r17, DATA_OFFSET(r16)
	movia r16, SEVENSEG74_BASE
	stwio r17, DATA_OFFSET(r16)

funcEnd:
/* pop from stack */
	ldw r17, 4(sp)
	ldw r16, 0(sp)
	addi sp, sp, 8

	ret
	
.end