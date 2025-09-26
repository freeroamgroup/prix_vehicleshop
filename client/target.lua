local ox_target = exports.ox_target
local locale = Locales[Config.Locale]


CreateThread(function()
local pedHash = Config.PDMPed.model
RequestModel(pedHash)
while not HasModelLoaded(pedHash) do Wait(0) end


local ped = CreatePed(4, pedHash, Config.PDMPed.coords.x, Config.PDMPed.coords.y, Config.PDMPed.coords.z - 1.0, Config.PDMPed.coords.w, false, true)
SetEntityInvincible(ped, true)
SetBlockingOfNonTemporaryEvents(ped, true)
FreezeEntityPosition(ped, true)


ox_target:addLocalEntity(ped, {
{
name = 'prix_vehicleshop:open',
icon = 'fa-solid fa-car',
label = locale.open_shop,
onSelect = function()
TriggerEvent('prix_vehicleshop:open')
end
}
})
end)
