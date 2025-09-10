-- conform-nvim
-- a lightweight formatter plugin
-- Github: https://github.com/stevearc/conform.nvim?tab=readme-ov-file#formatters

local function setup_conform()
	require("conform").setup({
		formatters_by_ft = {
			lua = { "stylua" },
			c = { "clang_format" },
			cpp = { "clang_format" },
			rust = { "rustfmt" },
			python = { "black" },
			zig = { "zigfmt" },
			nix = { "nixfmt" },
			ocaml = { "ocamlformat" },
			java = { "google-java-format" },
			markdown = { "mdformat" },
			tex = { "tex-fmt" },
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
