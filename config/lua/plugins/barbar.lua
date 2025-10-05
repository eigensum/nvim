vim.g.barbar_auto_setup = false

require("barbar").setup {
  auto_hide = 1,
  clickable = false,
  insert_at_end = true,
}

require("nvim-web-devicons").setup()
require("gitsigns").setup()