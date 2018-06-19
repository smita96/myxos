decl 
    integer fibonacci(integer n);
enddecl

integer fibonacci(integer n){
    integer returnval;
    if (n <= 2) then
        returnval = 1;
    else 
        returnval =  fibonacci(n-1) + fibonacci(n-2);
    endif;
    return returnval;
    
}
integer main(){
    integer n;
    read(n);
    print(fibonacci(n));
    return 0;
}
