ESX	= nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterCommand('fps', function(source)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('fps:menu', _source)
end)

