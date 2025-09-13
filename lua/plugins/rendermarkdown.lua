-- render-markdown.nvim
-- an in-editor markdown renderer for neovim
-- Github: https://github.com/MeanderingProgrammer/render-markdown.nvim

local function setup_markdown_render()
	require("render-markdown").setup({
		render_modes = { "n", "c", "t", "i" },
		anti_conceal = { enabled = false },
		debounce = 50,
		enabled = true,
	})
end

local rendermarkdown_settings = {
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
	---@module 'render-markdown'
	---@type render.md.UserConfig
	opts = {},
	config = setup_markdown_render,
}

return rendermarkdown_settings
