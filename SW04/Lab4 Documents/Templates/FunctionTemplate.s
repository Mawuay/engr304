/***************************************************************************/
/* Name:   <Author Name>                                                   */
/* Course: Engineering 304L                                                */
/* Lab:    <Lab Number>                                                    */
/* Date:   <Current Date>                                                  */
/***************************************************************************/
/*TEMPLATE: fill in the title block above */

/* The ".text" assemlber directive indicates the beginning of the code section of the program */
.text

/*TEMPLATE: replace FunctionTemplate with the name of the function below */
/* The ".global FunctionTemplate" assembler directive exports the */
/* "FunctionTemplate" label as an external symbol, so that C-Code can call it */
.global FunctionTemplate
FunctionTemplate: /* Starting location of the function */

/*************************FunctionTemplate*********************************/
/*TEMPLATE: use comments to outline the function psuedo-code here */
/* Pseudo-code for this function is as follows 
 *    
 */
/*TEMPLATE: rename the function labels as desired below */
/*TEMPLATE: write the assembly function below */
FUNCTION_INIT:
    /*TEMPLATE: include any register pushes here */
    /*TEMPLATE: include any initialization steps */

FUNCTION_EXEC:
    /*TEMPLATE: include main execution of the function here */

FUNCTION_END:
    /*TEMPLATE: include any register pops here */

    /* Note that there should only be one "ret" instruction in your function */
    ret  /* instruction to return to the calling function */

.end  /* the assembler throws away all text after this line */

