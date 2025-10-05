-- treesitter
-- configurations manager for neovim, especially useful for parsers
--Github: https://github.com/nvim-treesitter/nvim-treesitter

require("nvim-treesitter.configs").setup({
  ensure_installed = "maintained",
  highlight = { enable = true },
  indent = { enable = true },
})