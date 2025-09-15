fx_version 'cerulean'
game 'gta5'

author 'LIMMA98'
description 'Unique Stashes for OX Inventory with custom locks and interactions'
version '1.0.0'

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua',
    'custom.lua'
}

client_scripts {
    'client.lua'
}

server_scripts {
    'server.lua'
}

dependencies {
    'ox_lib',
    'ox_inventory',
    -- 'ox_target' if using target option, but we'll check in config
}

lua54 'yes'