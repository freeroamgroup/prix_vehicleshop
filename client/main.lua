local locale = Locales[Config.Locale]

local previewVehicle
local inCam = false
local cam = nil

local function OpenPreview(model, coords, heading)
    if previewVehicle and DoesEntityExist(previewVehicle) then
        DeleteEntity(previewVehicle)
        previewVehicle = nil
    end

    lib.requestModel(model)
    previewVehicle = CreateVehicle(model, coords.x, coords.y, coords.z, heading, false, true)
    SetVehicleDoorsLocked(previewVehicle, 2)
    FreezeEntityPosition(previewVehicle, true)
    SetEntityInvincible(previewVehicle, true)
end

local function CamON(coords)
    inCam = true
    if not DoesCamExist(cam) then
        cam = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
        SetCamActive(cam, true)
        RenderScriptCams(true, true, 250, true, true)
        SetCamCoord(cam, coords.x + 3.0, coords.y + 3.0, coords.z + 1.5)
        PointCamAtCoord(cam, coords.x, coords.y, coords.z)
    end
end

local function CamOFF()
    if previewVehicle and DoesEntityExist(previewVehicle) then
        DeleteEntity(previewVehicle)
        previewVehicle = nil
    end

    if cam and DoesCamExist(cam) then
        RenderScriptCams(false, true, 250, true, true)
        DestroyCam(cam, false)
        cam = nil
    end

    inCam = false

    DestroyAllCams(true)
    RenderScriptCams(false, false, 0, true, true)
    SetGameplayCamRelativeHeading(0.0)
    SetGameplayCamRelativePitch(0.0, 1.0)

    FreezeEntityPosition(PlayerPedId(), false)
    ClearPedTasks(PlayerPedId())
    SetNuiFocus(false, false)
end

local function openCategory(cat, vehicles)
    local options = {}
    for _, v in ipairs(vehicles) do
        options[#options + 1] = {
            label = ("%s - $%s"):format(v.label, lib.math.groupdigits(v.price)),
            args = { vehicle = v, cat = cat, vehicles = vehicles }
        }
    end

    lib.registerMenu({
        id = 'prix_vehicleshop:category:' .. cat.name,
        title = cat.label,
        options = options,
        onClose = function()
            -- Backspace → zpět do root
            CamOFF()
            lib.showMenu('prix_vehicleshop:root')
        end,
    }, function(selected, scrollIndex, args)
        local v = args.vehicle
        OpenPreview(joaat(v.model), Config.Preview.spawn, Config.Preview.spawn.w)
        CamON(Config.Preview.spawn)

        lib.registerMenu({
            id = 'prix_vehicleshop:vehicle:' .. v.model,
            title = v.label .. ' - $' .. lib.math.groupdigits(v.price),
            options = {
                { label = locale.buy .. ' (' .. locale.cash .. ')', args = { action = 'buy_cash', model = v.model, price = v.price } },
                { label = locale.buy .. ' (' .. locale.bank .. ')', args = { action = 'buy_bank', model = v.model, price = v.price } },
            },
            onClose = function()
                -- Backspace → zpět do kategorie
                CamOFF()
                lib.showMenu('prix_vehicleshop:category:' .. cat.name)
            end,
        }, function(_, _, args2)
            if args2.action == 'buy_cash' then
                TriggerServerEvent('prix_vehicleshop:buy', args2.model, args2.price, 'money')
                CamOFF()
            elseif args2.action == 'buy_bank' then
                TriggerServerEvent('prix_vehicleshop:buy', args2.model, args2.price, 'bank')
                CamOFF()
            end
        end)

        lib.showMenu('prix_vehicleshop:vehicle:' .. v.model)
    end)

    lib.showMenu('prix_vehicleshop:category:' .. cat.name)
end

RegisterNetEvent('prix_vehicleshop:open', function()
    lib.callback('prix_vehicleshop:getCatalog', false, function(payload)
        local cats = payload.categories
        local vehiclesByCat = payload.vehicles

        local options = {}
        for _, cat in ipairs(cats) do
            options[#options + 1] = {
                label = cat.label,
                args = { cat = cat, vehicles = vehiclesByCat[cat.name] or {} }
            }
        end

        lib.registerMenu({
            id = 'prix_vehicleshop:root',
            title = locale.category,
            options = options,
            onClose = function()
                -- ESC nebo Backspace → úplné zavření
                CamOFF()
            end,
        }, function(_, _, args)
            openCategory(args.cat, args.vehicles)
        end)

        lib.showMenu('prix_vehicleshop:root')
    end)
end)

AddEventHandler('onResourceStop', function(res)
    if res == GetCurrentResourceName() then
        CamOFF()
    end
end)

CreateThread(function()
    print("^2[prix_vehicleshop] Creating blip...^0")
    local blip = AddBlipForCoord(-56.3672, -1096.8129, 26.4224)
    SetBlipSprite(blip, 669)
    SetBlipScale(blip, 0.7)
    SetBlipColour(blip, 0)
    SetBlipAsShortRange(blip, true)

    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Premium Deluxe Motorsport")
    EndTextCommandSetBlipName(blip)
end)
