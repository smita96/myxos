decl
	integer fact(integer n);	// Declaration of fact() function
enddecl
integer fact(integer n)			// Definition of recursive function fact()
{
	integer f;			// Local variable of fact()
	if(n==1) then			// Checking base case of recursion
		f=1;				
	else
		f=n*fact(n-1);		// Recursive call to fact(n-1)
	endif;
	return f;			// Value of f is returned to the CALLER function
}

integer main()
{
	integer n,result;		// Local variables of main()
	read(n);			// Input is obtained from the user
	result=fact(n);			// Factorial of 'n' is stored in 'result'
	print(result);			// The value of 'result' is printed
	return 0;			// Return from main()
}	