integer main(){
    integer status, filedesc;
    string filename;
    filename = "new_file.txt";
    string wordread;
   
    status = Create(filename);
    if (status == 0) then
        print("created");
        filedesc = Open(filename);
        if (filedesc != -1) then
            print("opened");
            status = Write(filedesc,"XOS");
            if (status == 0) then
                print("written");
                status = Seek(0,0);
                if (status == 0) then
                    print("seek:0");
                    status = Read(filedesc,wordread);
                    if (status == 0) then
                        print("read");
                        print(wordread);
                        status = Close(filedesc);
                        if (status == 0) then
                            print("closed");
                            status = Delete(filename);
                            if (status == 0) then
                                print("deleted");
                            endif;
                        endif;
                    endif;
                endif;
            endif;
        endif;
    endif;
    
    return 0;
}