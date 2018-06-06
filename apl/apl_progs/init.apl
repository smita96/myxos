decl
    integer delay(integer counter);
enddecl

integer delay(integer counter){
    integer counter1;
    counter1 = 0;
    while (counter1 < counter) do
        counter1 = counter1 + 1;
    endwhile;

    return 0;
}

integer main(){
    integer status, counter;
    string filename;

    while(1 < 2) do //infinite loop
        status = Fork();
        if (status == -2) then
            print("filename: ");
            read(filename);
            status = Exec(filename); 
        else 
            status = delay(1000); //delay so that parent process doesnt fork until the Exec's loaded code is done 
            //this should actually be wait call, to be implemented later
        endif;        
    endwhile;

    return 0;
}