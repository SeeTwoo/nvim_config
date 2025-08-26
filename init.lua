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
vim.opt.cmdheight = 0
vim.opt.hlsearch = false

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
		config = function()
			require("nvim-treesitter.configs").setup {
				ensure_installed = {"c", "lua", "cpp"},
				sync_install = false,
				auto_install = true,
				highlight = {
					enable = true,
					additional_vim_regex_highlighting = false,
				},
			}
		end
	},
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("lualine").setup({
				options = {
					theme = require("blue_pink_lualine_theme"),
					section_separators = { left = "", right = "" },
					component_separators = { left = "", right = "" },
				},
				sections = {
					lualine_x = {
						{'encoding', padding = {left = 30}},
						'fileformat',
						'filetype',
					}
				}
			})
		end,
	},
	{
		"folke/noice.nvim",
		config = function()
			require("noice").setup({
				cmdline = {
					enabled = true,
					view = "cmdline_popup",
					format = {
						cmdline = {pattern = "^:", icon = "", lang = "vim"},
						search_down = { kind = "search", pattern = "^/", icon = " ", lang = "regex" },
						search_up = { kind = "search", pattern = "^%?", icon = " ", lang = "regex" },
					},
				},
				messages = { enabled = false }, -- disable messages
				popupmenu = { enabled = false }, -- keep completion simple (use cmp if you want)
				notify = { enabled = false }, -- disable notifications
				lsp = { progress = { enabled = false }, signature = { enabled = false }, hover = { enabled = false } },
				views = {
					cmdline_popup = {
						position = {
							row = "25%",   -- upper quarter of the screen
							col = "50%",
						},
						size = {
							width = 60,
							height = "auto",
						},
						border = {
							style = "rounded",
							padding = { 0, 1 },
						},
						win_options = {
							winhighlight = {
								Normal = "NormalFloat",
								FloatBorder = "FloatBorder",
							},
						},
					},
				},
			})
		end,
	},
})

vim.cmd.colorscheme("blue_pink_theme")

require("stdheader")
