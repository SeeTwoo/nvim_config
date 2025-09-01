return {
	{
		"windwp/nvim-autopairs",
		config = function ()
			local npairs = require("nvim-autopairs")
			local Rule = require("nvim-autopairs.rule")

			npairs.setup({
				disable_filetype = {"TelescopePrompt", "vim"},
				enable_bracket_in_quote = false,
				enable_check_bracket_line = false,
			})

			npairs.clear_rules()
			npairs.add_rules({
				Rule("{", "}")
			})
		end,
	},
}
