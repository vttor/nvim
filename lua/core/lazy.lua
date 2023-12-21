-- https://github.com/folke/lazy.nvim

-- lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
})
end
vim.opt.rtp:prepend(lazypath)

-- make sure to set `mapleader` before lazy so your mappings are correct
vim.g.mapleader = " "

-- plugins
require("lazy").setup({
    spec = {

        -- file explorer
        {
            "nvim-tree/nvim-tree.lua",
            version = "*",
            lazy = false,
            dependencies = {
                {"nvim-tree/nvim-web-devicons"}
            },
        },

        -- bufferline
        {
            'akinsho/bufferline.nvim', 
            version = "*", 
            dependencies = 'nvim-tree/nvim-web-devicons'
        },
        
        -- theme
        { 
            "catppuccin/nvim", 
            name = "catppuccin", 
            priority = 1000 
        },

        -- gitsigns
        {
            "lewis6991/gitsigns.nvim",
            dependencies = {"nvim-lua/plenary.nvim"}
        },

        -- telescope
        {
            "nvim-telescope/telescope.nvim", tag = "0.1.5",
            dependencies = { "nvim-lua/plenary.nvim" }
        },

        -- treesitter
        {
            "nvim-treesitter/nvim-treesitter", 
            build = ":TSUpdate"
        },

        -- comment
        {
            'numToStr/Comment.nvim',
            lazy = false
        },

        -- dashboard
        {
            'goolord/alpha-nvim',
            dependencies = { 'nvim-tree/nvim-web-devicons' }
        },

        -- icons
        { 
            "nvim-tree/nvim-web-devicons", 
            lazy = true 
        },

        -- autopairs
        {
            "windwp/nvim-autopairs",
            event = "InsertEnter",
            config = function()
                require("nvim-autopairs").setup{}
            end
        },

        -- indent line
        { 
            "lukas-reineke/indent-blankline.nvim", 
            main = "ibl",
            opts = {},
        },

        -- lualine
        {
            "nvim-lualine/lualine.nvim",
            dependencies = {"nvim-tree/nvim-web-devicons"}
        },

        ---  lsp
        {"neovim/nvim-lspconfig"},

        -- autocomplete
        {
            "hrsh7th/nvim-cmp",
            event = {
                "InsertEnter",
                "CmdlineEnter"
            },
            dependencies = {
                "hrsh7th/cmp-nvim-lsp",
                "hrsh7th/cmp-buffer",
                "hrsh7th/cmp-path",
                "hrsh7th/cmp-cmdline",
                "saadparwaiz1/cmp_luasnip",
                "L3MON4D3/LuaSnip"
            }
        }
    }
})