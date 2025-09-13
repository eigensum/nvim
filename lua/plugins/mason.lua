-- mason.nvim
-- package manager for neovim
-- Github: https://github.com/mason-org/mason.nvim

local function setup_mason()
	require("mason").setup({})
end

local mason_settings = {
	"williamboman/mason.nvim",

	build = ":MasonUpdate",
	config = setup_mason,
}

return mason_settings
