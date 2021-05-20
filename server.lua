-- kadeciok#1234
-- nie usuwaj tego!

ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Na dole masz jak chcesz mieć komende /tablica to usuwasz w 4 linijkach: --

--RegisterCommand("tablica", function(source, args, raw)
--    local src = source
--    TriggerClientEvent("foka_tablice:command", src)
--end)

RegisterServerEvent('foka_tablice:pay')
AddEventHandler('foka_tablice:pay', function()
	local _source = source
	local xPlayer  = ESX.GetPlayerFromId(source)
	xPlayer.removeMoney(Config.money)
end)

-- kadeciok#1234
-- nie usuwaj tego!