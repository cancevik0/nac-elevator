fx_version 'cerulean'
game 'gta5'
lua54 'yes'

description 'Elevator Script / developed by naC'

shared_scripts {
    '@ox_lib/init.lua',
    "config.lua",
    "locales/shared.lua",  
    "locales/en.lua",  
    "locales/tr.lua"     
}


client_scripts {
    'client/client.lua'
}

server_scripts {
    'server/server.lua'
}

dependencies {
    'qb-core',
    'ox_lib',
}
