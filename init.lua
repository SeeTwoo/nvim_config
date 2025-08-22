vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.guicursor = ""
vim.opt.colorcolumn = "81"

vim.cmd.colorscheme("blue_pink_theme")

vim.opt.rtp:prepend("~/.local/share/nvim/lazy/lazy.nvim")

require("lazy").setup({
	"mfussenegger/nvim-dap",
	"rcarriga/nvim-dap-ui",
	"neovim/nvim-lspconfig",
	"williamboman/mason.nvim",
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
				theme = nil,
					section_separators = { left = "", right = "" },
					component_separators = { left = "", right = "" },
			},
        })
      end,
    },
})

require("stdheader")
