/***************************************************************************/
/* Name:   <Daniel Ackuaku>                                                */
/* Course: Engineering 304L                                                */
/* Lab:    <Lab Number 2>                                                  */
/* Date:   < 18th February, 2019.>                                         */
/***************************************************************************/
/*TEMPLATE: fill in the title block above */

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
/*TEMPLATE: replace the comments below with a description of the program */
/* Pseudo-code for this program is as follows */
/*   Initialize variables t1, t2, nextTerm, counter, initialize registers, etc
     Begin LOOP
       Read value from array
       If value=0, exit the loop, else
       Add value to sum variable
       Increment loop index (or pointer address)
     return to "Begin LOOP"
*/
/*TEMPLATE: replace the contents of the MAIN_PROG_INIT label as needed for the program */
/**** init ****/
FIBONACCI_INIT:
    movia gp, MyArray            /* load the address of the array into the gp register */
    mov r10, r0                  /* clear register 10 for the sum */
	addi r11, r0, 1              /* initialize register 11 to 1 */
	mov r12, r0                  /* clear register 12 for the sum */
	mov r13, r0                  /* clear register 13 for the sum */
	mov r14, r0                  /* clear register 14 for the sum */
	addi r14, r0, 40		     /* initialize register 11 to 1 					*/


/**** run ****/
FIBONACCI:
	add r12, r10, r11			/* add term1 and term2 to nextTerm	  */
	stw r10, 0(gp)				/* store t1 into the memory			  */
	add r10, r0, r11  			/* term1 = term2					  */
	add r11, r0, r12			/* term2 = nextTerm					  */
	addi gp, gp, 4 				/* move the pointer 4 bytes			  */
	addi r13,r13, 1				/* increment the counter by one		  */
	bne r13, r14, FIBONACCI		/* while counter !+ r14 (40) continue */
	
/*TEMPLATE: replace the contents of the MAIN_PROG_END label as needed for the program */
/**** destroy ****/
FIBONACCI_END:
    br FIBONACCI_END            /* infinite loop to keep program from going into the weeds */

/*******************/
/****   DATA    ****/
/*******************/
/* The ".data" directive identifies the section of the program that defines global variables */
.data

/*TEMPLATE: replace the contents of the data section as needed for the program */
/* The "MyArray" label has an address equal to the address of the first element in the 
   array of words immediately following the label, this program uses it as arbitrary 
   zero-terminated example content to sum in the main program.  A ".word" array ensures each 
   element has 4 bytes of storage space */
MyArray:
.skip 40*4

/* The ".end" assembler directive indicates the end of the program and 
   all following lines are discarded */
.end
