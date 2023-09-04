local QBCore = exports['qb-core']:GetCoreObject()


RegisterNetEvent("qb-benny:client:repair", function()
    local plyPed = PlayerPedId()
    local plyVeh = GetVehiclePedIsIn(plyPed, false)
    SendNUIMessage({sound = "wrench", volume = 1.0})
    QBCore.Functions.Progressbar("repair_car", "Repairing Vehicle...", 3000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        SetVehicleDeformationFixed(plyVeh)
        SetVehicleBodyHealth(plyVeh)
        SetVehicleEngineHealth(plyVeh)
        SetVehiclePetrolTankHealth(plyVeh)
        SetVehicleFixed(plyVeh)
    end)
end)

RegisterNetEvent("autorepair",function()
    local plyPed = PlayerPedId()
    local plyVeh = GetVehiclePedIsIn(plyPed, false)
    local vehBodyHealth = GetVehicleBodyHealth(plyVeh)
    local vehEngineHealth = GetVehicleEngineHealth(plyVeh)
    -- local missingBodyHealth = 1000.0 - vehBodyHealth
    -- local missingEngineHealth = 1000.0 - vehEngineHealth
    local missingBodyHealth = (1000 - vehBodyHealth) * 0.25
    local missingEngineHealth = (1000 - vehEngineHealth) * 0.25

    --[[if (missingEngineHealth < 50) or missingBodyHealth < 50 then
        TriggerServerEvent("qb-benny:server:repaircheap")
    else
        TriggerServerEvent("qb-benny:server:repairexpensive")
    end]]--
    print(missingBodyHealth, missingEngineHealth)
    TriggerServerEvent("qb-benny:server:enkoro", math.ceil(missingBodyHealth + missingEngineHealth + 300))
end)
