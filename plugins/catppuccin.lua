local function setup_catppuccin()
	require("catppuccin").setup({
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
