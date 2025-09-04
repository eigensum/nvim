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
-- TODO: rework shortcuts
-- TODO: trouble lsp toggle, trouble Symbols toggle
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find Files" })
vim.keymap.set("n", "<leader>gf", "<cmd>Telescope git_files<cr>", { desc = "Find Git Files" })
vim.keymap.set("n", "<leader>lg", "<cmd>Telescope live_grep<cr>", { desc = "Live Grep" })
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", { desc = "Toggle File Tree" })
vim.keymap.set("n", "<leader>tt", "<cmd>terminal<cr>", { desc = "Terminal" })
vim.keymap.set("n", "<leader>la", "<cmd>Lazy<cr>", { desc = "Lazy" })
vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<cr>", { desc = "Git" })
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set("n", "<leader>gI", vim.lsp.buf.implementation, { desc = "Go to implementation" })
vim.keymap.set("n", "<leader>K", vim.lsp.buf.hover, { desc = "Hover documentation" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })
vim.keymap.set("n", "<leader>ds", vim.lsp.buf.document_symbol, { desc = "Document Symbols" })
vim.keymap.set("n", "<leader>ge", "<cmd>:Gen<cr>")
vim.keymap.set("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Diagnostics (Trouble)" })

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
	{ require("plugins.mason") },
	{ require("plugins.lspconfigmason") },
	{ require("plugins.lspconfignvim") },
	{ require("plugins.cmp") },
	{ require("plugins.navbuddy") },
	{ require("plugins.whichkey") },
	{ require("plugins.gen") },
	{ require("plugins.trouble") },
	{ require("plugins.todo") },
})
