local function setup_conform()
	require("conform").setup({
		formatters_by_ft = {
			lua = { "stylua" },
			c = { "clang_format" },
			cpp = { "clang_format" },
			rust = { "rustfmt" },
			python = { "black" },
		},
		format_on_save = { timeout_ms = 500, lsp_fallback = true },
	})
end

local conform_settings = {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	config = setup_conform,
}

return conform_settings
