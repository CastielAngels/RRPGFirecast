-- Script desenvolvido por CastielAngels E-Mail: castieldeseraphim@gmail.com --
require("rrpg.lua");

rrpg.messaging.listen("HandleChatCommand",
	function(message)
		if message.comando == "i" then
			message.chat:enviarMensagem("[§I" .. message.parametro .. "]");
			message.response = {handled = true};
		end;
	end);