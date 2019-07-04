-- Script desenvolvido por CastielAngels E-Mail: castieldeseraphim@gmail.com --
require("rrpg.lua");
require("gui.lua");
require("system.lua"); 

rrpg.messaging.listen("HandleChatCommand",
	function(message)
		if message.comando == "i" then
			--message.chat:enviarMensagem("[§I" .. message.parametro .. "]");
			
			local imgdroidform = gui.showPopup("imgdroidform");
			
			message.response = {handled = true};
		end;
	end);