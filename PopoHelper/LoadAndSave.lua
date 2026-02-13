------------------------------------------------------------------------------------------
-- create or load the settings
------------------------------------------------------------------------------------------
function LoadSettings()
	settings = PatchDataLoad(Turbine.DataScope.Character, "PopoHelper_Settings", settings);

	if ( type( settings ) ~= "table" ) then
		settings = { };
	end
	
	if ( not settings.positionX) then		
		settings.positionX = ( Turbine.UI.Display:GetWidth()/2 - 200);		
	end
	
	if ( not settings.positionY) then	
		settings.positionY = ( Turbine.UI.Display.GetHeight()/2 - 200);
	end	
		
	if ( not settings.minimizeX) then	
		settings.minimizeX = 0;
	end

	if ( not settings.minimizeY) then	
		settings.minimizeY = 0;
	end
	
	if ( not settings.shortcutData_1) then	
		settings.shortcutData_1 = tostring("");
	end	
	
	if ( not settings.shortcutType_1) then	
		settings.shortcutType_1 = 2;
	end
	
	if ( not settings.shortcutData_2) then	
		settings.shortcutData_2 = tostring("");
	end	
	
	if ( not settings.shortcutType_2) then	
		settings.shortcutType_2 = 2;
	end

	if ( not settings.shortcutData_3) then	
		settings.shortcutData_3 = tostring("");
	end	
	
	if ( not settings.shortcutType_3) then	
		settings.shortcutType_3 = 2;
	end
	
	if ( not settings.shortcutData_4) then	
		settings.shortcutData_4 = tostring("");
	end	
	
	if ( not settings.shortcutType_4) then	
		settings.shortcutType_4 = 2;
	end
	
	if ( not settings.isMinimizeEnabled) then	
		settings.isMinimizeEnabled = true;
	end

	if ( not settings.isWindowVisible) then	
		settings.isWindowVisible = true;
	end
	
	if ( not settings.isLifeUnderPourcent) then
		settings.isLifeUnderPourcent = false;
	end

	if ( not settings.isPowerUnderMoralPourcent) then	
		settings.isPowerUnderMoralPourcent = false;
	end
	
	if ( not settings.isPowerUnderPowerPourcent) then	
		settings.isPowerUnderPowerPourcent = false;
	end
	
	if ( not settings.moralPourcent) then	
		settings.moralPourcent = 30;
	end
	
	if ( not settings.powerPourcent) then	
		settings.powerPourcent = 30;
	end

	if ( not settings.isLocked) then	
		settings.isLocked = true;
	end

	if ( not settings.altEnable) then	
		settings.altEnable = true;
	end

------------------------------------------------------------------------------------------
-- RGB color codes --
------------------------------------------------------------------------------------------
rgb = {
    start = "<rgb=#DAA520>",
    gold = "<rgb=#FFD700>",
    orange = "<rgb=#EE8F12>",
    white = "<rgb=#FFFFFF>",
    green = "<rgb=#1FE126>",
    blue = "<rgb=#1FCDE1>",
    purple = "<rgb=#9B41CE>",
    yellow = "<rgb=#FFFF00>",
    grey = "<rgb=#C7C7BE>",
    red = "<rgb=#FF0000>",
    error = "<rgb=#FF0000>",
    clear = "</rgb>"
};
end

------------------------------------------------------------------------------------------
-- define some vars
------------------------------------------------------------------------------------------
Write = Turbine.Shell.WriteLine
------------------------------------------------------------------------------------------
-- create the save settings
------------------------------------------------------------------------------------------
function SaveSettings()
	settings.positionX = tostring(settings.positionX);
   	settings.positionY = tostring(settings.positionY);
	settings.minimizeX = tostring(settings.minimizeX);
   	settings.minimizeY = tostring(settings.minimizeY);
	settings.isWindowVisible = settings.isWindowVisible;
	settings.shortcutData_1 = tostring(settings.shortcutData_1);
   	settings.shortcutData_2 = tostring(settings.shortcutData_2);
   	settings.shortcutData_3 = tostring(settings.shortcutData_3);
   	settings.shortcutData_4 = tostring(settings.shortcutData_4);
   	settings.isLifeUnderPourcent = settings.isLifeUnderPourcent;
   	settings.isPowerUnderMoralPourcent = settings.isPowerUnderMoralPourcent;
   	settings.moralPourcent = settings.moralPourcent;
   	settings.isPowerUnderPowerPourcent = settings.isPowerUnderPowerPourcent;
   	settings.powerPourcent = settings.powerPourcent;
	settings.altEnable = settings.altEnable;
	settings.isLocked = settings.isLocked;
   		
   -- save the settings
	PatchDataSave( Turbine.DataScope.Character, "PopoHelper_Settings", settings);
end