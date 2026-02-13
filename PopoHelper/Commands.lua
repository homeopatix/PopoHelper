
PopoHelperCommand = Turbine.ShellCommand();

------------------------------------------------------------------------------------------
-- commands
------------------------------------------------------------------------------------------
function PopoHelperCommand:Execute( command, arguments )

	local args, value = arguments:match "(mopourcent) (.*)";
	local args2, value2 = arguments:match "(popourcent) (.*)";
	local args3, value3, value4 = arguments:match "(repos) (.*) (.*)";
	
	if ( arguments == "help" ) then
		Turbine.Shell.WriteLine(Strings.PluginHelp);
	elseif ( arguments == "show" ) then
		--Turbine.Shell.WriteLine("Show the PopoHelper Window");
		PopoHelperWindow:SetVisible(true);
		settings.isWindowVisible = true;
		SaveSettings();
	elseif ( arguments == "hide" ) then
		--Turbine.Shell.WriteLine("Hide the PopoHelper Window");
		PopoHelperWindow:SetVisible(false);
		settings.isWindowVisible = false;
		SaveSettings();
	elseif ( arguments == "lock" ) then
		--Turbine.Shell.WriteLine("Hide the PopoHelper Window");
		if(settings.isLocked == false)then
			settings.isLocked = true;
			Turbine.Shell.WriteLine(Strings.PluginName .. " : " .. Strings.PluginLocked);
		else
			settings.isLocked = false;
			Turbine.Shell.WriteLine(Strings.PluginName .. " : " .. Strings.PluginUnlocked);
		end
		SaveSettings();
------------------------------------------------------------------------------------------
-- toggle command--
------------------------------------------------------------------------------------------
	elseif ( arguments == "toggle" ) then
		if(settings.isWindowVisible == true)then
			Turbine.Shell.WriteLine(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. " - " .. Strings.PluginWindowHide);
			PopoHelperWindow:SetVisible(false);
			settings.isWindowVisible = false;
		else
			Turbine.Shell.WriteLine(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. " - " .. Strings.PluginWindowShow);
			PopoHelperWindow:SetVisible(true);
			settings.isWindowVisible = true;
		end
		SaveSettings();
------------------------------------------------------------------------------------------
-- default command--
------------------------------------------------------------------------------------------
	elseif ( arguments == "default" ) then
		Turbine.Shell.WriteLine(Strings.PluginName .. " : " .. Strings.PluginMorale .. " " .. Strings.PluginPourcent .. "20 %" .. Strings.PluginPourcent2);
		Turbine.Shell.WriteLine(Strings.PluginName .. " : " .. Strings.PluginPower .. " " .. Strings.PluginPourcent .. "20 %" .. Strings.PluginPourcent3);
		settings.moralPourcent = 20;
		settings.powerPourcent = 20;
		SaveSettings();
------------------------------------------------------------------------------------------
-- mopourcent command--
------------------------------------------------------------------------------------------
	elseif ( args == "mopourcent" ) then
		if(tonumber(value) >= 90) then
			value = 90;
		end
		Turbine.Shell.WriteLine(Strings.PluginName .. " : " .. Strings.PluginMorale .. " ".. Strings.PluginPourcent .. value .. " %" .. Strings.PluginPourcent2);
		settings.moralPourcent = value;
		SaveSettings();
------------------------------------------------------------------------------------------
-- popopourcent command--
------------------------------------------------------------------------------------------
	elseif ( args2 == "popourcent" ) then
		if(tonumber(value2) >= 90) then
			value2 = 90;
		end
		Turbine.Shell.WriteLine(Strings.PluginName .. " : " .. Strings.PluginPower .. " ".. Strings.PluginPourcent .. value2 .. " %" .. Strings.PluginPourcent3);
		settings.powerPourcent = value2;
		SaveSettings();
------------------------------------------------------------------------------------------
-- reposition command --
------------------------------------------------------------------------------------------
	elseif ( arguments == "repos" ) then
			Write(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. " : " .. Strings.PluginPosition .. " X: " .. settings.minimizeX);
			Write(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. " : " .. Strings.PluginPosition .. " Y: " .. settings.minimizeY);
	elseif ( args3 == "repos" ) then
		Write(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. " : " .. Strings.PluginResize .. " " .. value3 .. "x" .. value4);
		settings.minimizeX = value3;
		settings.minimizeY = value4;
		SaveSettings();
		Write(Strings.PluginUnload .. Strings.PluginName);
		Write(Strings.PluginReload .. Strings.PluginName);
------------------------------------------------------------------------------------------
-- clear command--
------------------------------------------------------------------------------------------
	elseif ( arguments == "clear" ) then
		--Turbine.Shell.WriteLine("clear the PopoHelper Window");
		settings.shortcutData_1 = tostring("");
		settings.shortcutData_2 = tostring(""); 
		settings.shortcutData_3 = tostring(""); 
		settings.shortcutData_4 = tostring(""); 
		centerQS1:SetShortcut(Turbine.UI.Lotro.Shortcut()); 
		centerQS2:SetShortcut(Turbine.UI.Lotro.Shortcut());
		centerQS3:SetShortcut(Turbine.UI.Lotro.Shortcut());
		centerQS4:SetShortcut(Turbine.UI.Lotro.Shortcut());
		SaveSettings();
------------------------------------------------------------------------------------------
-- alt command--
------------------------------------------------------------------------------------------
	elseif ( arguments == "alt" ) then
		if(settings.altEnable == true) then
			Turbine.Shell.WriteLine(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. " - " .. Strings.PluginAltDesable);
			settings.altEnable = false;
		else
			Turbine.Shell.WriteLine(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. " - " .. Strings.PluginAltEnable);
			settings.altEnable = true;
		end
		SaveSettings();
	end
end

Turbine.Shell.AddCommand( "Popo;PopoHelper", PopoHelperCommand );