local QBCore = exports['qb-core']:GetCoreObject()
local CurrentLocale = LoadLocale(Config.Locale)

for _, elevator in pairs(Config.Elevators) do
    exports['qb-target']:AddBoxZone(elevator.name, elevator.targetCoords, 1.0, 1.0, {
        name = elevator.name,
        heading = elevator.targetHeading,
        debugPoly = false,
        minZ = elevator.targetCoords.z - 1,
        maxZ = elevator.targetCoords.z + 1
    }, {
        options = {
            {
                type = "client",
                event = "nac-elevator:openMenu",
                icon = "fas fa-elevator",
                label = CurrentLocale['use_elevator']
            }
        },
        distance = 2.5
    })
end


RegisterNetEvent('nac-elevator:openMenu', function()
    local options = {}
    for _, elevator in pairs(Config.Elevators) do
        local playerCoords = GetEntityCoords(PlayerPedId())
        if #(playerCoords - elevator.targetCoords) < 5.0 then
            for _, floor in pairs(elevator.positions) do
                table.insert(options, {
                    title = floor.label,
                    description = CurrentLocale['go_to_floor'],
                    event = "nac-elevator:teleport",
                    args = { coords = floor.coords }
                })
            end
        end
    end

    lib.registerContext({
        id = 'elevator_menu',
        title = CurrentLocale['elevator_floors'],
        options = options
    })

    lib.showContext('elevator_menu')
end)

RegisterNetEvent('nac-elevator:teleport', function(data)
    local ped = PlayerPedId()
    DoScreenFadeOut(1000)
    Wait(1000)
    SetEntityCoords(ped, data.coords.x, data.coords.y, data.coords.z)
    Wait(1000)
    DoScreenFadeIn(1000)
end)
