-- see: https://neovim.io/doc/user/quickref.html#option-list 

local set = vim.opt

set.background = dark
set.clipboard = "unnamedplus"
set.completeopt = 'noinsert,menuone,noselect'
set.cursorline = true
set.expandtab = true
set.fileencoding = "utf-8"
set.foldmethod = 'marker'
set.hidden = true
set.history = 100
set.lazyredraw = true
set.laststatus = 3
set.linebreak = true
set.mouse = 'a'
set.number = true
set.scrolloff = 5
set.shiftwidth = 4
set.showmatch = true
set.sidescrolloff = 5
set.signcolumn = "yes"
set.smartcase = true
set.smartindent = true
set.smarttab = true
set.splitbelow = true
set.splitright = true
set.swapfile = false
set.synmaxcol = 240
set.tabstop = 4
set.termguicolors = true
set.title = true
set.ttimeoutlen = 0
set.updatetime = 250
set.wildmenu = true

-- disable built-in plugins
local disabled_built_ins = {
    "2html_plugin",
    "getscript",
    "getscriptPlugin",
    "gzip",
    "logipat",
    "matchit",
    "netrw",
    "netrwFileHandlers",
    "netrwSettings",
    "tar",
    "tutor",
    "vimball",
    "vimballPlugin",
    "zip",
    "zipPlugin"
}

for _, plugin in pairs(disabled_built_ins) do
    vim.g["loaded_" .. plugin] = 1
end  