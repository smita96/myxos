decl
	integer isPrime(integer n);
enddecl

integer isPrime(integer n){
	integer flag;
	flag = 1; // ==> n is Prime
	if(n <= 1) then
		flag = 0;
	endif;
	if(n % 2 == 0) then
		flag = 0;
	endif;
	if(n == 2) then
		flag = 1;
	endif;
	integer i;
	i = 3;
	while( i*i <= n) do
		if( n % i == 0 ) then 
			flag = 0;
		endif;
		i = i + 2;
	endwhile;
	return flag;
}

integer main(){
	breakpoint;
	integer n;
	read(n);
	if(isPrime(n) == 1) then
		print("Prime no.");
	else
		print("Not Prime no.");
	endif;
	return 0;
}
