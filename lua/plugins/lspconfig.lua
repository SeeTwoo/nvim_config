return {
	"neovim/nvim-lspconfig",
	lazy = false,
	config = function()
		vim.api.nvim_create_autocmd("LspAttach", {
			callback = function(args)
				local bufnr = args.buf
				local opts = {buffer = bufnr}
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
				vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
				vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
			end,
		})

		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		local clangd_path = vim.fn.stdpath("data") .. "/mason/bin/clangd"
		vim.lsp.config("clangd", {
			cmd = {clangd_path},
			capabilities = capabilities,
		})

		vim.lsp.config("lua_ls", {
			capabilities = capabiilties,
			settings = {
				lua = {
					runtime = { version = "LuaJIT"},
					diagnostics = { globals = { "vim" }},
					workspace = {library = vim.api.nvim_get_runtime_file("", true)},
					telemetry = {enable = false},
				},
			},
		})

		vim.lsp.config("rust_analyzer", {
			capabilities = capabilities,
		})

		vim.lsp.enable({ "clangd", "lua_ls", "rust_analyzer"})

		vim.diagnostic.config({
			signss = false,
			undelnie = false,
		})
	end,
}
