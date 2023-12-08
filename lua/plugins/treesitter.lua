-- https://github.com/nvim-treesitter/nvim-treesitter

require('nvim-treesitter.configs').setup {
    ensure_installed = {"c", "cpp", "javascript", "typescript", "python"},
    sync_install = false,
    highlight = { 
        enable = true 
    }
}