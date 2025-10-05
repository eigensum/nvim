-- treesitter
-- configurations manager for neovim, especially useful for parsers
--Github: https://github.com/nvim-treesitter/nvim-treesitter

require("nvim-treesitter.install").prefer_git = true
require("nvim-treesitter.configs").setup({
	highlight = { enable = true },
	indent = { enable = true },
})

