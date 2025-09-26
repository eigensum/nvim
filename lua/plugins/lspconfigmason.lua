-- mason-lspconfig
-- Manager for configuring lsps with mason.
-- Languages: C/C++, Python, Lua, Rust, Zig, Java, OCamel, Latex
-- Github: https://github.com/mason-org/mason-lspconfig.nvim

local function setup_mason_lspconfig()
	local lsps = require("configs.lsps")
	require("mason-lspconfig").setup({ ensure_installed = lsps, automatic_installation = true })
	local lspconfig = require("lspconfig")
	local servers_local = { "jdtls", "nil_ls" }

	for _, server in ipairs(servers_local) do
		lspconfig[server].setup({})
	end
end

local mason_lspconfig_settings = { "williamboman/mason-lspconfig.nvim", config = setup_mason_lspconfig }

return mason_lspconfig_settings
