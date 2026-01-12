return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies =  {"hrsh7th/cmp-nvim-lsp"},
	config = function()
		local cmp = require("cmp")
		cmp.setup({
			completion = {autocomplete = false},
			sources = {
				{name = "nvim_lsp"}
			},
			mapping = cmp.mapping.preset.insert({
				["<C-Space>"] = cmp.mapping.complete(),
			})
		})
	end
}
