integer main(){
    integer pid, status;
    pid = Fork();
    if (pid == -2) then
        //this is child 
        print(Getpid());
        status = Exec("fork.xsm");
        status = Signal();
        Exit();
    else 
        if (pid != -1) then
            //this is parent 
            status = Wait(pid);
            Exit();
        endif;
        
    endif;
    return 0;
}