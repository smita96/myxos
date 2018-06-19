decl 
    integer welcomeMsg();
enddecl

integer welcomeMsg(){
    print("SAN Shell");
    print("____________");
    print("Usage:");
    print("odd.xsm-ENTER");
    print("X-Quit");
    print("____________");
    print("");
    return 0;
}

integer main(){
    integer status, pid;
    string user, filename;
    user = "s4nd33p@xos~$";
    status = welcomeMsg();
    while(1 < 2) do
        print(user);
        read(filename);
        if (filename == "X") then
            Exit();
        endif;
        
        pid = Fork();
        if (pid == -1) then 
            print("Fork_failed");
        else 
            if (pid == -2) then //child process 
                status = Exec(filename);
                if (status == -1) then //if exec failed 
                    print("incorr. name");
                    status = Signal();
                    Exit();
                endif;
            else 
                status = Wait(pid); //wait for child process to finish
            endif;
        endif;
    endwhile;
    return 0;
}