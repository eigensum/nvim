-- treesitter
-- configurations manager for neovim, especially useful for parsers
--Github: https://github.com/nvim-treesitter/nvim-treesitter

local treesitter_install = require("nvim-treesitter.install")
treesitter_install.parser_install_dir = vim.fn.stdpath("data") .. "/site/treesitter_parsers"

require("nvim-treesitter.configs").setup({
  ensure_installed = "maintained",
  highlight = { enable = true },
  indent = { enable = true },
})
