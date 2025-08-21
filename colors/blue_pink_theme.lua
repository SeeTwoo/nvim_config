vim.opt.termguicolors = true

local	function MyHighlighting()
	vim.api.nvim_set_hl(0, "Statement", {fg = "DeepPink"})
	vim.api.nvim_set_hl(0, "PreProc", {fg = "LightBlue"})
	vim.api.nvim_set_hl(0, "Type", {fg = "Cyan"})
	vim.api.nvim_set_hl(0, "Comment", {fg = "SteelBlue"})
	vim.api.nvim_set_hl(0, "LineNr", {fg = "SteelBlue"})

	vim.api.nvim_set_hl(0, "Character", {fg = "Lavender"})
	vim.api.nvim_set_hl(0, "Special", {fg = "Plum"})
	vim.api.nvim_set_hl(0, "String", {fg = "Thistle"})
	vim.api.nvim_set_hl(0, "Number", {fg = "Violet"})
	vim.api.nvim_set_hl(0, "Macro", {fg = "Orchid"})

	vim.api.nvim_set_hl(0, "ColorColumn", {bg = "DimGrey"})
	vim.api.nvim_set_hl(0, "Normal", {bg = "Black"})
end

MyHighlighting()
