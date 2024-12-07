rednet.open("top")
PCID = 30
previousVal = 0
while (true) do

    currentVal = redstone.getAnalogInput("front")
    if(currentVal > previousVal or currentVal < previousVal or currentVal == 0)then
        print(currentVal)
        rednet.send(PCID,currentVal)
        
    end
    sleep(.1)
    
end
