ESX = exports.es_extended:getSharedObject()

local ped <const> = PlayerPedId()

AddEventHandler("m3fvm_givecar:spawn")
RegisterNetEvent("m3fvm_givecar:spawn", function(player, model, plate)
        local coords <const> = GetEntityCoords(ped)

        ESX.Game.SpawnVehicle(model, coords, 0.0, function(vehicle)
                if DoesEntityExist(vehicle) then
                        SetEntityVisible(vehicle, false, false)
                        SetEntityCollision(vehicle, false)
                        
                        if plate == nil then
                                plate = exports.esx_vehicleshop:GeneratePlate()
                        end

                        local prop <const> = ESX.Game.GetVehicleProperties(vehicle)
                        prop.plate = plate

                        TriggerServerEvent("m3fvm_givecar:save", player, prop)
                        ESX.Game.DeleteVehicle(vehicle)
                end
        end)
end)