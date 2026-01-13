return {
	'hrsh7th/nvim-cmp',
	dependencies = {
		'hrsh7th/cmp-nvim-lsp', -- Connects cmp to clangd
		'L3MON4D3/LuaSnip',     -- Snippet engine (required for cmp to work)
		'saadparwaiz1/cmp_luasnip'
	},
	config = function()
		local cmp = require('cmp')

		cmp.setup({
			-- Required: You must specify a snippet engine
			snippet = {
				expand = function(args)
					require('luasnip').lsp_expand(args.body)
				end,
			},
			-- Key mappings
			mapping = cmp.mapping.preset.insert({
				['<C-b>'] = cmp.mapping.scroll_docs(-4),
				['<C-f>'] = cmp.mapping.scroll_docs(4),
				['<C-Space>'] = cmp.mapping.complete(), -- Manually trigger completion
				['<CR>'] = cmp.mapping.confirm({ select = true }), -- Enter to confirm
				['<Tab>'] = cmp.mapping.select_next_item(),
				['<S-Tab>'] = cmp.mapping.select_prev_item(),
			}),

			-- VITAL: This restricts what shows up in the menu
			sources = cmp.config.sources({
				{
					name = 'nvim_lsp',
					keyword_length = 99,
				}, -- Only shows suggestions from clangd
				-- { name = 'buffer' }, -- <-- KEEP THIS COMMENTED OUT to avoid random text matches
			})
		})
	end
}
