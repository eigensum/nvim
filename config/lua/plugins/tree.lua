-- nvim-tree
-- tree is a file explorer for neovim
-- Github: https://github.com/nvim-tree/nvim-tree.lua

require("nvim-tree").setup({
  view = { width = 45, side = "left" },
  renderer = { icons = { show = { git = true, folder = true, file = true } } },
  filters = { dotfiles = false },
})