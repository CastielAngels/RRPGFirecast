-- Script desenvolvido por CastielAngels E-Mail: castieldeseraphim@gmail.com --
require("fireDrive.lua");
require("gui.lua");
require("system.lua");
require("rrpg.lua");

local maxwidth, maxheight = system.getScreenSize();

rrpg.messaging.listen("ListChatCommands",
    function(message)
		message.response = {{command="/img", description="Abre o painel do Firedrive."}};
    end);

rrpg.messaging.listen("HandleChatCommand",
    function (message)
		if message.command == "img" then
			if System.isMobile() or message.parameter == "debug" then
				carregarFiredrive(message);
			else
				message.chat:escrever("Este plugin é apenas para a versão Mobile do RRPG Firecast.");
			end;
			message.response = {handled = true};
		end;
	end);
		
function carregarFiredrive(message);
	message.chat:escrever("Invocando popupForm");
	invokePopup("firedriveForm");
end;

function invokePopup(formName);
	local maxwidth, maxheight = system.getScreenSize();
	local popupForm = gui.showPopup(formName);
	return popupForm;
end;