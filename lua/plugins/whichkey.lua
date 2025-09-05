-- which-key.nvim
-- popup for keybindings
-- Github: https://github.com/folke/which-key.nvim

local function setup_whichkey()
	local wk = require("which-key")
	wk.add({
		{
			"<leader>e",
			"<cmd>NvimTreeToggle<cr>",
			desc = "File Tree",
			icon = { icon = "", color = "blue" },
		},
		{ "<leader>tt", "<cmd>terminal<cr>", desc = "Terminal", icon = { icon = "", color = "green" } },
		{ "<leader>gg", "<cmd>LazyGit<cr>", desc = "Git", icon = { icon = "", color = "red" } },
		{
			"<leader>ff",
			"<cmd>Telescope find_files<cr>",
			desc = "Find Files",
			icon = { icon = "󰥨", color = "blue" },
		},
		{
			"<leader>fg",
			"<cmd>Telescope git_files<cr>",
			desc = "Find Git Files",
			icon = { icon = "", color = "red" },
		},
		{ "<leader>fw", "<cmd>Telescope live_grep<cr>", desc = "Find Code", icon = { icon = "󱩾", color = "blue" } },
		{ "<leader>ft", "<cmd>TodoTelescope<cr>", desc = "Find Tag", icon = { icon = "󱤇", color = "cyan" } },
		{ "<leader>xd", vim.lsp.buf.definition, desc = "Go to definition", icon = { icon = "󱪗", color = "azure" } },
		{
			"<leader>xi",
			vim.lsp.buf.implementation,
			desc = "Go to implementation",
			icon = { icon = "", color = "azure" },
		},
		{ "<leader>xh", vim.lsp.buf.hover, desc = "Hover documentation", icon = { icon = "󱔗", color = "azure" } },
		{ "<leader>rn", vim.lsp.buf.rename, desc = "Rename symbol", icon = { icon = "󰑕", color = "azure" } },
		{
			"<leader>xx",
			"<cmd>Trouble diagnostics toggle<cr>",
			desc = "Diagnostics (Trouble)",
			icon = { icon = "", color = "azure" },
		},
		{ "<leader>ml", "<cmd>Lazy<cr>", desc = "Lazy", icon = { icon = "", color = "orange" } },
		{ "<leader>mm", "<cmd>Mason<cr>", desc = "Mason", icon = { icon = "󰢷", color = "orange" } },
	})
end

local whichkey_settings = {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = { preset = "helix", notify = true },
	config = setup_whichkey,
}
return whichkey_settings
