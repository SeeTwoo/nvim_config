return {
	"snacks.nvim",
	opts = {
		dashboard = {
			preset = {
--[[				header = [[
        ██╗      █████╗ ███████╗██╗   ██╗██╗   ██╗██╗███╗   ███╗          Z
        ██║     ██╔══██╗╚══███╔╝╚██╗ ██╔╝██║   ██║██║████╗ ████║      Z    
        ██║     ███████║  ███╔╝  ╚████╔╝ ██║   ██║██║██╔████╔██║   z       
        ██║     ██╔══██║ ███╔╝    ╚██╔╝  ╚██╗ ██╔╝██║██║╚██╔╝██║ z         
        ███████╗██║  ██║███████╗   ██║    ╚████╔╝ ██║██║ ╚═╝ ██║           
        ╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝     ╚═══╝  ╚═╝╚═╝     ╚═╝           
 ]]--,
        -- stylua: ignore
        ---@type snacks.dashboard.Item[]
				header = [[
   ████████  ████████ 
  ██               ██ 
 ██        █████████ 
██        ██          
████████ █████████NVIM
				]],
				keys = {
					{ icon = " ", key = "f", desc = "Find File", action = "<Leader>ff" },
					{ icon = " ", key = "g", desc = "Find Text", action = "<Leader>fg" },
					{ icon = "󰙅 ", key = "t", desc = "Browse tree", action = "<Leader>nt" },
					{ icon = " ", key = "q", desc = "Quit", action = ":qa" },
				},
			},
		},
	},
}
