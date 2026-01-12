return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies =  {"hrsh7th/cmp-nvim-lsp"},
	config = function()
		local cmp = require("cmp")

		cmp.setup({
			completion = {
				autocomplete = { cmp.TriggerEvent.TextChanged },
			},
			sources = {
				{name = "nvim_lsp"}
			},
			mapping = cmp.mapping.preset.insert({
				["<CR>"] = cmp.mapping.confirm({ select = false }),
			})
		})
	end
}
