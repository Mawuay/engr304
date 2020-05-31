/***************************************************************************/
/* Name: Daniel Ackuaku                                                    */
/* Course: ENGR                        									   */
/* Lab #:6     									                           */
/* Date: 25th March, 2019                                                  */
/***************************************************************************/
/*TEMPLATE fill in the title block above */
.include "nios_macros.s"
.include "nios_iodefs.s"   /* include i/o constants */
.include "nios_irqdefs.s"  /* include interrupt constants */

/*********************************************************************/
/************************ Constant Declarations **********************/
/*********************************************************************/
/*TEMPLATE define any main-code specific .equ constants here */
.equ MS100, 5000000  /* number of clock cycles in 100 msec provided as example */
.equ MS100LOW, 0x4b40  /* 16 least signif bits */
.equ MS100HIGH, 0x4c  /* 16 most signif bits */
.equ TIMER_CONTROL_VALUE, 0b0111
.equ BITMASK_TIMEOUT, 0x01
.equ BITMASK_KEY_PRESS_EDGE, 0b01000
.equ MAX_COUNTER, 0x40000


.text
/*********************************************************************/
/************************ Code Section ********************************/
/*********************************************************************/
.org RESET_VECTOR   /* Place the main routine at the reset address */
.global _start
_start:             /* Program start location must be identified */

br MAIN_PROG_INIT   /* jump over the ISR code */
/* make sure above code fits between the RESET and EXCEPTION addresses!! */

/*********************************************************************/
/******************** ISR=Interrupt Service Routine ******************/
/*********************************************************************/
.org EXCEPTION_VECTOR
ISR:
/* Note that if any register besides r0, et, ea, and sp are used, they must
   first be pushed on the stack before doing the work of the ISR.  At the
   end of the ISR, those same registers must be popped off the stack before
   returning from the interrupt (eret) so that the interruptED code is not
   affected by the work of the ISR. Do the pushing here. */
/*TEMPLATE push registers if needed */
   /*this is where you push r9*/ 
   addi sp, sp, -0x4
   stwio r9, 0(sp)

   
/* NOTE: These three lines of code should NOT be changed! */
  /* Check to see if an external intr has occurred (IPENDING). */
  rdctl et, ctl4 /* ctl4 = IPENDING */
  beq et, r0, EXCEPTION_ACTION 
  subi ea, ea, 4 /* If yes, decrement ea to re-execute interrupted  
                    instruction when you return from the ISR. */

EXCEPTION_ACTION:
/* The interrupt-service/exception-handler routine: After determining
   the source of the interrupt, the interrupt condition must be cleared. */

CHECKFOR_INTR0:
/*TEMPLATE check if intr 0 needs service by checking bit 0 of IPENDING (ctl4). */
	rdctl et, ctl4
	andi et, et, BITMASK_TIMEOUT
	bne et, r0, RESPONDTO_INTR0
	br CHECK_KEY_PRESS
	
	
	
RESPONDTO_INTR0:
/*TEMPLATE The interrupt 0 action goes here, including clearing the interrupt condition. */
	movia  et, TIMER_BASE
	stwio r0, STATUS_OFFSET(et)
	movia et, COUNTER
	ldw r9, 0(et)
	addi r9, r9, 1
	movia et, MAX_COUNTER
	bltu r9, et, DISPLAY
	br LED_RESET
	
LED_RESET:
	mov r9, r0

DISPLAY:
	movia et, LEDR_BASE
	stwio r9, DATA_OFFSET(et)
	movia et, COUNTER
	stw r9, DATA_OFFSET(et)
	




/*TEMPLATE if needed, check interrupt 1 for servicing - bit 1 of IPENDING */
CHECKFOR_INTR1:

RESPONDTO_INTR1:
/*TEMPLATE The interrupt 1 action goes here, including clearing the interrupt condition. */


/*TEMPLATE if needed, check interrupt 2 for servicing - bit 2 of IPENDING */
CHECKFOR_INTR2:

RESPONDTO_INTR2:
/*TEMPLATE The interrupt 2 action goes here, including clearing the interrupt condition. */


END_ISR:
/*TEMPLATE If you pushed any registers on the stack at the beginning, pop them off now. */
   /*this is where you pop r9*/
   	ldwio r9, 0(sp)
	addi sp, sp, 0x4
	eret /* Return from the exception */
