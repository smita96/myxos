//program to print odd numbers
integer main(){
    integer counter;
    counter = 0;
    while(counter < 10) do
        if(counter % 2 != 0) then
            print("Process-2");
        endif;
        counter = counter + 1;
    endwhile;
    return 0;
}