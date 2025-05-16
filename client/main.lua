QBCore = exports["qb-core"]:GetCoreObject()

RegisterNetEvent('deals:client:InitialInteraction', function(data)
    local player = cache.ped

    print(json.encode(data, {indent = true}))
end)