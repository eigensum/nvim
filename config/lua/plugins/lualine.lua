-- lualine.nvim
-- a status line for neovim
-- Github: https://github.com/nvim-lualine/lualine.nvim
local function spell_check()
	if not vim.opt.spell:get() then
		return "None"
	end

	local langs = vim.opt.spelllang:get()

	if not langs or #langs == 0 then
		return "None"
	end

	local name_map = {
		en = "English",
		de = "German",
	}

	local display = {}
	for _, lang in ipairs(langs) do
		table.insert(display, name_map[lang] or lang)
	end

	return table.concat(display, ", ")
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
