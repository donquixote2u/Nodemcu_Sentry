-- temperature sensing via ESP8266 
--manifest: ds, ds118b2, ide, WifiConnect, wificredentials
-- Constants
INTERVAL = 12000      -- interval between data sends usec 
wifiTrys     = 0      -- reset counter of trys to connect to wifi
NUMWIFITRYS  = 20    -- Maximum number of WIFI Testings while waiting for connection
function init_sentry()
DATA={}
dofile("sentry.lua")
init_display()
end
initTimeout=5000       -- // timer in ms
initTimer=tmr.create()  -- // start timer
initTimer:alarm(initTimeout,tmr.ALARM_SINGLE,init_sentry) 
-- require("wificredentials")
-- require("WifiConnect")
require("screen2")