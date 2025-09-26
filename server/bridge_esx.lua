ESX = exports['es_extended']:getSharedObject()

local function getIdentifier(src)
    local xPlayer = ESX.GetPlayerFromId(src)
    if not xPlayer then return nil end
    return xPlayer.getIdentifier()
end

exports('GetIdentifier', getIdentifier)
