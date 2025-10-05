-- treesitter
-- configurations manager for neovim, especially useful for parsers
--Github: https://github.com/nvim-treesitter/nvim-treesitter

require("nvim-treesitter.install").prefer_git = true 
require("nvim-treesitter.install").compilers = { "gcc" } 

require("nvim-treesitter.configs").setup({
  ensure_installed = "maintained",
  highlight = { enable = true },
  indent = { enable = true },
})

require("nvim-treesitter.install").parser_install_dir = vim.fn.stdpath("data") .. "/site/treesitter_parsers"
