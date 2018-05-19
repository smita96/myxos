//program to create a file 

integer main(){
    integer status;
    status = Create("new_file.txt");
    status = Create("new_file_1.txt");    
    if(status == 0) then
        print("File created");
    else
        print("File couldn't ");
        print("be created");
    endif;
    breakpoint;
    return 0;
}