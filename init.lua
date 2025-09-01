vim.cmd.colorscheme("blue_pink_theme")
require("set")
require("stdheader")
require("classes")
require("config.lazy")

--[[require("set")
require("lazy").setup({
	"mfussenegger/nvim-dap",
	"rcarriga/nvim-dap-ui",
	"mfussenegger/nvim-lint",
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
	},
})
]]
