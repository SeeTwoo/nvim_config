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
