CreateThread(function()
    for k, v in pairs(Config.Deals) do
        local startingPed = v.startingPed
        local pedModel = lib.requestModel(startingPed.model)
        local startPed = CreatePed(1, pedModel, startingPed.location.x, startingPed.location.y, startingPed.location.z-1, false, false)

        SetEntityInvincible(startPed, true)
        SetBlockingOfNonTemporaryEvents(startPed, true)
        FreezeEntityPosition(startPed, true)

        if startingPed.animInfo.active then
            local animDict = lib.requestAnimDict(startingPed.animInfo.dict)
            
            TaskPlayAnim(startPed, animDict, startingPed.animInfo.clip, 4.0, 4.0, -1, 1, false, false, false, false)
            RemoveAnimDict(animDict)
        end
    
        if startingPed.propInfo.active then
            local placement = startingPed.propInfo.placement
            local loadPropModel = lib.RequestModel(startingPed.propInfo.propModel, 60000)
            local propModel = CreateObject(loadPropModel, startingPed.location.xyz, false, true, false)

            AttachEntityToEntity(propModel, startPed, GetPedBoneIndex(startPed, startingPed.propInfo.bone), placement.x, placement.y, placement.z, placement.xRot, placement.yRot, placement.zRot, true, true, false, true, 1, true)
            SetModelAsNoLongerNeeded(loadPropModel)
        end
    
        exports.ox_target:addLocalEntity(startPed,  {
            {
                label = 'Speak to '..startingPed.name,
                icon = 'fa-solid fa-cart-shopping',
                event = 'deals:client:InitialInteraction',
            }
        })

        SetModelAsNoLongerNeeded(pedModel)
    end
end)