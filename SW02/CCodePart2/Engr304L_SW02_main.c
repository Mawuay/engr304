/***************************************************************************/
/* Name:   <Daniel Ackuaku>                                                */
/* Course: Engineering 304L                                                */
/* Lab:    <Lab Number 2>                                                  */
/* Date:   <19th February 2019>                                            */
/***************************************************************************/
/* This program calculates the first 40 numbers in the Fibonacci sequence */

int Fib[40];  /* global since declared outside main() */

int main()
{	Fib[0] = 0;
	Fib[1] = 1;
	
	int i;
	for ( i = 2; i < 40; i = i+1)
    {
        Fib[i] = Fib[i-2] + Fib[i-1];
		
    }
    return 0;
}
