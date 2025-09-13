-- lspconfig-nvim
-- Simple lsp configs for neovim
-- Github: https://github.com/neovim/nvim-lspconfig

local function setup_nvim_lspconfig()
	local capabilities = require("cmp_nvim_lsp").default_capabilities()
	local navic = require("nvim-navic")

	local on_attach = function(client, bufnr)
		if client.server_capabilities.documentSymbolProvider then
			navic.attach(client, bufnr)
		end
	end

	vim.lsp.config("lua_ls", {
		capabilities = capabilities,
		on_attach = on_attach,
		settings = {
			Lua = {
				runtime = { version = "LuaJIT" },
				diagnostics = { globals = { "vim", "require" } },
			},
		},
	})

	vim.lsp.config("clangd", {
		capabilities = capabilities,
		on_attach = on_attach,
	})

	vim.lsp.config("rust_analyzer", {
		capabilities = capabilities,
		on_attach = on_attach,
	})
end

local nvim_lspconfig_settings = { "neovim/nvim-lspconfig", config = setup_nvim_lspconfig }
return nvim_lspconfig_settings
