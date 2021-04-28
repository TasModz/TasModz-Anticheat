TAC.RegisterServerCallback = function(name, cb)
    TAC.ServerCallbacks[name] = cb
end

TAC.RegisterServerEvent = function(name, cb)
    TAC.ServerEvents[name] = cb
end

TAC.TriggerClientCallback = function(source, name, cb, ...)
    local playerId = tostring(source)

    if (TAC.ClientCallbacks == nil) then
        TAC.ClientCallbacks = {}
    end

    if (TAC.ClientCallbacks[playerId] == nil) then
        TAC.ClientCallbacks[playerId] = {}
        TAC.ClientCallbacks[playerId]['CurrentRequestId'] = 0
    end

    TAC.ClientCallbacks[playerId][tostring(TAC.ClientCallbacks[playerId]['CurrentRequestId'])] = cb

    TriggerClientEvent('tasifyanticheat:triggerClientCallback', source, name, TAC.ClientCallbacks[playerId]['CurrentRequestId'], ...)

    if (TAC.ClientCallbacks[playerId]['CurrentRequestId'] < 65535) then
        TAC.ClientCallbacks[playerId]['CurrentRequestId'] = TAC.ClientCallbacks[playerId]['CurrentRequestId'] + 1
    else
        TAC.ClientCallbacks[playerId]['CurrentRequestId'] = 0
    end
end

TAC.TriggerClientEvent = function(source, name, ...)
    TriggerClientEvent('tasifyanticheat:triggerClientEvent', source, name, ...)
end

TAC.TriggerServerCallback = function(name, source, cb, ...)
    if (TAC.ServerCallbacks ~= nil and TAC.ServerCallbacks[name] ~= nil) then
        TAC.ServerCallbacks[name](source, cb, ...)
    else
        print('[tasifyanticheat] TriggerServerCallback => ' .. _('callback_not_found', name))
    end
end

TAC.TriggerServerEvent = function(name, source, ...)
    if (TAC.ServerEvents ~= nil and TAC.ServerEvents[name] ~= nil) then
        TAC.ServerEvents[name](source, ...)
    else
        print('[tasifyanticheat] TriggerServerEvent => ' .. _('trigger_not_found', name))
    end
end

RegisterServerEvent('tasifyanticheat:clientCallback')
AddEventHandler('tasifyanticheat:clientCallback', function(requestId, ...)
    local _source = source
    local playerId = tonumber(_source)

    if (TAC.ClientCallbacks ~= nil and TAC.ClientCallbacks[playerId] ~= nil and TAC.ClientCallbacks[playerId][requestId] ~= nil) then
        TAC.ClientCallbacks[playerId][tostring(requestId)](...)
        TAC.ClientCallbacks[playerId][tostring(requestId)] = nil
    end
end)