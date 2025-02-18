QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('elevator:requestTeleport', function(destination)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if Player then
        TriggerClientEvent('elevator:teleport', src, destination)
    end
end)
