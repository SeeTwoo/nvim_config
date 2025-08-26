vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.guicursor = ""
vim.opt.colorcolumn = "81"
vim.opt.showmode = false
vim.opt.showcmd = false
vim.opt.ruler = false
--vim.opt.cmdheight = 0
vim.opt.hlsearch = false

vim.opt.rtp:prepend("~/.local/share/nvim/lazy/lazy.nvim")

require("lazy").setup({
	"mfussenegger/nvim-dap",
	"rcarriga/nvim-dap-ui",
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			require ("plugin_configs.lspconfig")
		end,
	},
	{
		"williamboman/mason.nvim",
		config = function()
			require ("mason").setup()
		end,
	},
	"mfussenegger/nvim-lint",
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require ("plugin_configs.treesitter")
		end
	},
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require ("plugin_configs.lualine")
		end,
	},
	{
		"folke/noice.nvim",
		config = function()
			require("plugin_configs.noice")
		end,
	},
})

vim.cmd.colorscheme("blue_pink_theme")

require("stdheader")
