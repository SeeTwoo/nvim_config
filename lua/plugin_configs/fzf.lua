require("fzf-lua").setup({
	vim.keymap.set("n", "<C-f>", "<cmd>FzfLua files<CR>", { desc = "Find files" }),
	vim.keymap.set("n", "<C-g>", "<cmd>FzfLua live_grep<CR>", { desc = "Live grep" }),
	vim.keymap.set("n", "<C-b>", "<cmd>FzfLua buffers<CR>", { desc = "Find buffer" }),
	vim.keymap.set("n", "<C-G>", "<cmd>FzfLua help_tags<CR>", { desc = "Help tags" })
})
