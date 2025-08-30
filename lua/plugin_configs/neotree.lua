require("neo-tree").setup({
	window = {
		position = "float",
	},
	vim.keymap.set("n", "<Leader>nt", ":Neotree toggle<CR>", {desc = "Toggle Neo-tree" })
})
