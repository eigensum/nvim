-- conform-nvim
-- a lightweight formatter plugin
-- Github: https://github.com/stevearc/conform.nvim?tab=readme-ov-file#formatters

require("conform").setup({
	formatters_by_ft = require("configs.formatters"),
	format_on_save = { timeout_ms = 500, lsp_fallback = true },
})