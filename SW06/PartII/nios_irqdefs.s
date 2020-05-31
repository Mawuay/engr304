/* Define your reset and exception vector addresses here. The values */
/* come from your cpu configuration in the Qsys Tool. Should be word */
/* aligned. */
.equ RESET_VECTOR, 0x00
.equ EXCEPTION_VECTOR, 0x20

/* Define mask values for setting interrupt enable bits */
.equ PIE_MASK, 0x01
.equ TIMER_INTR_NUM, 0
.equ TIMER_MASK, (0x01 << TIMER_INTR_NUM)  /* set to mask interrupt #0 */
.equ KEY_INTR_NUM, 1
.equ KEY_MASK, (0x01 << KEY_INTR_NUM) /* set to mask interrupt #1 */

