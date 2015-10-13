--init.lua
print("Setting up WIFI...")
wifi.setmode(wifi.STATION)
--modify according your wireless router settings
wifi.sta.config("FrontierHSI","")
wifi.sta.connect()
tmr.alarm(1, 1000, 1, function() 
if wifi.sta.getip()== nil then 
print("IP unavaiable, Waiting...") 
else 
tmr.stop(1)
print("Network config done, IP is "..wifi.sta.getip())
end
end)
