rednet.open("top")
print("listening")
while true do
    i,msg,b = rednet.receive()
    val = tonumber(msg)
    print(val)
    redstone.setAnalogOutput("back",val)
    print("sent")
    print(val)
end
