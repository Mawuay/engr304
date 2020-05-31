.include "nios_iodefs.s" /* include i/o constants */
.text
.global advanceProgressDisplay
advanceProgressDisplay:
funcInit:
/* push to stack */
subi sp, sp, 12
	stw r18, 8(sp)
	stw r17, 4(sp)
	stw r16, 0(sp)

funcExec:
	movia r16, SEVENSEG30_BASE
	ldwio r18, DATA_OFFSET(r16) /* get current segment */
	nor r17, r18, r18 /* use lit segment for logic */
	slli r17, r17, 1 /* move the lit segment */
	andi r17, r17, 0b00111111 /* mask to check if edge segment */
	beq r17, r0, RESET_SPIN /* if none lit, restart */
	br SET_SPIN

RESET_SPIN:
	movi r17, 1

SET_SPIN:
	nor r18, r17, r17 /* spin unlit segment instead of lit one */
	andi r18, r18, 0b00111111 /* mask to ensure edge segment */
	stwio r18, DATA_OFFSET(r16)

funcEnd:
/* pop from stack */
	ldw r18, 8(sp)
	ldw r17, 4(sp)
	ldw r16, 0(sp)
	addi sp, sp, 12
	
	ret
.end