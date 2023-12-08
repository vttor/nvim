-- https://github.com/nvim-telescope/telescope.nvim

require('telescope').setup {
    defaults = {
        -- ripgrep remove indentation
        vimgrep_arguments = {
            "rg",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case",
        },
        mappings = {},
        layout_strategy = "horizontal",
        layout_config = {
            horizontal = {
                size = {
                    width = "90%",
                    height = "60%",
                },
            },
            vertical = {}
        },
        color_devicons = true,
        border = {},
        borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
        file_ignore_patterns = { "node_modules" },
    }
}