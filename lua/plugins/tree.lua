local function setup_tree()
	require("nvim-tree").setup({
		view = { width = 30, side = "left" },
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
