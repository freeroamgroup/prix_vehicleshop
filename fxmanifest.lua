fx_version 'cerulean'
game 'gta5'

name 'prix_vehicleshop'
author 'Freeroam Company'
description 'prix_vehicleshop - Prix ​​​​​​Vehicleshop is a lightweight script that adds a car shop.'
version '1.0'

lua54 'yes'

shared_scripts {
    '@es_extended/imports.lua',
    '@ox_lib/init.lua',
    'config.lua',
    'locales/*.lua'
}

client_scripts {
    'client/target.lua',
    'client/main.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/bridge_esx.lua',
    'server/main.lua'
}

dependencies {
    'es_extended',
    'ox_lib',
    'ox_target',
    'prix_core'
}
