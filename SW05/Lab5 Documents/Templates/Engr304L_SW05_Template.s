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
  
/* initialize PIO devices if needed */

/* initialize the timer with the proper timeout period */

/* main program code goes here */
MAIN_PROG:  


PROGEND:
/* end of program code goes here - infinite loop to keep out of global memory*/
  br PROGEND  /* useful for final breakpoint */

.data
/* if any global variables are needed, place them here */
.end


