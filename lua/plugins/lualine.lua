-- https://github.com/nvim-lualine/lualine.nvim

require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'nightfly',
        component_separators = '',
        section_separators = { left = '', right = '' },
        -- disabled_filetypes = { 'alpha' },
        globalstatus = true,
        refresh = {
            statusline = 100,
        }
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {}
    },
}