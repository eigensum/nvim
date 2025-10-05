-- render-markdown.nvim
-- an in-editor markdown renderer for neovim
-- Github: https://github.com/MeanderingProgrammer/render-markdown.nvim
require("render-markdown").setup({
  render_modes = { "n", "c", "t", "i" },
  anti_conceal = { enabled = false },
  debounce = 50,
  enabled = true,
})