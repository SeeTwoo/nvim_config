return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {"nvim-tree/nvim-web-devicons"},

	config = function()
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1
		
		require("nvim-tree").setup({
			view = {
				side = "left",
				width = 30,
			},
			renderer = {
				group_empty = true,
			},
			filters = {
				dotfiles = false,
			},
		})

		pcall(vim.keymap.del, "n", "<C-t>")
		vim.keymap.set("n", "<C-t>", ":NvimTreeToggle<CR>", {noremap = true, silent = true})
	end,
}
