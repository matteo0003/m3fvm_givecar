fx_version "cerulean"
game "gta5"
lua54 "yes"

author "matteo0003"
version "1.0.0"

client_scripts {
        "client/client.lua",
}

server_scripts {
        "@oxmysql/lib/MySQL.lua",
        "server/server.lua",
}

files {
        "locales/*.json",
}

dependencies {
        "oxmysql",
        "es_extended",
}