
function holdSignal()
    redstone.setOutput("back", true)
    print("signaling")
end
function terminateHoldSig()
    redstone.setOutput("back",false)
    print("Stoping Signal")
end
function reversePressSig(delay)
    terminateHoldSig()
    sleep(delay)
    holdSignal()
end
function pressSignal(delay)
    redstone.setOutput("back",true)
    print("pressing")
    sleep(delay)
    redstone.setOutput("back",false)
    print("releasing")
end
computers = {19,18,17,21,22,20}
HostPC = 23
ThisPc = os.computerID()
rednet.close("top")
rednet.open("top")
holdSignal()
continue = true
while continue do
    print("listening<<<<<")
    i,MSG,f = rednet.receive()
    if (ThisPc == computers[1])then
        if(redstone.getOutput("back"))then
            terminateHoldSig()
            rednet.send(HostPc,"Ready")
        else
            holdSignal()
            print("loosening Chamber")
        end
    end
    if (ThisPc == computers[2])then
        if(redstone.getOutput("back") == false)then
            holdSignal()
        else
        
            --terminate is called first so the chamber
            --remains closed
           terminateHoldSig()
           print("openingCamber")
        end
        
    end
    if(ThisPc == computers[3])then
        reversePressSig(5)
    end
    if(ThisPc == computers[4])then
        reversePressSig(4)
    end
    if(ThisPc == computers[5])then
        pressSignal(6)
    end
    if(ThisPc == computers[6])then 
        pressSignal(10)
    end
end

