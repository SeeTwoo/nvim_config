return {
	"ibhagwan/fzf-lua",
	config = function()
		vim.keymap.set("n", "<Leader>ff", "<cmd>FzfLua files<CR>", { desc = "Find files" })
		vim.keymap.set("n", "<Leader>fg", "<cmd>FzfLua live_grep<CR>", { desc = "Live grep" })
		vim.keymap.set("n", "<Leader>fb", "<cmd>FzfLua buffers<CR>", { desc = "Find buffer" })
		vim.keymap.set("n", "<Leader>fh", "<cmd>FzfLua help_tags<CR>", { desc = "Help tags" })
		require("fzf-lua").setup({
			winopts = {
				border = "rounded",
				hls = {
					border			= "FloatBorder",
					preview_border	= "FloatBorder",
					title			= "FloatBorder",
					preview_title	= "FloatBorder",
					search			= "NormalFloat",
				},
			},
		})
	end,
}
