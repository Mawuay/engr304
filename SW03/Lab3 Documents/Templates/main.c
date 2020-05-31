/* This program calculates the factorial values for
   0 <= n <= 12.  The main function calls the factorial
   function 13 times and stores the returned value in
   a global array. */

int Fact[13];  /* global since declared outside main() */

int main()
{
    int n;
    for (n = 0; n <= 12; n++)
    {
        Fact[n] = factorial(n); /* call factorial and save the result */
    }
    
    return 0;
}
