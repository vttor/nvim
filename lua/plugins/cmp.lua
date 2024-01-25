-- https://github.com/hrsh7th/nvim-cmp

local cmp = require('cmp')

cmp.setup ({
	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert({
		['<C-n>'] = cmp.mapping.select_next_item(),
		['<C-p>'] = cmp.mapping.select_prev_item(),
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.abort(),
		['<CR>'] = cmp.mapping.confirm({
			-- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
			select = true 
		}),
	}),
	sources = {
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' },
		{ name = 'cmdline'},
		{ name = 'path' },
		{ name = 'buffer' },
	},
})

vim.api.nvim_set_keymap('i', '<C-j>', "<Plug>luasnip-expand-or-jump", {})
vim.api.nvim_set_keymap('s', '<C-j>', "<Plug>luasnip-expand-or-jump", {})