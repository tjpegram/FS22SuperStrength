SuperStrength = {}; 

function SuperStrength:loadMap(name)
end; 


function SuperStrength:mouseEvent(posX, posY, isDown, isUp, button)
end; 

function SuperStrength:keyEvent(unicode, sym, modifier, isDown)	
	if g_currentMission.controlPlayer then
		
		if bitAND(modifier, Input.MOD_ALT) > 0 then
			
			if isDown and sym == Input.KEY_1 then
				print("SuperStrength -- Toggle");
				g_currentMission.player:consoleCommandToggleSuperStrongMode()
			end;

		end;

	end;	

end; 

function SuperStrength:update(dt) 	
end; 

function SuperStrength:draw(dt)
end; 

addModEventListener(SuperStrength);