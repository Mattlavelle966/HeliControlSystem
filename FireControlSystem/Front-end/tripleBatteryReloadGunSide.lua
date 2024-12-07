sequence = {19,18,17,21,22,20}
function reload()
    rednet.send(sequence[1],"n/a")
    print("Un Fastening Breech")
    sleep(2)
    rednet.send(sequence[2],"n/a")
    print("Opening Breech")
    sleep(2) 
    rednet.send(sequence[3],"n/a")
    print("Placing Shell and Powder")
    sleep(5) 
    rednet.send(sequence[4],"n/a")
    print("Orienting Charge")
    sleep(4) 
    rednet.send(sequence[5],"n/a")
    print("Primeing Charge")
    sleep(6) 
    rednet.send(sequence[6],"n/a")
    print("Loading Shell")
    sleep(12) 
    rednet.send(sequence[1],"n/a")
    print("Preparing Breech")
    sleep(2) 
    rednet.send(sequence[2],"n/a")
    print("Closing Breech")
    sleep(2)
    print("Reloading Complete")
end

rednet.close("top")
rednet.open("top")
print("Welcome to the Triple gun control terminal")
print("this terminal only operates the reload cycle")
print("and cannot operate the weapon itself")
while true do 
    print("please enter a command")
    print("Triple Gun Battery: ")
    userinput = read()
    if (userinput == "reload")then
        reload()
           
    elseif (userinput == "help")then
        print("Functions")
        print("reload")
      
    else
        print("That is not a valid command")
    end
end
