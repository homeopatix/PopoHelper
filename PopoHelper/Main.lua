------------------------------------------------------------------------------------------
-- Import librarys --
------------------------------------------------------------------------------------------
import "Homeopatix.PopoHelper.Librarys"; 


Turbine.Shell.WriteLine("<rgb=#DAA520>PopoHelper</rgb> <rgb=#DDDDDD>".. plugin:GetVersion() .." par Homeo</rgb>")

CreateLocalizationInfo();
LoadSettings();
------------------------------------------------------------------------------------------
-- create the main window
------------------------------------------------------------------------------------------
CreateMainWindow();

------------------------------------------------------------------------------------------
-- mouse click handler
------------------------------------------------------------------------------------------
MouseClickHandler();

------------------------------------------------------------------------------------------
-- setting the shortcuts
------------------------------------------------------------------------------------------
SetTheShortCuts();

------------------------------------------------------------------------------------------
-- setting the shortcuts for drag and drop
------------------------------------------------------------------------------------------
DragAndDrop();

------------------------------------------------------------------------------------------
-- delete the shortcut with mouse wheel
------------------------------------------------------------------------------------------
DeleteShortCuts();
        
------------------------------------------------------------------------------------------
-- Closing window handler
------------------------------------------------------------------------------------------
ClosingWindow();

------------------------------------------------------------------------------------------
-- handle minimizeIcon
------------------------------------------------------------------------------------------
if(settings.isWindowVisible == true)then
	MainMinimizedIcon = MinimizedIcon(Images.MinimizedIcon, 32, 32, PopoHelperWindow:SetVisible(true));
else
	MainMinimizedIcon = MinimizedIcon(Images.MinimizedIcon, 32, 32, PopoHelperWindow:SetVisible(false));
end

MainMinimizedIcon:SetPosition(settings.minimizeX, settings.minimizeY);
MainMinimizedIcon:SetZOrder(0);
MainMinimizedIcon:SetWantsUpdates(true);
MainMinimizedIcon.PositionChanged = function()
	settings.minimizeX = MainMinimizedIcon:GetLeft();
	settings.minimizeY = MainMinimizedIcon:GetTop();
	SaveSettings();
end
------------------------------------------------------------------------------------------
-- checking life
------------------------------------------------------------------------------------------
CheckingLife();

------------------------------------------------------------------------------------------
-- event handling
------------------------------------------------------------------------------------------
PopoHelperWindow.KeyDown=function(sender, args)
	if ( args.Action == Turbine.UI.Lotro.Action.Escape ) then
		PopoHelperWindow:SetVisible(false);
		settings.isWindowVisible = false;
		settings.isLifeUnderPourcent = false;
		settings.isPowerUnderPourcent = false;
		SaveSettings();
	end
	
	-- https://www.lotro.com/forums/showthread.php?493466-How-to-hide-a-window-on-F12&p=6581962#post6581962
	if ( args.Action == 268435635 ) then
		hudVisible=not hudVisible;
		if hudVisible then
			PopoHelperWindow:SetVisible(false);
			MainMinimizedIcon:SetVisible(false);
		else
			if(settings.isWindowVisible == true)then
				PopoHelperWindow:SetVisible(true);
				settings.isWindowVisible = true;
			else
				PopoHelperWindow:SetVisible(false);
			end
			MainMinimizedIcon:SetVisible(true);
		end
	end
end
------------------------------------------------------------------------------------------
-- if the position changes, save the new window location
------------------------------------------------------------------------------------------
	PopoHelperWindow.PositionChanged = function( sender, args )
    	local x,y = PopoHelperWindow:GetPosition();
    	settings.positionX = x;
    	settings.positionY = y;
		SaveSettings();
	end