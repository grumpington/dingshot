local _, L = ...
local dingshotframe = CreateFrame("FRAME", "dingshot", UIParent)

local function dingshotEvent1()
	C_Timer.After(2, function() dingshotEvent2() end)
end

function dingshotEvent2()
	RequestTimePlayed()
	print (L["currentlevel"] .. UnitLevel("player"))
	--this is for verification of xp per level for another addon
	--print ("XP needed for next level: " .. UnitXPMax("player"))
	C_Timer.After(2, function() Screenshot() end)
	return nil
end


dingshotframe:RegisterEvent("PLAYER_LEVEL_UP")
dingshotframe:RegisterEvent("PLAYER_ENTERING_WORLD")
dingshotframe:SetScript("OnEvent", dingshotEvent1)