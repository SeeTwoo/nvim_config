return {
	"neovim/nvim-lspconfig",
	lazy = false,
	config = function()
		local lspconfig = require("lspconfig")
		local on_attach = function(_, bufnr)
			local opts = { buffer = bufnr }
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
			vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
			vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
		end
		local clangd_path = vim.fn.stdpath("data") .. "/mason/bin/clangd"
		lspconfig.clangd.setup({
			cmd = { clangd_path },
			on_attach = on_attach,
		})
		lspconfig.lua_ls.setup {
			on_attach = on_attach,
			settings = {
				Lua = {
					runtime = {
						version = "LuaJIT",  -- Neovim uses LuaJIT
					},
					diagnostics = {
						globals = { "vim" }, -- stop "vim" being underlined
					},
					workspace = {
						library = vim.api.nvim_get_runtime_file("", true), -- Neovim runtime
					},
					telemetry = {
						enable = false,
					},
				},
			},
		}
		lspconfig.rust_analyzer.setup {
			on_attach = on_attach,
		}
		vim.diagnostic.config({
			signs = false,
			underline = false,
		})
	end,
}
