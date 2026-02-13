------------------------------------------------------------------------------------------
-- create the main window
------------------------------------------------------------------------------------------
function CreateMainWindow()

	PopoHelperWindow=Turbine.UI.Lotro.GoldWindow(); 
	PopoHelperWindow:SetSize(240,115); 
	PopoHelperWindow:SetText(Strings.PluginName); 
	PopoHelperWindow.Message=Turbine.UI.Label(); 
	PopoHelperWindow.Message:SetParent(PopoHelperWindow); 
	PopoHelperWindow.Message:SetSize(220,10); 
	PopoHelperWindow.Message:SetPosition(PopoHelperWindow:GetWidth()/2 - 110, PopoHelperWindow:GetHeight()/2 + 22); 
	PopoHelperWindow.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
	PopoHelperWindow.Message:SetText(""); 

	PopoHelperWindow.Message2=Turbine.UI.Label(); 
	PopoHelperWindow.Message2:SetParent(PopoHelperWindow); 
	PopoHelperWindow.Message2:SetSize(220,10); 
	PopoHelperWindow.Message2:SetPosition(PopoHelperWindow:GetWidth()/2 - 110, PopoHelperWindow:GetHeight()/2 + 28); 
	PopoHelperWindow.Message2:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
	PopoHelperWindow.Message2:SetText(""); 

	PopoHelperWindow.Message3=Turbine.UI.Label(); 
	PopoHelperWindow.Message3:SetParent(PopoHelperWindow); 
	PopoHelperWindow.Message3:SetSize(220,10); 
	PopoHelperWindow.Message3:SetPosition(PopoHelperWindow:GetWidth()/2 - 110, PopoHelperWindow:GetHeight()/2 + 39); 
	PopoHelperWindow.Message3:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
	PopoHelperWindow.Message3:SetText(Strings.PluginText); 

	PopoHelperWindow.Message4=Turbine.UI.Label(); 
	PopoHelperWindow.Message4:SetParent(PopoHelperWindow); 
	PopoHelperWindow.Message4:SetSize(50,10); 
	PopoHelperWindow.Message4:SetPosition(PopoHelperWindow:GetWidth()/2 - 70, PopoHelperWindow:GetHeight()/2 - 25); 
	PopoHelperWindow.Message4:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
	PopoHelperWindow.Message4:SetText(""); 

	PopoHelperWindow.Message5=Turbine.UI.Label(); 
	PopoHelperWindow.Message5:SetParent(PopoHelperWindow); 
	PopoHelperWindow.Message5:SetSize(50,10); 
	PopoHelperWindow.Message5:SetPosition(PopoHelperWindow:GetWidth()/2 + 26, PopoHelperWindow:GetHeight()/2 - 25); 
	PopoHelperWindow.Message5:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
	PopoHelperWindow.Message5:SetText(""); 

	PopoHelperWindow:SetZOrder(0);
	PopoHelperWindow:SetWantsKeyEvents(true);
	
	PopoHelperWindow:SetPosition(settings.positionX, settings.positionY);
	------------------------------------------------------------------------------------------
	-- center window
	------------------------------------------------------------------------------------------
	centerWindow = Turbine.UI.Extensions.SimpleWindow();
	centerWindow:SetSize( 40 , 40 );
	centerWindow:SetParent( PopoHelperWindow );
	centerWindow:SetPosition( 30 ,PopoHelperWindow:GetHeight()/2 - 13);
	centerWindow:SetVisible( true );
	centerWindow:SetBackColor( Turbine.UI.Color( .6, .5, .7, .5) );

	centerWindow2 = Turbine.UI.Extensions.SimpleWindow();
	centerWindow2:SetSize( 40 , 40 );
	centerWindow2:SetParent( PopoHelperWindow );
	centerWindow2:SetPosition( 72 ,PopoHelperWindow:GetHeight()/2 - 13);
	centerWindow2:SetVisible( true );
	centerWindow2:SetBackColor( Turbine.UI.Color( .6, .7, .1, .9) );

	centerWindow3 = Turbine.UI.Extensions.SimpleWindow();
	centerWindow3:SetSize( 40 , 40 );
	centerWindow3:SetParent( PopoHelperWindow );
	centerWindow3:SetPosition( 131,PopoHelperWindow:GetHeight()/2 - 13);
	centerWindow3:SetVisible( true );
	centerWindow3:SetBackColor( Turbine.UI.Color( .6, .1, .4, .9) );

	centerWindow4 = Turbine.UI.Extensions.SimpleWindow();
	centerWindow4:SetSize( 40 , 40 );
	centerWindow4:SetParent( PopoHelperWindow );
	centerWindow4:SetPosition( 173,PopoHelperWindow:GetHeight()/2 - 13);
	centerWindow4:SetVisible( true );
	centerWindow4:SetBackColor( Turbine.UI.Color( .6, .7, .1, .9) );

	centerLabel = Turbine.UI.Label();
	centerLabel:SetParent(centerWindow);
	centerLabel:SetPosition( 0, 0 );
	centerLabel:SetSize( 40, 40  );
	centerLabel:SetText( "" );
	centerLabel:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
	centerLabel:SetZOrder(-1);
	centerLabel:SetMouseVisible(false);

	centerLabel = Turbine.UI.Label();
	centerLabel:SetParent(centerWindow2);
	centerLabel:SetPosition( 0, 0 );
	centerLabel:SetSize( 40, 40  );
	centerLabel:SetText( "" );
	centerLabel:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
	centerLabel:SetZOrder(-1);
	centerLabel:SetMouseVisible(false);

	centerLabel = Turbine.UI.Label();
	centerLabel:SetParent(centerWindow3);
	centerLabel:SetPosition( 0, 0 );
	centerLabel:SetSize( 40, 40  );
	centerLabel:SetText( "" );
	centerLabel:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
	centerLabel:SetZOrder(-1);
	centerLabel:SetMouseVisible(false);

	centerLabel = Turbine.UI.Label();
	centerLabel:SetParent(centerWindow4);
	centerLabel:SetPosition( 0, 0 );
	centerLabel:SetSize( 40, 40  );
	centerLabel:SetText( "" );
	centerLabel:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
	centerLabel:SetZOrder(-1);
	centerLabel:SetMouseVisible(false);

	centerQS1 = Turbine.UI.Lotro.Quickslot();
	centerQS1:SetParent( centerWindow );
	centerQS1:SetPosition( 1, 1 );
	centerQS1:SetSize( 36, 36 );
	centerQS1:SetUseOnRightClick(false);

	centerQS2 = Turbine.UI.Lotro.Quickslot();
	centerQS2:SetParent( centerWindow2 );
	centerQS2:SetPosition( 1, 1 );
	centerQS2:SetSize( 36, 36 );
	centerQS2:SetUseOnRightClick(false);

	centerQS3 = Turbine.UI.Lotro.Quickslot();
	centerQS3:SetParent( centerWindow3 );
	centerQS3:SetPosition( 1, 1 );
	centerQS3:SetSize( 36, 36 );
	centerQS3:SetUseOnRightClick(false);

	centerQS4 = Turbine.UI.Lotro.Quickslot();
	centerQS4:SetParent( centerWindow4 );
	centerQS4:SetPosition( 1, 1 );
	centerQS4:SetSize( 36, 36 );
	centerQS4:SetUseOnRightClick(false);
end