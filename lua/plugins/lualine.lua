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
			lualine_z = { "location" },
		},
	})
end

local lualine_settings =
	{ "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" }, config = setup_lualine }

return lualine_settings
