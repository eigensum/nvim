-- catppuccin
-- catpuccin is a colorscheme for neovim
-- Github: https://github.com/catppuccin/nvim

require("catppuccin").setup({
	compile_path = vim.fn.stdpath("cache") .. "/catppuccin",
	flavour = "mocha",
	auto_integrations = true,
})

vim.cmd.colorscheme("catppuccin")