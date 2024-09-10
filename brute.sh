#!/usr/bin/env lua
require("hydra.hydra")
require("medusa.medusa")
require("ncrack.ncrack")
local ansicolors = require("ansicolors")



-- Creating a banner


function banner()
    os.execute("tput setaf 1; figlet -f slant Brute-4c3r; tput sgr0")
    print(ansicolors("%{yellow}[[- Brute-forcer v-1.0 -]]%{reset}"))
    print(ansicolors("%{yellow}[[* github.com/Britania-maker -]]%{reset}"))
    print(ansicolors("%{yellow}[[* github.com/Salvatore-droid -]]%{reset}"))
    print(ansicolors("%{yellow}[[- Created by Brightone and Genius -]]\n%{reset}"))

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
    print(ansicolors[[%{blue}[1] Hydra to brute http.
[2] Hydra to brute ssh.
[3] Hydra to brute ftp.
    %{reset}]])
    io.write(ansicolors("%{cyan}Enter value option for Hydra brute usage: %{reset}"))
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
    elseif hydra_usage == "quit" then
        os.exit(0)
    else
        print(ansicolors("%{red}Invalid value option..!!%{reset}"))
        os.exit(0)
    end
end


-- medusa brute force tools list


function medusa_list()
    print("\n")
    print(ansicolors[[%{blue}[1] Medusa to brute http.
[2] Medusa to brute ssh.
[3] Medusa to brute ftp.
    %{reset}]])
    io.write(ansicolors("%{cyan}Enter value option for medusa brute usage: %{reset}"))
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
    elseif medusa_usage == "quit" then
        os.exit(0)
    else
        print(ansicolors("%{red}Invalid value option..!!%{reset}"))
        os.exit(0)
    end
end



-- ncrack brute force tools list


function ncrack_list()
    print("\n")
    print(ansicolors[[%{blue}[1] Ncrack to brute http.
[2] Ncrack to brute ssh.
[3] Ncrack to brute ftp.
    %{reset}]])
    io.write(ansicolors("%{cyan}Enter value option for ncrack brute usage: %{reset}"))
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
    elseif ncrack_usage == "quit" then
        os.exit(0)
    else
        print(ansicolors("%{red}Invalid value option..!!%{reset}"))
        os.exit(0)
    end
end



-- brute forcing tools list


function tools()
    print(ansicolors("%{blue}Enter quit as input at anyplace to terminate the program.%{reset}"))
    print("\n")
    print(ansicolors("%{yellow}Select the Brute-forcing tool to use:%{reset}"))
    print(ansicolors[[%{blue}
[1] Hydra
[2] Medusa
[3] Ncrack
%{reset}]])
    io.write(ansicolors("%{cyan}Enter value for tool selection: %{reset}"))
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
    elseif tool == "quit" then
        os.exit(0)
    else
        print(ansicolors("%{red}Tool value ["..tool.."] is not available..!!%{reset}"))
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
