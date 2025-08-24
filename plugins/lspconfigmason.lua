local function setup_mason_lspconfig()
	require("mason-lspconfig").setup({
		ensure_installed = { "lua_ls", "clangd", "rust_analyzer" },
		automatic_installation = true,
	})
end

local mason_lspconfig_settings = { "williamboman/mason-lspconfig.nvim", config = setup_mason_lspconfig }

return mason_lspconfig_settings
