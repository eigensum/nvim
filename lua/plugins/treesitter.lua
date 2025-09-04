-- treesitter
-- configurations manager for neovim, especially useful for parsers
--Github: https://github.com/nvim-treesitter/nvim-treesitter

local function setup_treesitter()
	require("nvim-treesitter.configs").setup({
		ensure_installed = {
			"c",
			"lua",
			"vim",
			"markdown",
			"markdown_inline",
			"asm",
			"bash",
			"cmake",
			"cpp",
			"matlab",
			"make",
			"nix",
			"ocaml",
			"python",
			"rust",
			"zig",
			"yaml",
		},

		sync_install = false,

		auto_install = true,

		ignore_install = { "javascript" },
		highlight = {
			enable = true,
		},
	})
end
local treesitter_settings = {
	"nvim-treesitter/nvim-treesitter",
	config = setup_treesitter,
}

return treesitter_settings
