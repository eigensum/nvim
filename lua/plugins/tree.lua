-- nvim-tree
-- tree is a file explorer for neovim
-- Github: https://github.com/nvim-tree/nvim-tree.lua

local function setup_tree()
	require("nvim-tree").setup({
		view = { width = 45, side = "left" },
		renderer = { icons = { show = { git = true, folder = true, file = true } } },
		filters = { dotfiles = false },
	})
end

local tree_settings = {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = setup_tree,
}

return tree_settings
