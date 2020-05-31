/* The ".text" assemlber directive indicates the beginning of the code section of the program */
.text

/* The ".global doSomeWork" assembler directive exports the */
/* "doSomeWork" label as an external symbol, so that C-Code can call it */
.global doSomeWork
doSomeWork: /* Starting location of the function */

/*************************doSomeWork*********************************/
doSomeWorkInit:
    subi sp, sp, 8
    stw r17, 4(sp)
    stw r16, 0(sp)

doSomeWorkExec:
    movia r17, 2083333 /* roughly 0.125 seconds on an example system */
    mov r16, r0
workLoop:
    addi r16, r16, 1
    bne r16, r17, workLoop
    
doSomeWorkEnd:
    ldw r17, 4(sp)
    ldw r16, 0(sp)
    addi sp, sp, 8

    /* Note that there should only be one "ret" instruction in your function */
    ret  /* instruction to return to the calling function */

.end  /* the assembler throws away all text after this line */
