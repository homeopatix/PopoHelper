------------------------------------------------------------------------------------------
-- Closing window handler
------------------------------------------------------------------------------------------
function ClosingWindow()
	function PopoHelperWindow:Closing(sender, args)
		settings.isWindowVisible = false;
		SaveSettings();
	end
end
------------------------------------------------------------------------------------------
-- setting the shortcuts
------------------------------------------------------------------------------------------
function SetTheShortCuts()
	if(settings.shortcutData_1 ~= "") then
		centerQS1:SetShortcut( Turbine.UI.Lotro.Shortcut( 2, settings.shortcutData_1 ) );
	end

	if(settings.shortcutData_2 ~= "") then
		centerQS2:SetShortcut( Turbine.UI.Lotro.Shortcut( 2, settings.shortcutData_2 ) );
	end

	if(settings.shortcutData_3 ~= "") then
		centerQS3:SetShortcut( Turbine.UI.Lotro.Shortcut( 2, settings.shortcutData_3 ) );
	end

	if(settings.shortcutData_4 ~= "") then
		centerQS4:SetShortcut( Turbine.UI.Lotro.Shortcut( 2, settings.shortcutData_4 ) );
	end
end
------------------------------------------------------------------------------------------
-- setting the shortcuts for drag and drop
------------------------------------------------------------------------------------------
function DragAndDrop()
	centerQS1.DragDrop = function(sender, args)
		local tmp = Turbine.UI.Lotro.Quickslot();
		
		tmp = centerQS1:GetShortcut();
		tmp = tmp:GetData();
	
		local tmp2 = Turbine.UI.Lotro.Quickslot();
		tmp2 = centerQS1:GetShortcut();
		tmp2 = tmp2:GetType();

	
		--Turbine.Shell.WriteLine("Data : " .. tmp); -- display the ID of the schortcut
		--Turbine.Shell.WriteLine("Type : " .. tmp2); -- display the Type of the schortcut

		settings.shortcutData_1 = tmp;

		SaveSettings();
	end
	centerQS2.DragDrop = function(sender, args)
		local tmp = Turbine.UI.Lotro.Quickslot();
		
		tmp = centerQS2:GetShortcut();
		tmp = tmp:GetData();
	
		settings.shortcutData_2 = tmp;

		SaveSettings();
	end
	centerQS3.DragDrop = function(sender, args)
		local tmp = Turbine.UI.Lotro.Quickslot();
		
		tmp = centerQS3:GetShortcut();
		tmp = tmp:GetData();
	
		settings.shortcutData_3 = tmp;

		SaveSettings();
	end
	centerQS4.DragDrop = function(sender, args)
		local tmp = Turbine.UI.Lotro.Quickslot();
		
		tmp = centerQS4:GetShortcut();
		tmp = tmp:GetData();
	
		settings.shortcutData_4 = tmp;

		SaveSettings();
	end
end
------------------------------------------------------------------------------------------
-- mouse click handler
------------------------------------------------------------------------------------------
function MouseClickHandler()
	centerQS1.MouseClick = function(sender, args) 
		PopoHelperWindow:SetVisible(false);
		settings.isWindowVisible = false;
		settings.isLifeUnderPourcent = false;
		settings.isPowerUnderPourcent = false;
		SaveSettings();
	end
	centerQS2.MouseClick = function(sender, args)
		PopoHelperWindow:SetVisible(false);
		settings.isWindowVisible = false;
		settings.isLifeUnderPourcent = false;
		settings.isPowerUnderPourcent = false;
		SaveSettings();
	end
	centerQS3.MouseClick = function(sender, args)
		PopoHelperWindow:SetVisible(false);
		settings.isWindowVisible = false;
		settings.isLifeUnderPourcent = false;
		settings.isPowerUnderPourcent = false;
		SaveSettings();
	end
	centerQS4.MouseClick = function(sender, args)
		PopoHelperWindow:SetVisible(false);
		settings.isWindowVisible = false;
		settings.isLifeUnderPourcent = false;
		settings.isPowerUnderPourcent = false;
		SaveSettings();
	end
