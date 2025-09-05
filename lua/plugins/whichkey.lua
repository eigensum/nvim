-- which-key.nvim
-- popup for keybindings
-- Github: https://github.com/folke/which-key.nvim

local function cycle_languages()
	local active = vim.opt.spell:get()
	local current = vim.opt.spelllang:get()[1]
	if not active then
		vim.opt.spell = true
		vim.opt.spelllang = "en"
		return
	end
	if current == "en" then
		vim.opt.spelllang = "de"
		return
	end
	if current == "de" then
		vim.opt.spell = false
		return
	end
end
local function setup_whichkey()
	local wk = require("which-key")
	local opts = { preset = "helix", notify = true }
	wk.setup(opts)
	wk.add({
		{
			"<leader>e",
			"<cmd>NvimTreeToggle<cr>",
			desc = "File Tree",
			icon = { icon = "", color = "blue" },
		},
		{ "<leader>o", "<cmd>URLOpenUnderCursor<cr>", desc = "Open URL", icon = { icon = "", color = "cyan" } },
		{ "<leader>tt", "<cmd>terminal<cr>", desc = "Terminal", icon = { icon = "", color = "green" } },
		{ "<leader>gg", "<cmd>LazyGit<cr>", desc = "Git", icon = { icon = "", color = "red" } },
		{ "<leader>ga", "<cmd>Gen Ask<cr>", desc = "Ask LLM", icon = { icon = "", color = "purple" } },
		{ "<leader>gc", "<cmd>Gen Change_Code<cr>", desc = "Change Code", icon = { icon = "", color = "purple" } },
		{ "<leader>ge", "<cmd>Gen Enhance_Code<cr>", desc = "Enhance Code", icon = { icon = "", color = "purple" } },
		{ "<leader>gr", "<cmd>Gen Review_Code<cr>", desc = "Review Code", icon = { icon = "", color = "purple" } },
		{ "<leader>gw", "<cmd>Gen Generate<cr>", desc = "Write Code", icon = { icon = "󰵮", color = "purple" } },
		{ "<leader>gf", "<cmd>Gen Chat<cr>", desc = "Chat with LLM", icon = { icon = "󰭻", color = "purple" } },
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
		{
			"<leader>xs",
			"<cmd>Trouble symbols toggle<cr>",
			desc = "Symbols (Trouble)",
			icon = { icon = "󱉯", color = "azure" },
		},
		{ "<leader>xn", "<cmd>Navbuddy<cr>", desc = "Navbuddy", icon = { icon = "󰎐", color = "blue" } },
		{ "<leader>ml", "<cmd>Lazy<cr>", desc = "Lazy", icon = { icon = "", color = "orange" } },
		{ "<leader>mm", "<cmd>Mason<cr>", desc = "Mason", icon = { icon = "󰢷", color = "orange" } },
		{ "<leader>s", cycle_languages, desc = "Cycle Spellcheckers", icon = { icon = "", color = "red" } },
	})
end

local whichkey_settings = {
	"folke/which-key.nvim",
	event = "VeryLazy",
	config = setup_whichkey,
}
return whichkey_settings
