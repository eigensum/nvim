-- alpha-nvim
-- Alpha is a programmable greeter for neovim
-- Github: https://github.com/goolord/alpha-nvim?tab=readme-ov-file

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
		dashboard.button("f", "󰥨 Find file", ":Telescope find_files<CR>"),
		dashboard.button("r", "󱋡 Recent files", ":Telescope oldfiles<CR>"),
		dashboard.button("g", "󰱼 Grep text", ":Telescope live_grep<CR>"),
		dashboard.button("v", " Git repository", ":LazyGit<CR>"),
		dashboard.button("n", " New file", ":ene <BAR> startinsert<CR>"),
		dashboard.button("c", " Config", ":edit $MYVIMRC<CR>"),
		dashboard.button("q", "󱊷 Quit", ":qa<CR>"),
	}

	dashboard.section.footer.val =
		"𝔸𝕝𝕝 𝕞𝕖𝕟 𝕕𝕣𝕖𝕒𝕞: 𝕓𝕦𝕥 𝕟𝕠𝕥 𝕖𝕢𝕦𝕒𝕝𝕝𝕪."

	alpha.setup(dashboard.opts)
end