-- Plugin desenvolvido por CastielAngels --
local Firecast = require("rrpg.lua")
local Utils = require("rrpgUtil.lua")

local iaavatar = "http://blob.firecast.com.br/blobs/DUNIFSND_1162533/rubyavatar50.png"
local ianame = "Ruby"
local ianamecolor = "[§K13]"
local iachatcolor = "[§K06]"

local prefix = '[§I ' .. iaavatar .. ']' .. ianamecolor .. '[§T][§B]' .. ianame .. ': ' .. iachatcolor

Firecast.Messaging.listen("MesaJoined", function (message) if message.mesa.isModerada == false and message.mesa.meuJogador.isMestre then MsgWelcome(message) end end)

function MsgWelcome(msg)
	setTimeout( function ()
		if msg.jogador.isJogador then
			local rand = math.random(1, 2)
			if rand == 1 then
				msg.mesa.chat:enviarNarracao(prefix .. "-- Oi " .. msg.jogador.login .. "...")
			elseif rand == 2 then
				msg.mesa.chat:enviarNarracao(prefix .. "-- Bem vindo(a) de volta " .. msg.jogador.login .. "...")
			end
		else
			local rand = math.random(1, 5)
			if rand == 1 then
				msg.mesa.chat:enviarNarracao(prefix .. "-- Olá " .. msg.jogador.login .. "! *Sorriso forçado*")
			elseif rand == 2 then
				msg.mesa.chat:enviarNarracao(prefix .. "-- Bem vindo(a) " .. msg.jogador.login .. "! *Desvia o olhar e murmura* - Mais um...")
			elseif rand == 3 then
				msg.mesa.chat:enviarNarracao(prefix .. "-- Bem vindo(a)... *Deixa a prancheta cair* -- A-AH! Só um segundo por favor! *Pega a prancheta* -- Eeh... *Lê seu conteúdo* -- " .. msg.jogador.login .. "!")
			elseif rand == 4 then
				msg.mesa.chat:enviarNarracao(prefix .. "-- Bem vindo(a) " .. msg.jogador.login .. "... *Volta para o que estava fazendo*")
			else
				msg.mesa.chat:enviarNarracao(prefix .. "-- Bem vindo(a) " .. msg.jogador.login .. "! *Sorriso forçado*")
			end
		end
	end, math.random(3000, 7000))
end

Firecast.Messaging.listen("ChatMessage", function (message2) if message2.mesa.isModerada == false and message2.mesa.meuJogador.isMestre and message2.tipo ~= "comoNarrador" then ChatMessage(message2) end end)

function ChatMessage(msg)
	local txt = Utils.removerFmtChat(removerAcentos(lowercase(msg.texto)))
	setTimeout( function()
		if txt:match("tchau ruby") or txt:match("tchau galera") or txt:match("adeus ruby") or txt:match("adeus galera") or txt:match("flw galera") or txt:match("flw ruby") then
			msg.chat:enviarNarracao(prefix .. "-- T-Tchau...")
		elseif txt:match("obrigado ruby") or txt:match("obrigada ruby") then
			local rand = math.random(1, 3)
			if rand == 1 then
				msg.chat:enviarNarracao(prefix .. "-- A-Ah... De nada...")
			elseif rand == 2 then
				msg.chat:enviarNarracao(prefix .. "-- Eeh... É-É melhor não se acostumar!")
			else
				msg.chat:enviarNarracao(prefix .. "-- Não foi... nada...")
			end;
		elseif txt:match("boa noite ruby") or txt:match("boa noite galera") or txt == "boa noite" or txt == "boa noite." or txt == "boa noite!" then
			msg.chat:enviarNarracao(prefix .. "-- Boa noite...")
		elseif txt:match("boa tarde ruby") or txt:match("boa tarde galera") or txt == "boa tarde" or txt == "boa tarde." or txt == "boa tarde!" then
			msg.chat:enviarNarracao(prefix .. "-- Boa tarde.")
		elseif txt:match("bom dia ruby") or txt:match("bom dia galera") or txt == "bom dia" or txt == "bom dia." or txt == "bom dia!" then
			msg.chat:enviarNarracao(prefix .. "-- Bom dia... *Bocejo*")
		elseif txt:match("ruby") then
			local rand = math.random(1, 7)
			if rand == 1 then
				msg.chat:enviarNarracao(prefix .. "-- Oi...")
			elseif rand == 2 then
				msg.chat:enviarNarracao(prefix .. "-- Espero que não esteja dizendo meu nome sem um bom motivo...")
			elseif rand == 3 then
				msg.chat:enviarNarracao(prefix .. "-- Podemos conversar depois..?")
			elseif rand == 4 then
				msg.chat:enviarNarracao(prefix .. "-- Q-Quem é você?!")
			elseif rand == 5 then
				msg.chat:enviarNarracao(prefix .. "-- Uhm? Estou ouvindo...")
			elseif rand == 6 then
				msg.chat:enviarNarracao(prefix .. "-- Eu... estou ocupada agora.")
			else
				msg.chat:enviarNarracao(prefix .. "-- Eu não sei de nada...")
			end;
		elseif txt == ".cego" then
			if msg.jogador.isCego then
				msg.jogador:requestSetCego(false)
			else
				msg.jogador:requestSetCego(true)
			end;
		end;
	end, math.random(1000, 3000))
end;