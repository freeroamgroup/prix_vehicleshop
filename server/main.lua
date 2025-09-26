ESX = exports["es_extended"]:getSharedObject()

-- Ensure prix_core is started; if not, stop this resource immediately
CreateThread(function()
    Wait(100)
    local coreState = GetResourceState('prix_core')
    if coreState ~= 'started' then
        print("^1[prix_vehicleshop] ERROR: prix_core is not started. Stopping prix_vehicleshop resource.^0")
        StopResource(GetCurrentResourceName())
        return
    end
end)

-- Callback for client (load catalog)
lib.callback.register('prix_vehicleshop:getCatalog', function(source)
    local categories = Config.Categories
    local vehiclesByCat = {}

    for _, cat in ipairs(categories) do
        vehiclesByCat[cat.name] = {}
    end

    for _, veh in ipairs(Config.Vehicles) do
        if vehiclesByCat[veh.category] then
            table.insert(vehiclesByCat[veh.category], veh)
        end
    end

    return {
        categories = categories,
        vehicles = vehiclesByCat
    }
end)

-- Purchase vehicle
RegisterNetEvent('prix_vehicleshop:buy', function(model, price, account)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if not xPlayer then return end

    price = tonumber(price)
    if not price then return end

    local acc = xPlayer.getAccount(account)
    if not acc or acc.money < price then
        TriggerClientEvent('ox_lib:notify', src, {
            type = 'error',
            description = 'You do not have enough money in the selected account.'
        })
        return
    end

    xPlayer.removeAccountMoney(account, price)

    local plate = string.upper(string.sub(xPlayer.getName(), 1, 3) .. math.random(100, 999))

    local vehicleProps = {
        model = model,
        plate = plate
    }
    local props = json.encode(vehicleProps)

    MySQL.insert('INSERT INTO owned_vehicles (owner, plate, vehicle, stored) VALUES (?, ?, ?, ?)', {
        xPlayer.identifier, plate, props, 1
    })

if GetResourceState(Config.Garage.exportResource or 'prix_garage') == 'started' then
    local ok, err = pcall(function()
        exports[Config.Garage.exportResource or 'prix_garage']:AddVehicle(src, model, plate, props)
    end)
    if not ok then
        print(('[prix_vehicleshop] Warning: failed to export vehicle to %s (%s)'):format(Config.Garage.exportResource or 'prix_garage', tostring(err)))
    end
end

    TriggerEvent('lunar_garage:setVehicleOwner', plate)

    TriggerClientEvent('ox_lib:notify', src, {
        type = 'success',
        title = 'Vehicle Purchased',
        description = ('You purchased %s for $%s. It is now in your garage (Plate: %s).'):format(model, lib.math.groupdigits(price), plate)
    })
end)

-- Test drive
RegisterNetEvent('prix_vehicleshop:testdrive', function(model)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if not xPlayer then return end

    TriggerClientEvent('prix_vehicleshop:startTestDrive', src, model)
end)
