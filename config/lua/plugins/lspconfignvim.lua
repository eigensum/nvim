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

	-- Configure LSPs
	local servers = require("configs.lsps")

	for server, opts in pairs(servers) do
		vim.lsp.config.setup(server, {
			capabilities = capabilities,
			on_attach = on_attach,
			settings = opts,
		})
	end
end

local nvim_lspconfig_settings = { "neovim/nvim-lspconfig", config = setup_nvim_lspconfig }
return nvim_lspconfig_settings
