
ESX = {}
ESX.Players = {}
ESX.Jobs = {}
ESX.JobsPlayerCount = {}
ESX.Items = {}
Core = {}
Core.UsableItemsCallbacks = {}
Core.RegisteredCommands = {}
Core.Pickups = {}
Core.PickupId = 0
Core.PlayerFunctionOverrides = {}
Core.DatabaseConnected = false
Core.playersByIdentifier = {}

Core.vehicleTypesByModel = {}

RegisterNetEvent("esx:onPlayerSpawn", function()
    ESX.Players[source].spawned = true
end)

AddEventHandler('esx:getSharedObject', function(cb)
	cb(ESX)
end)

exports("getSharedObject", function()
    return ESX
end)

if Config.OxInventory then
    Config.PlayerFunctionOverride = "OxInventory"
    SetConvarReplicated("inventory:framework", "esx")
end

local function StartDBSync()
    CreateThread(function()
        local interval <const> = 3 * 60 * 1000
        while true do
            Wait(interval)
            Core.SavePlayers()
        end
    end)
end

MySQL.ready(function()
    Core.DatabaseConnected = true
    if not Config.OxInventory then
        local items = MySQL.query.await("SELECT * FROM items")
        for _, v in ipairs(items) do
            ESX.Items[v.name] = { label = v.label, limit = v.limit, rare = v.rare, canRemove = v.can_remove }
        end
    else
        TriggerEvent("__cfx_export_ox_inventory_Items", function(ref)
            if ref then
                ESX.Items = ref()
            end
        end)

        AddEventHandler("ox_inventory:itemList", function(items)
            ESX.Items = items
        end)

        while not next(ESX.Items) do
            Wait(0)
        end
    end

    ESX.RefreshJobs()
    print("")
	print(' ^7 VERSION 1.10.7                  ')     
    print(' ^7 AUTHOR : PLASMA-STUDIO          ')
    print("")
    print(' ^4 BASE MODIFY BY PLASMA STUDIO    ')
    StartDBSync()
    if Config.EnablePaycheck then
        StartPayCheck()
    end
end)

RegisterServerEvent("esx:clientLog")
AddEventHandler("esx:clientLog", function(msg)
    if Config.EnableDebug then
        print(("[^2TRACE^7] %s^7"):format(msg))
    end
end)

RegisterNetEvent("esx:ReturnVehicleType", function(Type, Request)
    if Core.ClientCallbacks[Request] then
        Core.ClientCallbacks[Request](Type)
        Core.ClientCallbacks[Request] = nil
    end
end)
