decl 
    integer wait(integer n);
enddecl

integer wait(integer n){
    integer counter;
    counter = 0;
    while (counter < n) do
        counter = counter + 1;
    endwhile;
    return 0;
}

integer main(){
    integer status ;
    status = Fork();
    if (status == 1) then
        status = Wait(1);
        print("parent");
    else
        print("child");
        status = 1/0; //this makes the child process exit 
        print("after div"); //never gets executed 
    endif;
    
    return 0;
}