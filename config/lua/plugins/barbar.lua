local barbar_settings = {
	{
		"romgrk/barbar.nvim",
		dependencies = {
			"lewis6991/gitsigns.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		init = function()
			vim.g.barbar_auto_setup = false
		end,
		opts = { auto_hide = 1, clickable = false, insert_at_end = true },
	},
}
return barbar_settings
