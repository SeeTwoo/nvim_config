return {
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("lualine").setup({
				options = {
					theme = require("ai_studio_line_theme"),
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
}
