-- nvim-navbuddy
-- breadcrumbs popupferature for neovim
-- Github: https://github.com/hasansujon786/nvim-navbuddy

local navic_settings = {
	"neovim/nvim-lspconfig",
	dependencies = {
		{
			"SmiteshP/nvim-navbuddy",
			dependencies = {
				"SmiteshP/nvim-navic",
				"MunifTanjim/nui.nvim",
			},
			opts = { lsp = { auto_attach = true } },
		},
	},
}
return navic_settings
