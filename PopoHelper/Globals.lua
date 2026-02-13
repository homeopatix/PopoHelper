ResourcePath = "Homeopatix/PopoHelper/Resources/";

Images = {
	MinimizedIcon = ResourcePath .. "PopoHelper.tga",
};

function CreateLocalizationInfo()
	Strings = {};

	if Turbine.Engine.GetLanguage() == Turbine.Language.German then
		Strings.PluginName = "PopoHelper";
		Strings.PluginText = "Von Homeopatix";
		Strings.PluginMorale = "Moral ";
		Strings.PluginPower = "Kraft ";
		Strings.PluginPosition = "Aktuelle Position des Symbols ";
		Strings.PluginResize = "Neue Position des Symbols ";
		Strings.PluginUnload = "Beende das Plugin mit: /zusatzmodule entfernen ";
		Strings.PluginReload = "Lade das Plugin danach mit: /zusatzmodule laden ";
		Strings.PluginPourcent = "Grenzwert: ";
		Strings.PluginPourcent2 = " des Lebens";
		Strings.PluginPourcent3 = " der Kraft";
		Strings.PluginLocked = "Verkn\195\188pfungen gesperrt";
		Strings.PluginUnlocked = "Verkn\195\188pfungen entsperrt";
		Strings.PluginAltEnable = "Alt-Taste aktiviert";
		Strings.PluginAltDesable = "Alt-Taste deaktiviert";
		Strings.PluginWindowShow = "Fenster wird angezeigt";
		Strings.PluginWindowHide = "Fenster wird ausgeblendet";
		Strings.PluginWrath = "Zorn";
		Strings.PluginHelp = " *** PopoHelper Hilfe ***\n\n/popo show - Zeigt das Fenster an.\n" .. 
		"/popo hide - Blendet das Fenster aus.\n" ..
		"/popo clear - L\195\182scht alle Verkn\195\188pfungen.\n" .. 
		"/popo default - Setzt das prozentuale Limit auf 20%.\n" ..
		"/popo repos - Zeigt die aktuelle Position des Symbols an.\n" ..
		"/popo repos xxx yyy - Positioniert das Symbol an den eingegebenen Koordinaten (x/y).\n" ..
		"/popo alt - Alt-Taste gedr\195\188ckt halten, um das Symbol zu verschieben.\n" ..
		"/popo mopourcent xx - Stellt das prozentuale Limit f\195\188r Moral auf xx% ein.\n" ..
		"/popo popourcent xx - Stellt das prozentuale Limit f\195\188r Kraft auf xx% ein.\n" ..
		"/popo lock - Sperrt bzw. entsperrt die Verkn\195\188pfungen.\n" ..
		"/popo toggle - Fenster anzeigen/ausblenden.\n\n" ..
		"Du kannst deine Tr\195\164nke per Drag & Drop auf die Pl\195\164tze ziehen und mit dem Mausrad l\195\182schen\n.";
elseif Turbine.Engine.GetLanguage() == Turbine.Language.French then
		Strings.PluginName = "PopoHelper";
		Strings.PluginText = "Par Homeopatix";
		Strings.PluginMorale = "Morale ";
		Strings.PluginPower = "Puissance ";
		Strings.PluginPosition = "Position icone actuelle";
		Strings.PluginResize = "Repositionner l'icone pour ";
		Strings.PluginUnload = "D\195\169chargez le plugin avec : /plugins vider ";
		Strings.PluginReload = "Chargez le plugin avec : /plugins charger ";
		Strings.PluginPourcent = "Limite : ";
		Strings.PluginPourcent2 = " de vie";
		Strings.PluginPourcent3 = " de puissance";
		Strings.PluginLocked = "Icones verrouill\195\169es";
		Strings.PluginUnlocked = "Icones d\195\169verouill\195\169es";
		Strings.PluginAltEnable = "Touche Alt activ\195\169";
		Strings.PluginAltDesable = "Touche Alt desactiv\195\169";
		Strings.PluginWindowShow = "Affiche la fen\195\168tre.";
		Strings.PluginWindowHide = "Cache la fen\195\168tre.";
		Strings.PluginWrath = "Colere";
		Strings.PluginHelp = " *** PopoHelper Aide ***\n\n" ..
		"/popo show affiche La fen\195\170tre\n" ..
		"/popo hide cache la fen\195\170tre\n" ..
		"/popo clear Efface tous les raccourcis\n" ..
		"/popo default -- r\195\168gle le pourcentage limite sur 20%\n" ..
		"/popo repos Afficher la position actuelle de l'icone\n" ..
		"/popo repos xxx xxx positionner l'icone sur les coordonn\195\169es xxx et xxx\n" ..
		"/popo alt - Active ou d\195\169sactive la touche alt pour le d\195\169placement de l'icon.\n" ..
		"/popo mopourcent xx -- r\195\168gle le pourcentage limite pour le morale sur xx = votre choix\n" ..
		"/popo popourcent xx -- r\195\168gle le pourcentage limite pour la puissance sur xx = votre choix\n" ..
		"/popo lock pour verrouill\195\169 ou d\195\169verrouill\195\169 les icones\n" ..
		"/popo toggle - Affiche ou cache la fenetre.\n\n" ..
		"Vous pouvez faire glisser et d\195\169poser vos consomable sur la ligne et les effacer avec la mollette de la souris";
elseif Turbine.Engine.GetLanguage() == Turbine.Language.English then
		Strings.PluginName = "PopoHelper";
		Strings.PluginText = "Par Homeopatix";
		Strings.PluginMorale = "Morale ";
		Strings.PluginPower = "Power ";
		Strings.PluginPosition = "Actual icon position";
		Strings.PluginResize = "Repositionning the icon to ";
		Strings.PluginUnload = "Unload the plugin with : /plugins unload ";
		Strings.PluginReload = "Load the plugin with : /plugins load ";
		Strings.PluginPourcent = "Limit : ";
		Strings.PluginPourcent2 = " of life";
		Strings.PluginPourcent3 = " of power";
		Strings.PluginLocked = "Icons Locked";
		Strings.PluginUnlocked = "Icons Unlocked";
		Strings.PluginAltEnable = "Alt key Activated";
		Strings.PluginAltDesable = "Alt key Desactivated";
		Strings.PluginWindowShow = "Show the window.";
		Strings.PluginWindowHide = "Hide the window.";
		Strings.PluginWrath = "Wrath";
		Strings.PluginHelp = " *** PopoHelper Help ***\n\n"..
		"/popo show displays the window\n"..
		"/popo hide hide the window\n"..
		"/popo clear delete all the shortcuts\n"..
		"/popo default -- set the percentage limit to 20%\n"..
		"/popo repos Display the actual position of the icon\n" ..
		"/popo repos xxx xxx position the icon to the xxx and xxx coord\n" ..
		"/popo alt - Activate or deactivate the alt key to move the icon.\n" ..
		"/popo mopourcent xx -- set the morale percentage limit on xx = your choice\n"..
		"/popo popourcent xx -- set the power percentage limit on xx = your choice\n"..
		"/popo lock to lock or unlock the icons\n" ..
		"/popo toggle - Display or hide the window.\n\n" ..
		"You can drag and drop your consumables on the line and delete them with the mouse wheel";
	end
end