local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.termguicolors = true
vim.opt.wrap = false

vim.g.mapleader = " "

require("lazy").setup({
	{ require("plugins.treesitter") },
	{ require("plugins.telescope") },
	{ require("plugins.lualine") },
	{ require("plugins.autopairs") },
	{ require("plugins.catppuccin") },
	{ require("plugins.alpha") },
	{ require("plugins.tree") },
	{ require("plugins.conform") },
	{ require("plugins.lazygit") },
	{ require("plugins.lspconfignvim") },
	{ require("plugins.cmp") },
	{ require("plugins.navbuddy") },
	{ require("plugins.whichkey") },
	{ require("plugins.gen") },
	{ require("plugins.trouble") },
	{ require("plugins.todo") },
	{ require("plugins.urlopen") },
	{ require("plugins.barbar") },
	{ require("plugins.rendermarkdown") },
})
