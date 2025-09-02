return {
	"folke/snacks.nvim",
	opts = {
		dashboard = {
			preset = {
				pick = function(cmd, opts)
					return vim.cmd(cmd)
				end,
				keys = {
					{ icon = " ", key = "q", desc = "Quit", action = ":qa" },
				},
			},
			sections = {
				header = [[
   ████████  ████████ 
  ██               ██ 
 ██        █████████ 
██        ██          
████████ █████████NVIM
				]],
				{
					text = {
						{" ", hl = "SnacksDashboardIcon"},
						{"Fuzziez", hl = "SnacksDashboardDesc", width = 50},
						{"f", hl = "snacksDashboardKey"},
					},
					action = "<Leader>ff",
					key = "f"
				},
				{
					text = {
						{"󰱼 ", hl = "SnacksDashboardIcon"},
						{"RIPGrep", hl = "SnacksDashboardDesc", width = 50},
						{"g", hl = "snacksDashboardKey"},
					},
					action = "<Leader>fg",
					key = "g"
				},
				{
					text = {
						{"󱏒 ", hl = "SnacksDashboardIcon"},
						{"Explore file tree", hl = "SnacksDashboardDesc", width = 50},
						{"t", hl = "snacksDashboardKey"},
					},
					action = "<Leader>nt",
					key = "t"
				},
			},
		},
	},
}
