-- which-key.nvim
-- popup for keybindings
-- Github: https://github.com/folke/which-key.nvim
-- Icons Cheat Sheet: https://www.nerdfonts.com/cheat-sheet

local function cycle_markdown_render()
	local status = require("render-markdown").get()
	if status == true then
		require("render-markdown").disable()
	else
		require("render-markdown").enable()
	end
end

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

local function jump_to_buffer()
	local key = vim.fn.getcharstr()
	if key:match("%d") then
		if key == "0" then
			return "<cmd>BufferLast<cr>"
		else
			return "<cmd>BufferGoto" .. key .. "<cr>"
		end
	end
	return ""
end

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
	{ "<leader>t", "<cmd>terminal<cr>", desc = "Terminal", icon = { icon = "", color = "green" } },
	{ "<leader>g", "<cmd>LazyGit<cr>", desc = "Git", icon = { icon = "", color = "red" } },
	{
		"<leader>n",
		jump_to_buffer,
		desc = "Jump to Tab",
		icon = { icon = "󰕅", color = "blue" },
		expr = true,
		silent = true,
	},
	{ "<leader>h", "<C-w>h", desc = "Left Split", icon = { icon = "", color = "yellow" } },
	{ "<leader>l", "<C-w>l", desc = "Right Split", icon = { icon = "", color = "yellow" } },
	{ "<leader>j", "<C-w>j", desc = "Bottom Split", icon = { icon = "", color = "yellow" } },
	{ "<leader>k", "<C-w>k", desc = "Top Split", icon = { icon = "", color = "yellow" } },
	{ "<leader>r", vim.lsp.buf.rename, desc = "Rename symbol", icon = { icon = "󰑕", color = "azure" } },
})
wk.add({
	{ "<leader>c", group = "CoPilot", icon = { icon = "", color = "purple" } },
	{ "<leader>ca", "<cmd>Gen Ask<cr>", desc = "Ask LLM", icon = { icon = "", color = "purple" } },
	{ "<leader>cc", "<cmd>Gen Change_Code<cr>", desc = "Change Code", icon = { icon = "", color = "purple" } },
	{ "<leader>ce", "<cmd>Gen Enhance_Code<cr>", desc = "Enhance Code", icon = { icon = "", color = "purple" } },
	{ "<leader>cr", "<cmd>Gen Review_Code<cr>", desc = "Review Code", icon = { icon = "", color = "purple" } },
	{ "<leader>cw", "<cmd>Gen Generate<cr>", desc = "Write Code", icon = { icon = "󰵮", color = "purple" } },
	{ "<leader>cf", "<cmd>Gen Chat<cr>", desc = "Chat with LLM", icon = { icon = "󰭻", color = "purple" } },
})
wk.add({
	{ "<leader>f", group = "Find", icon = { icon = "", color = "green" } },
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
})
wk.add({
	{ "<leader>x", group = "Utils", icon = { icon = "󱁤", color = "azure" } },
	{ "<leader>xd", vim.lsp.buf.definition, desc = "Go to definition", icon = { icon = "󱪗", color = "azure" } },
	{
		"<leader>xi",
		vim.lsp.buf.implementation,
		desc = "Go to implementation",
		icon = { icon = "", color = "azure" },
	},
	{ "<leader>xh", vim.lsp.buf.hover, desc = "Hover documentation", icon = { icon = "󱔗", color = "azure" } },
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
	{ "<leader>xn", "<cmd>Navbuddy<cr>", desc = "Navbuddy", icon = { icon = "󰎐", color = "azure" } },
	{ "<leader>xm", cycle_markdown_render, desc = "Render Markdown", icon = { icon = "", color = "azure" } },
})
wk.add({
	{ "<leader>m", group = "Managers", icon = { icon = "", color = "orange" } },
	{ "<leader>ms", cycle_languages, desc = "Cycle Spellcheckers", icon = { icon = "", color = "red" } },
})
wk.add({
	{ "<leader>b", group = "Tabs", icon = { icon = "󰓩", color = "yellow" } },
	{
		"<leader>bh",
		"<cmd>BufferMovePrevious<cr>",
		desc = "Move Tab Left",
		icon = { icon = "󰛁", color = "yellow" },
	},
	{
		"<leader>bl",
		"<cmd>BufferMoveNext<cr>",
		desc = "Move Tab Right",
		icon = { icon = "󰛂", color = "yellow" },
	},
	{ "<leader>bc", "<cmd>BufferClose<cr>", desc = "Close Tab", icon = { icon = "󰅗", color = "yellow" } },
})
wk.add({
	{ "<leader>s", group = "Splits", icon = { icon = "󰤼", color = "yellow" } },
	{ "<leader>sh", "<cmd>sp<cr>", desc = "Split Horizontal", icon = { icon = "󰯋", color = "yellow" } },
	{ "<leader>sv", "<cmd>vsp<cr>", desc = "Split Vertical", icon = { icon = "󰯌", color = "yellow" } },
	{ "<leader>sc", "<cmd>only<cr>", desc = "Close all Splits", icon = { icon = "", color = "yellow" } },
})
