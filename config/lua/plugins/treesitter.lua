-- treesitter
-- configurations manager for neovim, especially useful for parsers
--Github: https://github.com/nvim-treesitter/nvim-treesitter

local treesitter_install = require("nvim-treesitter.install")
treesitter_install.parser_install_dir = vim.fn.stdpath("data") .. "/site/treesitter_parsers"

require("nvim-treesitter.configs").setup({
  ensure_installed = {
    "lua", "vim", "vimdoc", "markdown", "bash", "python", "rust", "javascript", 
    "typescript", "html", "css", "json", "yaml", "nix", "java", "ocaml", "zig",
    "c", "cpp", "asm", "matlab", "latex"
  },
  
  auto_install = true,
  
  highlight = { enable = true },
  indent = { enable = true },
})