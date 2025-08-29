vim.opt.rtp:prepend("~/.local/share/nvim/lazy/lazy.nvim")

require("lazy").setup({
	"mfussenegger/nvim-dap",
	"rcarriga/nvim-dap-ui",
	"mfussenegger/nvim-lint",
	{
		"nvim-neo-tree/neo-tree.nvim",
		config = function ()
			require ("plugin_configs.neotree")
		end,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		}
	},
	{
		"ibhagwan/fzf-lua",
		config = function ()
			require ("plugin_configs.fzf")
		end,
	},
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			require ("plugin_configs.lspconfig").setup()
		end,
	},
	{
		"williamboman/mason.nvim",
		config = function()
			require ("mason").setup()
		end,
	},
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
require("set")
require("stdheader")
require("classes")
