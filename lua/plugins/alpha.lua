-- https://github.com/goolord/alpha-nvim

local alpha = require'alpha'
local dashboard = require'alpha.themes.dashboard'

local banner = {
    [[                   ,%%%,                           ]],
    [[                 ,%%%` %                           ]],
    [[                ,%%`( '|                           ]],
    [[               ,%%@ /\_/                           ]],
    [[     ,%.-"""--%%% "@@__                            ]],
    [[    %%/             |__`\                          ]],
    [[   .%'\     |   \   /  //                          ]],
    [[   ,%' >   .'----\ |  [/                           ]],
    [[      < <<`       ||                               ]],
    [[       `\\\       ||                               ]],
    [[         )\\      )\                               ]],
	[[███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ]],
	[[████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ]],
	[[██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ]],
	[[██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ]],
	[[██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ]],
	[[╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ]],
}

dashboard.section.header.val = banner

-- menu options
dashboard.section.buttons.val = {
    dashboard.button('e', '  New File', ':ene<CR>'),
    dashboard.button('f', '  Find File', ':Telescope find_files<CR>'),
    dashboard.button('u', '󰚰  Update Plugins', ':Lazy update<CR>'),
    dashboard.button('q', '󰅚  Quit', ':qa<CR>'),
}

alpha.setup(dashboard.config)