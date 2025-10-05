-- treesitter
-- configurations manager for neovim, especially useful for parsers
--Github: https://github.com/nvim-treesitter/nvim-treesitter

local parser_install_dir = vim.fn.stdpath("data") .. "/treesitter"

require("nvim-treesitter.install").prefer_git = true
require("nvim-treesitter.configs").setup({
  parser_install_dir = parser_install_dir,
  
  ensure_installed = {
    "lua", "vim", "vimdoc", "markdown", "bash", "python", "rust", "javascript", 
    "typescript", "html", "css", "json", "yaml", "nix", "java", "ocaml", "zig",
    "c", "cpp", "asm", "matlab", "latex"
  },
  
  auto_install = true,
  
  highlight = { enable = true },
  indent = { enable = true },
})

vim.opt.runtimepath:append(parser_install_dir)