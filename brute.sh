#!/usr/bin/env lua
require("hydra.hydra")
require("medusa.medusa")
require("ncrack.ncrack")



-- Creating a banner


function banner()
    os.execute("figlet -f slant Brute-4c3r")
    print("[[- Brute-forcer v-1.0 -]]")
    print("[[* github.com/Britania-maker -]]")
    print("[[* github.com/Salvatore-droid -]]")
    print("[[- Created by Brightone and Genius -]]\n")

end


function asterisk()
    io.write(string.rep("*", 80))
end


function hash()
    io.write(string.rep("#", 80))
end


function line()
    io.write(string.rep("=", 80))
end


-- hydra brute force tool list


function hydra_list()
    print("\n")
    print([[[1] Hydra to brute http.
[2] Hydra to brute ssh.
[3] Hydra to brute ftp.
    ]])
    io.write("Enter value option for Hydra brute usage: ")
    local hydra_usage = io.read()
    if hydra_usage == "1" then
        line()
        io.write("\n")
        hydra_http()
    elseif hydra_usage =="2" then
        line()
        io.write("\n")
        hydra_ssh()
    elseif hydra_usage == "3" then
        line()
        io.write("\n")
        hydra_ftp()
    else
        print("Invalid value option..!!")
        os.exit(0)
    end
end


-- medusa brute force tools list


function medusa_list()
    print("\n")
    print([[[1] Medusa to brute http.
[2] Medusa to brute ssh.
[3] Medusa to brute ftp.
    ]])
    io.write("Enter value option for medusa brute usage: ")
    local medusa_usage = io.read()
    if medusa_usage == "1" then
        line()
        io.write("\n")
        medusa_http()
    elseif medusa_usage =="2" then
        line()
        io.write("\n")
        medusa_ssh()
    elseif medusa_usage == "3" then
        line()
        io.write("\n")
        medusa_ftp()
    else
        print("Invalid value optio..!!")
        os.exit(0)
    end
end



-- ncrack brute force tools list


function ncrack_list()
    print("\n")
    print([[[1] Ncrack to brute http.
[2] Ncrack to brute ssh.
[3] Ncrack to brute ftp.
    ]])
    io.write("Enter value option for ncrack brute usage: ")
    local ncrack_usage = io.read()
    if ncrack_usage == "1" then
        line()
        io.write("\n")
        ncrack_http()
    elseif ncrack_usage =="2" then
        line()
        io.write("\n")
        ncrack_ssh()
    elseif ncrack_usage == "3" then
        line()
        io.write("\n")
        ncrack_ftp()
    else
        print("Invalid value optio..!!")
        os.exit(0)
    end
end



-- brute forcing tools list


function tools()
    print("Enter quit as input at anyplace to terminate the program.")
    print("\n")
    print("Select the Brute-forcing tool to use:")
    print([[
[1] Hydra
[2] Medusa
[3] Ncrack
]])
    io.write("Enter value for tool selection: ")
    local tool = io.read()
    if tool == "1" then
        asterisk()
        hydra_list()
    elseif tool == "2" then
        asterisk()
        medusa_list()
    elseif tool == "3" then
        asterisk()
        ncrack_list()
    else
        print("Tool value ["..tool.."] is not available..!!")
    end    
end


-- main program functionality


function main()
    hash()
    print("\n")
    banner()
    hash()
    print("\n")
    tools()
end

main()

