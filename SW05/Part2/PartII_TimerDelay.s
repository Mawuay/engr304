/***************************************************************************/
/* Name: Daniel Ackuaku                                                    */
/* Course: ENGR                        Lab #:5                             */
/* Date: 12th March, 2019                                                  */
/***************************************************************************/
.include "nios_macros.s"
.include "nios_defs.s"  /* .equ statements specific to this system */

/* Place all constant definitions here (using ".equ" assembler directive) */
/* The lines shown are just examples for you to look at. */
.equ MS100, 5000000  /* number of clock cycles in 100 msec provided as example */
.equ MS100LOW, 0x4b40  /* 16 least signif bits */
.equ MS100HIGH, 0x4c  /* 16 most signif bits */
.equ TIMER_CONTROL_VALUE, 0b0110
.equ BITMASK_TO, 0x01




.text
.org RESET_VECTOR /* Place the main routine at the reset address */
.global _start
_start: /* Program start location must be identified */


/*************************** MAIN ***************************************/
/* the main program startup code goes here */
MAIN_PROG_INIT:
	movi r13, TIMER_CONTROL_VALUE
	movi r14, 0x017d		/* the least significant bit for the timer*/
	movia r15, 0x7840		/* the most significant bit for the timer*/
	movia r20, LEDR_BASE	/* base location of PIO registers for LED device */
	movia r22, TIMER_BASE	/* base location for timer I/O device */
	movia r10, 0x40000		/* the limit for the counter i*/
	stwio r15, PERIODL(r22)	/* stores the most sig period bits into period H*/
	stwio r14, PERIODH(r22)	/* stores the least sig period bits into period H*/
	stwio r13, CONTROL(r22)	/* stores the stores into period H*/
	stwio r0, STATUS(r22)
	
LED_RESET:
	mov r9, r0				/*the counter i*/
	
  
/* initialize PIO devices if needed */

/* initialize the timer with the proper timeout period */

/* main program code goes here */	
MAIN_TIMER:
	ldwio r19, STATUS(r22)
	andi r19, r19, BITMASK_TO
	beq r19, r0, MAIN_TIMER
	
	stwio r0, STATUS(r22)
	beq r9, r10, LED_RESET
	stwio r9, 0(r20)
	addi r9, r9, 1
	
	br MAIN_TIMER



PROGEND:
/* end of program code goes here - infinite loop to keep out of global memory*/
  br PROGEND  /* useful for final breakpoint */

.data
/* if any global variables are needed, place them here */
.end


