-- catppuccin
-- catpuccin is a colorscheme for neovim
-- Github: https://github.com/catppuccin/nvim

local function setup_catppuccin()
	require("catppuccin").setup({
		compile_path = vim.fn.stdpath("cache") .. "/catppuccin",
		flavour = "mocha",
		auto_integrations = true,
	})
	vim.cmd.colorscheme("catppuccin")
end

local catppuccin_settings = {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = setup_catppuccin,
}

return catppuccin_settings
