vim.opt.termguicolors = true

local	function MyHighlighting()
	vim.api.nvim_set_hl(0, "@preproc", {fg = "LightBlue"})
	vim.api.nvim_set_hl(0, "@keyword", {fg = "DeepPink"})
	vim.api.nvim_set_hl(0, "@type", {fg = "Cyan"})
	vim.api.nvim_set_hl(0, "@function", {fg = "White"})
	vim.api.nvim_set_hl(0, "@type.builtin", {fg = "Cyan"})
	vim.api.nvim_set_hl(0, "@comment", {fg = "SteelBlue"})
	vim.api.nvim_set_hl(0, "LineNr", {fg = "SteelBlue"})
	vim.api.nvim_set_hl(0, "CursorLineNr", {fg = "SteelBlue"})

	vim.api.nvim_set_hl(0, "@character", {fg = "Lavender"})
	vim.api.nvim_set_hl(0, "@constant", {fg = "Plum"})
	vim.api.nvim_set_hl(0, "@string", {fg = "Thistle"})
	vim.api.nvim_set_hl(0, "@number", {fg = "Violet"})
	vim.api.nvim_set_hl(0, "@macro", {fg = "Orchid"})

	vim.api.nvim_set_hl(0, "Search", {fg = "Black", bg = "LightBlue"})
	vim.api.nvim_set_hl(0, "IncSearch", {fg = "Black", bg = "LightBlue"})

	vim.api.nvim_set_hl(0, "ColorColumn", {bg = "DimGrey"})
	vim.api.nvim_set_hl(0, "Normal", {bg = "Black"})
	vim.api.nvim_set_hl(0, "FloatBorder", {fg = "LightBlue"})
	vim.api.nvim_set_hl(0, "NormalFloat", {fg = "Thistle"})
end

MyHighlighting()
