fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name 'vib_gangdeals'
author 'Vibrant Resources'
version '1.0.0'
repository 'https://github.com/VibrantResources/vib_gangdeals'
description 'A script allowing players to meet with NPC\'s and simulate large deals like drugs, guns etc'

client_scripts {
	'client/*.lua',
	'menus/*.lua',
}

server_scripts  {
	'server/*.lua'
}

shared_scripts {
    '@ox_lib/init.lua',
	'config.lua',
}