--                        _   _        _____       _      _     _      
--            /\         | | (_)      / ____|     (_)    (_)   | |     
-- __      __/  \   _ __ | |_ _ _____| (___  _   _ _  ___ _  __| | ___ 
-- \ \ /\ / / /\ \ | '_ \| __| |______\___ \| | | | |/ __| |/ _` |/ _ \
--  \ V  V / ____ \| | | | |_| |      ____) | |_| | | (__| | (_| |  __/
--   \_/\_/_/    \_\_| |_|\__|_|     |_____/ \__,_|_|\___|_|\__,_|\___|
-- wAnti-Suicide, built by WaviestBalloon, made for my server, http://waviestnetworks.waviestballoon.uk but open for all.
-- Built with LOVE

-- >>>>>>>>>  START OF CONFIG  <<<<<<<<<
local SuicideMessage = "Stuck? Good luck getting out..."
local CanSuicide = false
-- >>>>>>>>>   END OF CONFIG   <<<<<<<<<

-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
-- WARNING! DON'T CHANGE ANYTHING BELOW, THIS WILL HELP YOU AND ME FIX ANY ISSUES YOU GET WITH THIS ADDON!
-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

if CanSuicide == true then
	print("[wAnti-Suicide] 'CanSuicide' = true; this means players will be allowed to suicide")
else
	if CanSuicide == false then
		print("[wAnti-Suicide] 'CanSuicide' = false; this means players will not be allowed to suicide")
	else
		print("[wAnti-Suicide] Something isn't right; 'CanSuicide' doesn't equal to true or false")
	end
end

-- If you know what you're doing, feel free to change anything below, please do not go pass the 'hook.Add' part.
-- The reason I told you to not change anything up top is because it's a checker, to check if you've done the config correctly.
-- Anyways, if you do change anything below I will not give you help/support.
local function BlockSuicide(ply)
	if CanSuicide == false then
		ply:ChatPrint(SuicideMessage)
		print("[wAnti-Suicide] Player attempted a kill command; blocked due to 'CanSuicide' = false")
		print("[wAnti-Suicide] SuicideMessage printed")
		return false
	else
		if CanSuicide == true then
			print("[wAnti-Suicide] 'CanSuicide' = true; Suicide is allowed not blocking")
		else
			print("[wAnti-Suicide] Something isn't right; 'CanSuicide' doesn't equal to true or false")
		end
	end
end
print("[wAnti-Suicide] Adding hook")
hook.Add( "CanPlayerSuicide", "BlockSuicide", BlockSuicide )
print("[wAnti-Suicide] Hook added")
print("[wAnti-Suicide] Script loaded")
