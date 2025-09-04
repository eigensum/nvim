-- which-key.nvim
-- popup for keybindings
-- Github: https://github.com/folke/which-key.nvim

local whichkey_settings = {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = { preset = "helix", notify = true },
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},
}
return whichkey_settings
