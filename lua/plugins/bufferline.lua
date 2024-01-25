-- https://github.com/akinsho/bufferline.nvim

require('bufferline').setup{
    options = {
        mode = "tabs", -- set to "tabs" to only show tabpages instead
        buffer_close_icon = '󰅖',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',
        indicator = {
            icon = '▎', -- this should be omitted if indicator style is not 'icon'
            style = 'icon' -- 'underline' or 'none'
        },
        max_name_length = 18,
        max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
        truncate_names = true, -- whether or not tab names should be truncated
        tab_size = 18,
        offsets = {
            {
                filetype = "NvimTree",
                text = "",
                text_align = "",
                separator = false
            }
        },
        color_icons = true,
        hover = {
            enabled = true,
            delay = 200,
            reveal = {'close'}
        },
    }
}