/* end of exception handler routine (ISR) */

/*********************************************************************/
/************************** MAIN *************************************/
/*********************************************************************/

MAIN_PROG_INIT:  /* should be the first label after the ISR */
	movia r20, LEDR_BASE	/* base location of PIO registers for LED device */
	movia r22, TIMER_BASE	/* base location for timer I/O device */
	movia r23, KEY_BASE		/* base location for timer KEY device */
	movia r25, SW_BASE		/* base location for timer SW_BASE */
	
	
	
/*TEMPLATE initialize stack pointer if needed */
SP_INIT:

/*TEMPLATE initialize global variables if needed */
GLOBVAR_INIT:

	movia r10, MAX_COUNTER		/* the limit for the counter i*/

	
	
/*TEMPLATE initialize CPU registers for general purposes as needed */
CPUREG_INIT:

/*TEMPLATE init CPU registers for holding I/O port base addresses if needed */
IOBASE_INIT:
	movia r22, TIMER_BASE	/* base location for timer I/O device */
	
	
/*TEMPLATE initialize PIO port registers, if needed */
PIODEVICE_INIT:
	movia r20, LEDR_BASE	/* base location of PIO registers for LED device */

/*TEMPLATE initialize timer port registers (period and control) if needed */
TIMER_INIT:
	movia r13, TIMER_CONTROL_VALUE
	movi r14, 0x017d				/* the least significant bit for the timer*/
	movia r15, 0x7840				/* the most significant bit for the timer*/
	stwio r15, PERIODL_OFFSET(r22)	/* stores the most sig period bits into period H */
	stwio r14, PERIODH_OFFSET(r22)	/* stores the least sig period bits into period H */
	stwio r13, CONTROL_OFFSET(r22)	/* stores the stores into period H */
	stwio r0,  STATUS_OFFSET(r22)

/*****************************************/
/********* Interrupt Setup ***************/
/*****************************************/
/*TEMPLATE Setup all I/O ports for interrupts: 1)clear the intr flag */
/*TEMPLATE in each port and 2) turn interrupts on in each port. */
SET_PORT_INTR:

/*TEMPLATE Now enable each interrupt in the IENABLE register (one is shown). */
SET_IENABLE:
  rdctl et, ctl3          /* Read the interrupt enable register */
  ori et, et, TIMER_MASK  /* set the timer interrupt enable bit high */
  
  /*TEMPLATE use additional ori instructions to turn on other interrupts */
  
  wrctl ctl3, et          /* write the final pattern back to IENABLE (ctl3) */

/* Now enable interrupts globally in the processor status register. */
SET_STATUS:
  rdctl et, ctl0        /* Read the status register */
  ori et, et, PIE_MASK  /* set the PIE bit to enable all interrupts */
  wrctl ctl0, et        /* write the pattern back to STATUS (ctl0) */


/*TEMPLATE main program code goes here */
MAIN_PROG_EXEC:
	br CHECK_KEY_PRESS



/* Checks for a key press*/
CHECK_KEY_PRESS:
	ldwio r21, EDGE_OFFSET(r23)					/* reads the value of EDGE(KEYPRESS) into r23 */
	andi r21, r21, BITMASK_KEY_PRESS_EDGE		/* uses a mask to get the value of Key3  */
	bne r21, r0, UPDATE_TIMER
	br MAIN_PROG_EXEC
	
UPDATE_TIMER:
	stwio r0,  EDGE_OFFSET(r23)					/* resets the value of EDGE(KEYPRESS) */
	ldwio r21, DATA_OFFSET(r25)				    /* EDGE(KEYPRESS) */
	stwio r21, PERIODH_OFFSET(r22)				/* Update the period High*/
	stwio r13, CONTROL_OFFSET(r22)				/* resets the value of timer CONTROL */
	mov r21, r0
	br CHECK_KEY_PRESS
	
	
	
PROG_END:
    br PROG_END  /* useful for final breakpoint */

/***********************************/
/********* Subroutines *************/
/***********************************/
/*TEMPLATE subroutine code goes here if you use any */

/*********************************************************************/
/********************* Global Variable Declarations ******************/
/*********************************************************************/
.data
/*TEMPLATE if needed, add .word or .skip declarations here for global variables */
COUNTER:

.end


