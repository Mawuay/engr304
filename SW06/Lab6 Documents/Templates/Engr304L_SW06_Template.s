/*********************************************************************/
/* Name:                                                             */
/* Course:                                                           */
/* Lab #:                                                            */
/* Date:                                                             */
/*********************************************************************/
/*TEMPLATE fill in the title block above */
.include "nios_macros.s"
.include "nios_iodefs.s"   /* include i/o constants */
.include "nios_irqdefs.s"  /* include interrupt constants */

/*********************************************************************/
/************************ Constant Declarations **********************/
/*********************************************************************/
/*TEMPLATE define any main-code specific .equ constants here */

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

RESPONDTO_INTR0:
/*TEMPLATE The interrupt 0 action goes here, including clearing the interrupt
   condition. */


/*TEMPLATE if needed, check interrupt 1 for servicing - bit 1 of IPENDING */
CHECKFOR_INTR1:

RESPONDTO_INTR1:
/*TEMPLATE The interrupt 1 action goes here, including clearing the interrupt
   condition. */


/*TEMPLATE if needed, check interrupt 2 for servicing - bit 2 of IPENDING */
CHECKFOR_INTR2:

RESPONDTO_INTR2:
/*TEMPLATE The interrupt 2 action goes here, including clearing the interrupt
   condition. */


END_ISR:
/*TEMPLATE If you pushed any registers on the stack at the beginning, pop them off now. */
   
  eret /* Return from the exception */
/* end of exception handler routine (ISR) */

/*********************************************************************/
/************************** MAIN *************************************/
/*********************************************************************/

MAIN_PROG_INIT:  /* should be the first label after the ISR */

/*TEMPLATE initialize stack pointer if needed */
SP_INIT:

/*TEMPLATE initialize global variables if needed */
GLOBVAR_INIT:

/*TEMPLATE initialize CPU registers for general purposes as needed */
CPUREG_INIT:

/*TEMPLATE init CPU registers for holding I/O port base addresses if needed */
IOBASE_INIT:

/*TEMPLATE initialize PIO port registers, if needed */
PIODEVICE_INIT:

/*TEMPLATE initialize timer port registers (period and control) if needed */
TIMER_INIT:

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

MAIN_PROG_EXEC:
/*TEMPLATE main program code goes here */

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

.end