end
------------------------------------------------------------------------------------------
-- delete the shortcut with mouse wheel
------------------------------------------------------------------------------------------
function DeleteShortCuts()
		centerQS1.MouseWheel = function(sender, args) 
			if(settings.isLocked == false)then
				settings.shortcutData_1 = tostring(""); 
				centerQS1:SetShortcut(Turbine.UI.Lotro.Shortcut());
				SaveSettings();
			end
		end
		centerQS2.MouseWheel = function(sender, args)
			if(settings.isLocked == false)then
				settings.shortcutData_2 = tostring(""); 
				centerQS2:SetShortcut(Turbine.UI.Lotro.Shortcut());
				SaveSettings();
			end
		end
		centerQS3.MouseWheel = function(sender, args)
			if(settings.isLocked == false)then
				settings.shortcutData_3 = tostring(""); 
				centerQS3:SetShortcut(Turbine.UI.Lotro.Shortcut());
				SaveSettings();
			end
		end
		centerQS4.MouseWheel = function(sender, args)
			if(settings.isLocked == false)then
				settings.shortcutData_4 = tostring(""); 
				centerQS4:SetShortcut(Turbine.UI.Lotro.Shortcut());
				SaveSettings();
			end
		end
end

function CheckingLife()
	MainMinimizedIcon.Update = function(sender, args)
	Player = Turbine.Gameplay.LocalPlayer.GetInstance();

	local life = Player:GetMorale();
	local maxLife = Player:GetMaxMorale();
	local class = Player:GetClass();
	
	local power = Turbine.Gameplay.LocalPlayer:GetInstance():GetPower();
	local maxPower = Turbine.Gameplay.LocalPlayer:GetInstance():GetMaxPower();
	
	local lifePourcent = settings.moralPourcent * maxLife / 100;
	local powerPourcent = settings.powerPourcent * maxPower / 100;
	
	if(class ~= 214) then
		-- show the window if the morale is under XX pourcent
		if(life <= lifePourcent and settings.isLifeUnderMoralPourcent == false) then
			--Turbine.Shell.WriteLine("Life en dessous de " .. pourcent .. " pourcent");
			PopoHelperWindow:SetVisible(true);
			settings.isWindowVisible = true;
			settings.isLifeUnderMoralPourcent = true;
		elseif(life > lifePourcent) then
			settings.isLifeUnderMoralPourcent = false;
		end
	
		-- show the window if the Power is under XX pourcent
		if(power <= powerPourcent and settings.isPowerUnderPowerPourcent == false) then
			--Turbine.Shell.WriteLine("Power en dessous de " .. pourcent .. " pourcent");
			PopoHelperWindow:SetVisible(true);
			settings.isWindowVisible = true;
			settings.isPowerUnderPowerPourcent = true;
		elseif(power > powerPourcent) then
			settings.isPowerUnderPowerPourcent = false;
		end
		
		PopoHelperWindow.Message3:SetText(Strings.PluginPower .. Strings.PluginPourcent .. settings.powerPourcent .. "%");
	else -- this is a beornide
			-- show the window if the morale is under XX pourcent
		if(life <= lifePourcent and settings.isLifeUnderMoralPourcent == false) then
			--Turbine.Shell.WriteLine("Life en dessous de " .. pourcent .. " pourcent");
			PopoHelperWindow:SetVisible(true);
			settings.isWindowVisible = true;
			settings.isLifeUnderMoralPourcent = true;
		elseif(life > lifePourcent) then
			settings.isLifeUnderMoralPourcent = false;
		end
							
		PopoHelperWindow.Message3:SetText(Strings.PluginWrath .. "...");
	end
	
	PopoHelperWindow.Message2:SetText(Strings.PluginMorale .. Strings.PluginPourcent .. settings.moralPourcent .. "%");
	
	-- calcul pourcentage de vie
	local lifeInPourcent = life * 100 / maxLife;
	local powerInPourcent = power * 100 / maxPower;
	
	if(class ~= 214) then
		PopoHelperWindow.Message4:SetText(string.format("%.0f", lifeInPourcent) .. "%");
		PopoHelperWindow.Message5:SetText(string.format("%.0f", powerInPourcent) .. "%");
	else
		PopoHelperWindow.Message4:SetText(string.format("%.0f", lifeInPourcent) .. "%");
		PopoHelperWindow.Message5:SetText(Strings.PluginWrath .. "...");
	end
end
end