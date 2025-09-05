vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.scrolloff = 25
vim.opt.wrap = false

vim.opt.guicursor = ""
vim.opt.termguicolors = true

vim.opt.showmode = false
vim.opt.showcmd = false
vim.opt.ruler = false
--vim.opt.cmdheight = 0
--
vim.opt.hlsearch = false

vim.g.mapleader = " "

vim.api.nvim_create_augroup("conditionalColumn", {clear = true})

vim.api.nvim_create_autocmd("FileType", {
	group = "conditionalColumn",
	pattern = {"c", "cpp"},
	callback = function()
		vim.opt_local.colorcolumn = "81"
	end,
})

--[[vim.api.nvim_create_augroup("HideCursorInUI", {clear = true})

vim.api.nvim_create_autocmd("FileType", {
	group = "HideCursorInUI",
	pattern = {"dashboard", "neo-tree"},
	callback = function()
		vim.api.nvim_out_write("\x1b[?25l")
	end,
})]]
