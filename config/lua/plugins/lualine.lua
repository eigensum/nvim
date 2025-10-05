-- lualine.nvim
-- a status line for neovim
-- Github: https://github.com/nvim-lualine/lualine.nvim

local function spell_check()
	local language = vim.opt.spelllang:get()[1]
	local active = vim.opt.spell:get()
	if not active then
		return "None"
	end
	if language == "en" then
		return "English"
	elseif language == "de" then
		return "German"
	else
		return language
	end
end
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
			lualine_c = { "filename", spell_check },
			lualine_x = { "encoding", "filetype" },
			lualine_y = { "lsp_status" },
			lualine_z = { "location" },
		},
	})

