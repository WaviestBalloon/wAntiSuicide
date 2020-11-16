print("[wAntiSuicide] Loading...")
--                        _   _        _____       _      _     _      
--            /\         | | (_)      / ____|     (_)    (_)   | |     
-- __      __/  \   _ __ | |_ _ _____| (___  _   _ _  ___ _  __| | ___ 
-- \ \ /\ / / /\ \ | '_ \| __| |______\___ \| | | | |/ __| |/ _` |/ _ \
--  \ V  V / ____ \| | | | |_| |      ____) | |_| | | (__| | (_| |  __/
--   \_/\_/_/    \_\_| |_|\__|_|     |_____/ \__,_|_|\___|_|\__,_|\___|
-- wAnti-Suicide, built by WaviestBalloon, made for my server (But you can use it)
-- https://github.com/WaviestBalloon/wAntiSuicide

local debuggingthingy = false -- Used for degugging the thingy

--[[	!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	WARNING! DON'T CHANGE ANYTHING BELOW, UNLESS YOU KNOW WHAT YOU'RE DOING
	!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!		]]

CreateConVar("was_message", "This server does not allow the kill command!", {FCVAR_SERVER_CAN_EXECUTE})
CreateConVar("was_toggle_playsound", false, {FCVAR_SERVER_CAN_EXECUTE})
CreateConVar("was_playsound_loc", "buttons/button2.wav", {FCVAR_SERVER_CAN_EXECUTE})
CreateConVar("was_toggle_antisuicide", 1, {FCVAR_SERVER_CAN_EXECUTE})
local SuicideMessage = GetConVar("was_message")
local PlaySound = GetConVar("was_toggle_playsound")
local Sound = GetConVar("was_playsound_loc")
local CanSuicide = GetConVar("was_toggle_antisuicide")

if CanSuicide == true then
	print("[wAnti-Suicide] 'CanSuicide' = true; this means players will be allowed to suicide")
else
	if CanSuicide == false then
		print("[wAnti-Suicide] 'CanSuicide' = false; this means players will not be allowed to suicide")
	else
		print("[wAnti-Suicide] Something isn't right; 'CanSuicide' doesn't equal to true or false")
	end
end

local function BlockSuicide(ply)
	if CanSuicide == 1 then
		print("[wAnti-Suicide] Player attempted a kill command; blocked due to 'CanSuicide' = false")
		ply:ChatPrint(SuicideMessage)
		print("[wAnti-Suicide] Suicide Message printed")
		if PlaySound == true then
			ply:surface.PlaySound(Sound)
		end
		return false
	else
		if CanSuicide == 1 then
			print("[wAnti-Suicide] 'CanSuicide' = true; Suicide is allowed, not blocking")
		else
			print("[wAnti-Suicide] Error! Something isn't right; 'CanSuicide' doesn't equal to true or false")
		end
	end
end

print("[wAnti-Suicide] Adding hook")
hook.Add("CanPlayerSuicide", "BlockSuicide", BlockSuicide)
print("[wAnti-Suicide] Hook added")
if debuggingthingy == true then
	print("wAnti-Suicide Config")
	print("Suicide message = ".. SuicideMessage)
	print("Play error sound = ".. PlaySound)
	print("Sound location = ".. Sound)
	print("Can suicide = ".. CanSuicide)
	print("End!")
end
print("[wAnti-Suicide] Script loaded")
