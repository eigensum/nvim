-- treesitter
-- configurations manager for neovim, especially useful for parsers
--Github: https://github.com/nvim-treesitter/nvim-treesitter


require('nvim-treesitter.configs').setup {
  parser_install_dir = vim.fn.stdpath("data") .. "/treesitter",
  ensure_installed = "maintained",
  highlight = { enable = true },
  indent = { enable = true },
}

vim.opt.runtimepath:append(vim.fn.stdpath("data") .. "/treesitter")