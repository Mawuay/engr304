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




.text
.org RESET_VECTOR /* Place the main routine at the reset address */
.global _start
_start: /* Program start location must be identified */


/*************************** MAIN ***************************************/
/* the main program startup code goes here */
MAIN_PROG_INIT:
	mov r9, r0					/*the counter i*/
	mov r11, r0					/*the counter j*/
	movia r10, 0x40000			/*the limit for the counter i*/
	movia gp, 0x8040
	movia r12, 0x777777			/*the limit for the counter j (delaymax)*/
  
/* initialize PIO devices if needed */

/* initialize the timer with the proper timeout period */

/* main program code goes here */

DELAY:							/*the loop that calls the SET function if the j = delaymax count */
	beq r12, r11, SET		
	addi r11, r11, 1		
	br DELAY
	
	
SET:
	mov r11, r0
	beq r9, r10, MAIN_PROG_INIT			
	stwio r9, 0(gp)
	addi r9, r9, 1
	br DELAY



PROGEND:
/* end of program code goes here - infinite loop to keep out of global memory*/
  br PROGEND  /* useful for final breakpoint */

.data
/* if any global variables are needed, place them here */
.end


