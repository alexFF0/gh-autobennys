local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("qb-benny:server:repaircheap", function()
    local Player = QBCore.Functions.GetPlayer(source)
    local bank = Player.Functions.GetMoney("bank")
    local cash = Player.Functions.GetMoney("cash")
    if Config.Pay then
        if bank >= 500 then
            if Player.Functions.RemoveMoney("bank", 500, "bennys") then
                TriggerClientEvent("qb-benny:client:repair", source)
            end
        elseif cash >= 500 then
            if Player.Functions.RemoveMoney("cash", 500) then
                TriggerClientEvent("qb-benny:client:repair", source)
            end
        else
            TriggerClientEvent("QBCore:Notify", source, "You don't have enough money", "error")
        end
    else
        TriggerClientEvent("qb-benny:client:repair", source)
    end
end)

RegisterNetEvent("qb-benny:server:repairexpensive", function()
    local Player = QBCore.Functions.GetPlayer(source)
    local bank = Player.Functions.GetMoney("bank")
    local cash = Player.Functions.GetMoney("cash")
    if Config.Pay then
        if bank >= 800 then
            if Player.Functions.RemoveMoney("bank", 800, "bennys") then
                exports['Renewed-Banking']:handleTransaction(Player.PlayerData.citizenid, Player.PlayerData.citizenid, '800', 'No Message', 'Auto Bennys Repair', 'Bennys', 'withdraw')
                TriggerClientEvent("qb-benny:client:repair", source)
            end
        elseif cash >= 800 then
            if Player.Functions.RemoveMoney("cash", 800) then
                exports['Renewed-Banking']:handleTransaction(Player.PlayerData.citizenid, Player.PlayerData.citizenid, '800', 'No Message', 'Auto Bennys Repair', 'Bennys', 'withdraw')
                TriggerClientEvent("qb-benny:client:repair", source)
            end
        else
            TriggerClientEvent("QBCore:Notify", source, "You don't have enough money", "error")
        end
    else
        TriggerClientEvent("qb-benny:client:repair", source)
    end
end)

RegisterNetEvent("qb-benny:server:enkoro", function(price)
    local Player = QBCore.Functions.GetPlayer(source)
    local bank = Player.Functions.GetMoney("bank")
    local cash = Player.Functions.GetMoney("cash")
    if Config.Pay then
        if bank >= price then
            if Player.Functions.RemoveMoney("bank", price, "bennys") then
                TriggerClientEvent("qb-benny:client:repair", source)
            end
        elseif cash >= price then
            if Player.Functions.RemoveMoney("cash", price) then
                TriggerClientEvent("qb-benny:client:repair", source)
            end
        else
            TriggerClientEvent("QBCore:Notify", source, "You don't have enough money", "error")
        end
    else
        TriggerClientEvent("qb-benny:client:repair", source)
    end
end)