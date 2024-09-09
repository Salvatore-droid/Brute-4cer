-- ncarck brute force tool for http 


function ncrack_http()
    print([[[1] Use a list of users
[2] Specify a user
    ]])
    io.write("Enter value: ")
    local value_user = io.read()
    if value_user == "1" then
        io.write("Enter path to users list: ")
        file_user = io.read()
    elseif value_user == "2" then
        io.write("Enter target username: ") 
        username = io.read()
    else 
        print("Invalid choice value..!!")
        os.exit(0)
    end
    print("\n")
    print([[[1] Use a list of paswords
[2] Specify a password
    ]])
    io.write("Enter value: ")
    local value_pass = io.read()
    if value_pass == "1" then 
        io.write("Enter path to passwords lists: ")
        file_pass = io.read()
    elseif value_pass == "2"  then
        io.write("Enter password text to use: ")
        password = io.read()
    else
        print("Invalid choice value..!!")
        os.exit(0)
    end
    io.write("Enter target IP: ")
    local target = io.read()
    io.write("Enter target port (if there is no specific port, enter 80 as default port): ")
    local port = io.read()
    if value_user == "1" and (value_pass == "1") then
        os.execute("ncrack -p http:"..port.." -U "..file_user.." -P "..file_pass.." "..target)
    elseif value_user == "1" and (value_pass == "2") then
        os.execute("ncrack -p http:"..port.." -U "..file_user.." -p "..password.." "..target)
    elseif value_user == "2" and (value_pass == "2") then
        os.execute("ncrack -p http:"..port.." -u "..username.." -p "..password.." "..target)
    elseif value_user == "2" and (value_pass == "2") then
        os.execute("ncrack -p http:"..port.." -u "..username.." -P "..file_pass.." "..target)
    else
        print("Error executing commands based on inputs..!!")
        os.exit(0)
    end
end



-- ncarck brute force tool for ssh 


function ncrack_ssh()
    print([[[1] Use a list of users
[2] Specify a user
    ]])
    io.write("Enter value: ")
    local value_user = io.read()
    if value_user == "1" then
        io.write("Enter path to users list: ")
        file_user = io.read()
    elseif value_user == "2" then
        io.write("Enter target username: ") 
        username = io.read()
    else 
        print("Invalid choice value..!!")
        os.exit(0)
    end
    print("\n")
    print([[[1] Use a list of paswords
[2] Specify a password
    ]])
    io.write("Enter value: ")
    local value_pass = io.read()
    if value_pass == "1" then 
        io.write("Enter path to passwords lists: ")
        file_pass = io.read()
    elseif value_pass == "2"  then
        io.write("Enter password text to use: ")
        password = io.read()
    else
        print("Invalid choice value..!!")
        os.exit(0)
    end
    io.write("Enter target IP: ")
    local target = io.read()
    io.write("Enter target port (if there is no specific port, enter 22 as default port): ")
    local port = io.read()
    if value_user == "1" and (value_pass == "1") then
        os.execute("ncrack -p ssh:"..port.." -U "..file_user.." -P "..file_pass.." "..target)
    elseif value_user == "1" and (value_pass == "2") then
        os.execute("ncrack -p ssh:"..port.." -U "..file_user.." -p "..password.." "..target)
    elseif value_user == "2" and (value_pass == "2") then
        os.execute("ncrack -p ssh:"..port.." -u "..username.." -p "..password.." "..target)
    elseif value_user == "2" and (value_pass == "2") then
        os.execute("ncrack -p ssh:"..port.." -u "..username.." -P "..file_pass.." "..target)
    else
        print("Error executing commands based on inputs..!!")
        os.exit(0)
    end
end


-- ncarck brute force tool for ftp


function ncrack_ftp()
    print([[[1] Use a list of users
[2] Specify a user
    ]])
    io.write("Enter value: ")
    local value_user = io.read()
    if value_user == "1" then
        io.write("Enter path to users list: ")
        file_user = io.read()
    elseif value_user == "2" then
        io.write("Enter target username: ") 
        username = io.read()
    else 
        print("Invalid choice value..!!")
        os.exit(0)
    end
    print("\n")
    print([[[1] Use a list of paswords
[2] Specify a password
    ]])
    io.write("Enter value: ")
    local value_pass = io.read()
    if value_pass == "1" then 
        io.write("Enter path to passwords lists: ")
        file_pass = io.read()
    elseif value_pass == "2"  then
        io.write("Enter password text to use: ")
        password = io.read()
    else
        print("Invalid choice value..!!")
        os.exit(0)
    end
    io.write("Enter target IP: ")
    local target = io.read()
    io.write("Enter target port (if there is no specific port, enter 21 as default port): ")
    local port = io.read()
    if value_user == "1" and (value_pass == "1") then
        os.execute("ncrack -p ftp:"..port.." -U "..file_user.." -P "..file_pass.." "..target)
    elseif value_user == "1" and (value_pass == "2") then
        os.execute("ncrack -p ftp:"..port.." -U "..file_user.." -p "..password.." "..target)
    elseif value_user == "2" and (value_pass == "2") then
        os.execute("ncrack -p ftp:"..port.." -u "..username.." -p "..password.." "..target)
    elseif value_user == "2" and (value_pass == "2") then
        os.execute("ncrack -p ftp:"..port.." -u "..username.." -P "..file_pass.." "..target)
    else
        print("Error executing commands based on inputs..!!")
        os.exit(0)
    end
end


