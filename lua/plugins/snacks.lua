return {
	{
		"folke/snacks.nvim",
		config = function()
			require("snacks").setup({
				dashboard = {
					preset = {
						pick = function(cmd, opts)
							return vim.cmd(cmd)
						end,
						header = [[
						    ████████  ████████
						   ██               ██
						  ██        █████████ 
						 ██        ██         
						 ████████ █████████   
						]],
						keys = {
							{ icon = " ", key = "q", desc = "Quit", action = ":qa" },
						}
					},
				},
				indent = {
					enabled = true,
					char = "|",
				},
			})
		end,
	},
}
