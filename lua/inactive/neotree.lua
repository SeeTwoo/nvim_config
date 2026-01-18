return {
	{
		"nvim-tree/nvim-web-devicons",
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		config = function()
			require("neo-tree").setup({
				window = {
					position = "float",
					popup = {
						position = "50%",
						border = "rounded",
					}
				},
				vim.keymap.set("n", "<Leader>nt", ":Neotree toggle<CR>", {desc = "Toggle Neo-tree" })
			})
		end,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
		},
	},
}
