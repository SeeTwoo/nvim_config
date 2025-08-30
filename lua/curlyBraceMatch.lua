local function curlyBraceMatch ()
	local curlyBraces = {
		"{\n\n}" .. vim.api.nvim_replace_termcodes("<Left>"
	}
	return curlyBraces
end,
	
vim.keymap.set("i", "{", curlyBraceMatch, expr = true)
