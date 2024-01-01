-- https://github.com/nvim-tree/nvim-tree.lua

require("nvim-tree").setup({
    sort_by = "case_sensitive",
    disable_netrw = true,
    hijack_netrw = true,
    hijack_cursor = true,
    hijack_unnamed_buffer_when_opening = false,
    sync_root_with_cwd = true,
    update_focused_file = {
        enable = true,
        update_root = false,
    },
    view = {
        width = 30,
        side = 'left',
        preserve_window_proportions = true,
    },
    renderer = {
        root_folder_label = false,
        group_empty = true,
    },
    git = {
        enable = true,
        ignore = true,
    },
    update_focused_file = {
        enable = true,
        update_cwd = false,
        ignore_list = {},
    },
    filters = {
        dotfiles = false
    },
    actions = {
        open_file = {
            quit_on_open = false,
            window_picker = {
                enable = true,
            },
            resize_window = true
        },
    }
})
