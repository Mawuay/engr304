/***************************************************************************/
/* Name:   Daniel Ackuaku                                                  */
/* Course: Engineering 304L                                                */
/* Lab:    Lab Number  4                                                   */
/* Date:   28th February, 2019.                                            */
/***************************************************************************/
/* The ".include nios_macros.s" assembler directive includes NIOS macros for use in the program */
.include "nios_macros.s"

/* The word-aligned address of the reset vector, value is taken from the 
   cpu configuration in SOPC builder. */
/*TEMPLATE: replace 0x00 with the appropriate address */
.equ RESET_VECTOR, 0x00

/* The ".text" assemlber directive indicates the beginning of the code section of the program */
.text

/* The ".org RESET_VECTOR" assembler directive places the main routine at the reset address */
.org RESET_VECTOR

/* The ".global _start" assembler directive exports the "_start" label as an external symbol */
.global _start

/* The "_start" label identifies the program start location for the debugger */
_start:

/*******************/
/****   MAIN    ****/
/*******************/
/* Pseudo-code for this program is as follows */
/*   Initialize variables (sum), initialize registers, etc
     Begin LOOP
       Read value from array
       If value=0, exit the loop, else
       Add value to sum variable
       Increment loop index (or pointer address)
     return to "Begin LOOP"
*/
/**** init ****/
MAIN_PROG_INIT:
    movia gp, SumArray
	movia sp, 0xffff      		/*ffff/* load the address of the array into the gp register */
    movi r17, 2041
	mov r4, r0					/* clear register 4 for the sum */

/**** run ****/
MAIN_PROG:
	beq r17, r4, MAIN_PROG_END
	call SumCalc
	addi r4, r4, 1	
	stw r2, 0(gp)
	addi gp, gp, 4
	br MAIN_PROG

/**** destroy ****/
MAIN_PROG_END:
    br MAIN_PROG_END            /* infinite loop to keep program from going into the weeds */

/*******************/
/****   DATA    ****/
/*******************/
/* The ".data" directive identifies the section of the program that defines global variables */
.data

/* The "SumArray" label has an address equal to the address of the first element in the 
   array of words immediately following the label, this program uses it as arbitrary 
   zero-terminated example content to sum in the main program.   */
SumArray:
.skip 2041*4

/* The ".end" assembler directive indicates the end of the program and 
   all following lines are discarded */
.end
