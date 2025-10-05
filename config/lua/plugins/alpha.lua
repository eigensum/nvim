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

math.randomseed(os.time())

local qoutes = {
	"𝔸𝕝𝕝 𝕞𝕖𝕟 𝕕𝕣𝕖𝕒𝕞: 𝕓𝕦𝕥 𝕟𝕠𝕥 𝕖𝕢𝕦𝕒𝕝𝕝𝕪.",
	"𝔻𝕚𝕖 𝕎𝕚𝕤𝕤𝕖𝕟𝕤𝕔𝕙𝕒𝕗𝕥 𝕙𝕒𝕥 𝕜𝕖𝕚𝕟𝕖 𝕞𝕠𝕣𝕒𝕝𝕚𝕤𝕔𝕙𝕖 𝔻𝕚𝕞𝕖𝕟𝕤𝕚𝕠𝕟.",
	"𝔼𝕣𝕚𝕥𝕚𝕤 𝕤𝕚𝕔𝕦𝕥 𝕕𝕖𝕦𝕤 𝕤𝕔𝕚𝕖𝕟𝕥𝕖𝕤 𝕓𝕠𝕟𝕦𝕞 𝕖𝕥 𝕞𝕒𝕝𝕦𝕞",
	"ℕ𝕦𝕣 𝕕𝕚𝕖 𝕎𝕖𝕣𝕕𝕖𝕟𝕕𝕖𝕟 𝕤𝕚𝕟𝕕.",
}

local length = #qoutes

local index = math.random(length)

dashboard.section.footer.val = qoutes[index]

alpha.setup(dashboard.opts)
