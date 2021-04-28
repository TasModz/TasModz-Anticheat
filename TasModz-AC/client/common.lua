AddEventHandler('tasifyanticheat:getSharedObject', function(cb)
    cb(TAC)
end)

function getSharedObject()
    return TAC
end

RegisterNetEvent('tasifyanticheat:triggerClientCallback')
AddEventHandler('tasifyanticheat:triggerClientCallback', function(name, requestId, ...)
    TAC.TriggerClientCallback(name, function(...)
        TriggerServerEvent('tasifyanticheat:clientCallback', requestId, ...)
    end, ...)
end)

RegisterNetEvent('tasifyanticheat:triggerClientEvent')
AddEventHandler('tasifyanticheat:triggerClientEvent', function(name, ...)
    TAC.TriggerClientEvent(name, ...)
end)