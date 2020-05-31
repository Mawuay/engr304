/***************************************************************************/
/* Name:   Daniel Ackuaku                                                  */
/* Course: Engineering 304L                                                */
/* Lab:    Lab Number  4                                                   */
/* Date:   28th February, 2019.                                            */
/***************************************************************************/

/* The ".text" assemlber directive indicates the beginning of the code section of the program */
.text


/* The ".global SumCalc" assembler directive exports the */
/* "SumCalc" label as an external symbol, so that C-Code can call it */
.global SumCalc
SumCalc: /* Starting location of the function */

/*************************SumCalc*********************************/
/*TEMPLATE: use comments to outline the function psuedo-code here */
/* Pseudo-code for this function is as follows 
 *    
 */
/*TEMPLATE: rename the function labels as desired below */
/*TEMPLATE: write the assembly function below */
FUNCTION_INIT:
    /*TEMPLATE: include any register pushes here */
	addi sp, sp, -0xc
	stw ra, 4(sp)
	stw r16, 0(sp)
	stw r4, 8(sp)

    /*TEMPLATE: include any initialization steps */

FUNCTION_EXEC:
    /*TEMPLATE: include main execution of the function here */
	beq r4, r0, BASE_CASE
	mov r16, r4
	subi r4, r4, 1
	call SumCalc
	add r2, r2, r16
	br FOUND_N
	
	
	BASE_CASE:
    /*TEMPLATE: include any register pops here */
mov r2, r0
							/* Note that there should only be one "ret" instruction in your function */
FOUND_N:
	ldw r16, 0(sp)
	ldw ra, 4(sp)
	ldw r4, 8(sp)
	addi sp, sp, 0xc
    ret  					/* instruction to return to the calling function */
	

.end  /* the assembler throws away all text after this line */

	


