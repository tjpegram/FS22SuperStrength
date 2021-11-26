SuperStrength = {}; 

function SuperStrength:loadMap(name)
end; 

function SuperStrength:keyEvent(unicode, sym, modifier, isDown)	
	if g_currentMission.controlPlayer then
		
		 if bitAND(modifier, Input.MOD_CTRL) > 0 and bitAND(modifier, Input.MOD_ALT) > 0 and Input.isKeyPressed(Input.KEY_8) then
			if (g_currentMission.missionDynamicInfo.isMultiplayer == true) and (g_currentMission.player.farmId == FarmManager.SPECTATOR_FARM_ID) then
				print("SuperStrength -- Player is not farm manager");
			else
				g_currentMission.player:consoleCommandToggleSuperStrongMode(SuperStrongMode)
				print("SuperStrength -- Toggle");
			end;

		end;

	end;	

end; 

function SuperStrength:update(dt) 	
end; 

function SuperStrength:draw(dt)
end; 

function SuperStrength:mouseEvent(posX, posY, isDown, isUp, button)
end; 

addModEventListener(SuperStrength);