vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.guicursor = ""
vim.opt.colorcolumn = "81"
vim.o.mouse = ""

vim.opt.rtp:prepend("~/.local/share/nvim/lazy/lazy.nvim")

require("lazy").setup({
	{
		"mfussenegger/nvim-dap",      -- Debugging
		"rcarriga/nvim-dap-ui",       -- Debugger UI
		"neovim/nvim-lspconfig",      -- LSP (clangd, etc.)
		"williamboman/mason.nvim",    -- Easy LSP/dap/linter installer
		"mfussenegger/nvim-lint",
		{
			"nvim-treesitter/nvim-treesitter",
			build = ":TSUpdate",
		},
		{
			"nvim-lualine/lualine.nvim", -- Statusline
			config = function()
				require("lualine").setup({
					options = {
						theme = "auto",
						section_separators = "",
						component_separators = "",
					},
				})
			end,
		},
		{
			"folke/noice.nvim",          -- Fancy cmdline / messages
			dependencies = {
				"MunifTanjim/nui.nvim",
				"rcarriga/nvim-notify",    -- notification backend
			},
			config = function()
				require("noice").setup()
			end,
		},
	}
})

require("fileheader")
require("classes")
require("stdheader")

vim.cmd.colorscheme("blue_pink_theme")
