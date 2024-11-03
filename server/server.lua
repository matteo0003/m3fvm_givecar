ESX = exports.es_extended:getSharedObject()

Registercommand("givecar", function(source, args))
        if args[1] == nil or args[2] == nil then return end

        local plate = args[3]

        if palte ~= nil then
                if #args > 3 then
                        for index = 4, #args do
                                plate = plate .. " " .. args[index]
                        end
                end

                plate = string.upper(plate)
        end

        TriggerClientEvent("m3fvm_givecar:spawn", source, args[1], args[2], plate)
end

RegisterNetEvent("m3fvm_givecar:save", function(player, prop)
        local xPlayer <const> = ESX.GetPlayerFromId(player)

        MySQL.prepare("INSERT INTO owned_vehicles (owner, plate, vehicle, type, stored, parking) VALUES (?, ?, ?, ?, ?, ?)", {
                xPlayer.identifier,
                prop.plate,
                json.encode(prop),
                "car",
                1,
                "VespucciBoulevard",
        })
end)