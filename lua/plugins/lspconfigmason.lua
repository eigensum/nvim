-- mason-lspconfig
-- Manager for configuring lsps with mason.
-- Languages: C/C++, Python, Lua, Rust, Zig, Java, OCamel, Latex
-- Github: https://github.com/mason-org/mason-lspconfig.nvim

local function setup_mason_lspconfig()
	require("mason-lspconfig").setup({
		ensure_installed = {
			"lua_ls",
			"clangd",
			"rust_analyzer",
			"zls",
			"java_language_server",
			"texlab",
			"ocamllsp",
			"pyrefly",
			"pylsp",
		},
		automatic_installation = true,
	})
end

local mason_lspconfig_settings = { "williamboman/mason-lspconfig.nvim", config = setup_mason_lspconfig }

return mason_lspconfig_settings
