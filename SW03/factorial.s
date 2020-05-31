/***************************************************************************/
/* Name:   Daniel Ackuaku                                                  */
/* Course: Engineering 304L                                                */
/* Lab:    Lab Number  3                                                   */
/* Date:   21st February, 2019.                                            */
/***************************************************************************/
/*TEMPLATE: fill in the title block above */

/* The ".text" assemlber directive indicates the beginning of the code section of the program */
.text

/*TEMPLATE: factorial function */
/* The ".global factorial" assembler directive exports the */
/* "factorial" label as an external symbol, so that C-Code can call it */
.global factorial
factorial: /* Starting location of the function */

/*************************FunctionTemplate*********************************/
/* Pseudo-code for this function is as follows 
 *    
 */
/*TEMPLATE: rename the function labels as desired below */
/*TEMPLATE: write the assembly function below */
FACTORIAL_INIT:
    /*TEMPLATE: include any register pushes here */
	addi sp, sp, -0x8
	stw ra, 4(sp)
	stw r16, 0(sp)
    /*TEMPLATE: include any initialization steps */

FACTORIAL_EXEC:
    /*TEMPLATE: include main execution of the function here */
		beq r4, r0, BASE_CASE
		mov r16, r4
		subi r4, r4, 1  
		call factorial
		mul r2, r2, r16
	br FOUND_N
	
	
BASE_CASE:
    /*TEMPLATE: include any register pops here */
movi r2, 1
							/* Note that there should only be one "ret" instruction in your function */
FOUND_N:
	ldw r16, 0(sp)
	ldw ra, 4(sp)
	addi sp, sp, 0x8
    ret  					/* instruction to return to the calling function */
	

.end  /* the assembler throws away all text after this line */

