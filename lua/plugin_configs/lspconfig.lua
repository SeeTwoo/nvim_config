
local M = {}

function M.setup()
	local lspconfig = require("lspconfig")

	local on_attach = function(_, bufnr)
		local opts = { buffer = bufnr }
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
		vim.keymap.set("n", "gr", vim.lsp.buf.reference, opts)
	end

	-- full path to clangd from mason
	local clangd_path = vim.fn.stdpath("data") .. "/mason/bin/clangd"

	lspconfig.clangd.setup({
		cmd = { clangd_path },
		on_attach = on_attach,
	})
	lspconfig.lua_ls.setup {
		on_attach = on_attach,
	}
	lspconfig.rust_analyzer.setup {
		on_attach = on_attach,
	}
end

return M
