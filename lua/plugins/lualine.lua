-- lualine.nvim
-- a status line for neovim
-- Github: https://github.com/nvim-lualine/lualine.nvim

local function setup_lualine()
	require("lualine").setup({
		options = {
			theme = "catppuccin",
			section_seperators = { left = " ", right = " " },
			component_seperators = { left = " ", right = " " },
			globalstatus = true,
		},
		sections = {
			lualine_a = { "mode" },
			lualine_b = { "branch", "diff" },
			lualine_c = { "filename" },
			lualine_x = { "encoding", "filetype" },
			lualine_y = { "lsp_status" },
			lualine_z = { "location" },
		},
	})
end

local lualine_settings =
	{ "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" }, config = setup_lualine }

return lualine_settings
