------------------------------------------------------------------------------------------
-- init file
-- Written by Homeopatix
-- 9 january 2024
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
-- Init some vars --
------------------------------------------------------------------------------------------
Write = Turbine.Shell.WriteLine;
NbrSlotsMax = 20;
------------------------------------------------------------------------------------------
-- Plugin's name --
------------------------------------------------------------------------------------------
pluginName = T[ "PluginName" ];
------------------------------------------------------------------------------------------
-- File names --
------------------------------------------------------------------------------------------
settingsFileName = pluginName .. "_Settings";
------------------------------------------------------------------------------------------
-- datascope --
------------------------------------------------------------------------------------------
dataScope = Turbine.DataScope.Character;
------------------------------------------------------------------------------------------
-- Default settings --
------------------------------------------------------------------------------------------
settings = {
    windowPosition = { 
        xPos = 500, 
        yPos = 500 
    },
    optionsWindowPosition = { 
        xPos = 500, 
        yPos = 500 
    },
    IconPosition = { 
        xPosIcon = 500, 
        yPosIcon = 500 
    },
    shortcuts = { 
        Data1 = "", 
        Data2 = "",
        Data3 = "", 
        Data4 = "", 
        Data5 = "",
        Data6 = "", 
        Data7 = "",
        Data8 = "",
        Data9 = "",
        Data10 = "",
        Data11 = "",
        Data12 = "",
        Data13 = "",
        Data14 = "",
        Data15 = "",
        Data16 = "",
        Data17 = "",
        Data18 = "",
        Data19 = "",
        Data20 = "",
        Type1 = "",
        Type2 = "",
        Type3 = "",
        Type4 = "",
        Type5 = "",
        Type6 = "",
        Type7 = "",
        Type8 = "",
        Type9 = "",
        Type10 = "",
        Type11 = "",
        Type12 = "",
        Type13 = "",
        Type14 = "",
        Type15 = "",
        Type16 = "",
        Type17 = "",
        Type18 = "",
        Type19 = "",
        Type20 = ""
    },
    isMinimizeEnabled = { 
        isMinimizeEnabled = true 
    },
    isWindowVisible = { 
        isWindowVisible = true 
    },
    isOptionsWindowVisible = { 
        isOptionsWindowVisible = false 
    },
    escEnable = { 
        escEnable = false 
    },
    altEnable = { 
        altEnable = false 
    },
    useRandomMont = { 
        value = false 
    },
    alwaysShow = {
        value = false
    },
    borderShow = { 
        value = true 
    },
    nbrSlots = { 
        nbr = 4
    },
    isLocked = { 
        value = true
    },
    nbrLine = { 
        nbr = 1 
    }
};
------------------------------------------------------------------------------------------
-- Resources settings --
------------------------------------------------------------------------------------------
ResourcePath = "Homeopatix/PopoHelper/Resources/";

Images = {
	MinimizedIcon = ResourcePath .. "PopoHelper.tga"
};
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
------------------------------------------------------------------------------------------
-- Load settings --
------------------------------------------------------------------------------------------
LoadSettings();