vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.termguicolors = true
vim.opt.wrap = false

vim.g.mapleader = " "

require("plugins.treesitter")
require("plugins.telescope")
require("plugins.lualine")
require("plugins.autopairs")
require("plugins.catppuccin")
require("plugins.alpha")
require("plugins.tree")
require("plugins.conform")
require("plugins.lazygit")
require("plugins.lspconfignvim")
require("plugins.cmp")
require("plugins.navbuddy")
require("plugins.whichkey")
require("plugins.gen")
require("plugins.trouble")
require("plugins.todo")
require("plugins.urlopen")
require("plugins.barbar")
require("plugins.rendermarkdown")
