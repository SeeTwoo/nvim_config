return {
	{
		"nvim-lualine/lualine.nvim",
		config = function()
      local theme
      if machine == "hypr_laptop" then
        theme = "frosted_berries_lualine"
      else
        theme = "blue_pink_lualine_theme"
      end
			require("lualine").setup({
				options = {
					theme = require(theme),
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
