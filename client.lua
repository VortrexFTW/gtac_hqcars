-- This is for 1.0.55 ONLY

Engine.EventSystem.GetEventType("OnResourceStart"):AddHandler(function(event,resource)	
	local files = {"landstal", "idaho", "stinger", "linerun", "peren", "sentinel", "patriot", "firetruk", "trash", "stretch", 
	"manana", "infernus", "blista", "pony", "mule", "cheetah", "ambulan", "fbicar", "moonbeam", "esperant", "taxi", "kuruma", 
	"bobcat", "mrwhoop", "bfinject", "corpse", "police", "enforcer", "securicar", "banshee", "predator", "bus", "rhino", "barracks", 
	"train", "chopper", "dodo", "coach", "cabbie", "stallion", "rumpo", "rcbandit", "bellyup", "mrwongs", "mafia", "yardie" , 
	"diablo", "columb", "hoods", "deaddodo", "speeder", "reefer", "panlant", "flatbed", "yankee", "escape", "borgnine", "toyz", "ghost"}
		
	local modelIDs = {90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,
		120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,137,138,139,141,142,143,144,145,146,147,148,149,150}
	
	for i,v in ipairs(files) do
		local txd = Engine.OpenFile(v..".txd", false)
		if txd ~= nil then 
			Engine.GTA.LoadTXDFile(string.upper(txds[i])..".TXD", txd)
			txd:Close()
		end

		if tonumber(modelIDs[i]) ~= -1 then
			local dff = Engine.OpenFile(v..".dff", false)
			if dff ~= nil then 
				Engine.GTA.LoadDFFFile(tonumber(modelIDs[i]), dff)
				dff:Close()
			end
		end
	end
	
end)

--"infernus","regina",
--"infernus","blista"aa