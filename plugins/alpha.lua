local function setup_alpha()
	local alpha = require("alpha")
	local dashboard = require("alpha.themes.dashboard")

	dashboard.section.header.val = {
		"███████╗██╗ ██████╗ ███████╗███╗   ██╗███████╗██╗   ██╗███╗   ███╗",
		"██╔════╝██║██╔════╝ ██╔════╝████╗  ██║██╔════╝██║   ██║████╗ ████║",
		"█████╗  ██║██║  ███╗█████╗  ██╔██╗ ██║███████╗██║   ██║██╔████╔██║",
		"██╔══╝  ██║██║   ██║██╔══╝  ██║╚██╗██║╚════██║██║   ██║██║╚██╔╝██║",
		"███████╗██║╚██████╔╝███████╗██║ ╚████║███████║╚██████╔╝██║ ╚═╝ ██║",
		"╚══════╝╚═╝ ╚═════╝ ╚══════╝╚═╝  ╚═══╝╚══════╝ ╚═════╝ ╚═╝     ╚═╝",
		"                       ┌┐┌┌─┐┌─┐┬  ┬┬┌┬┐                           ",
		"                       │││├┤ │ │└┐┌┘││││                           ",
		"                       ┘└┘└─┘└─┘ └┘ ┴┴ ┴                           ",
	}

	dashboard.section.buttons.val = {
		dashboard.button("f", "  Find file", ":Telescope find_files<CR>"),
		dashboard.button("r", "  Recent files", ":Telescope oldfiles<CR>"),
		dashboard.button("g", "  Grep text", ":Telescope live_grep<CR>"),
		dashboard.button("v", "⎇  Git repository", ":LazyGit<CR>"),
		dashboard.button("n", "  New file", ":ene <BAR> startinsert<CR>"),
		dashboard.button("p", "⇌  Plugins", ":Lazy<CR>"),
		dashboard.button("m", "⛏  Mason", ":Mason<CR>"),
		dashboard.button("c", "  Config", ":edit $MYVIMRC<CR>"),
		dashboard.button("q", "➥  Quit", ":qa<CR>"),
	}

	dashboard.section.footer.val =
		"𝔸𝕝𝕝 𝕞𝕖𝕟 𝕕𝕣𝕖𝕒𝕞: 𝕓𝕦𝕥 𝕟𝕠𝕥 𝕖𝕢𝕦𝕒𝕝𝕝𝕪."

	alpha.setup(dashboard.opts)
end

local alpha_settings = {
	"goolord/alpha-nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = setup_alpha,
}

return alpha_settings
