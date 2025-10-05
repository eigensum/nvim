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

local index = math.randomseed(os.time())

local qoutes = {
	"𝔸𝕝𝕝 𝕞𝕖𝕟 𝕕𝕣𝕖𝕒𝕞: 𝕓𝕦𝕥 𝕟𝕠𝕥 𝕖𝕢𝕦𝕒𝕝𝕝𝕪.",
	"𝕀𝕥 𝕒𝕚𝕟’𝕥 𝕨𝕙𝕒𝕥 𝕪𝕠𝕦 𝕕𝕠𝕟’𝕥 𝕜𝕟𝕠𝕨 𝕥𝕙𝕒𝕥 𝕘𝕖𝕥𝕤 𝕪𝕠𝕦 𝕚𝕟𝕥𝕠 𝕥𝕣𝕠𝕦𝕓𝕝𝕖.\n 𝕀𝕥’𝕤 𝕨𝕙𝕒𝕥 𝕪𝕠𝕦 𝕜𝕟𝕠𝕨 𝕗𝕠𝕣 𝕤𝕦𝕣𝕖 𝕥𝕙𝕒𝕥 𝕛𝕦𝕤𝕥 𝕒𝕚𝕟’𝕥 𝕤𝕠.",
	"𝔻𝕚𝕖 𝕎𝕚𝕤𝕤𝕖𝕟𝕤𝕔𝕙𝕒𝕗𝕥 𝕙𝕒𝕥 𝕜𝕖𝕚𝕟𝕖 𝕞𝕠𝕣𝕒𝕝𝕚𝕤𝕔𝕙𝕖 𝔻𝕚𝕞𝕖𝕟𝕤𝕚𝕠𝕟.",
	"𝔸𝕝𝕝𝕖𝕤, 𝕧𝕠𝕟 𝕕𝕖𝕞 𝕤𝕚𝕔𝕙 𝕕𝕖𝕣 𝕄𝕖𝕟𝕤𝕔𝕙 𝕖𝕚𝕟𝕖 𝕍𝕠𝕣𝕤𝕥𝕖𝕝𝕝𝕦𝕟𝕘 𝕞𝕒𝕔𝕙𝕖𝕟 𝕜𝕒𝕟𝕟, 𝕚𝕤𝕥 𝕞𝕒𝕔𝕙𝕓𝕒𝕣.",
	"𝔼𝕣𝕚𝕥𝕚𝕤 𝕤𝕚𝕔𝕦𝕥 𝕕𝕖𝕦𝕤 𝕤𝕔𝕚𝕖𝕟𝕥𝕖𝕤 𝕓𝕠𝕟𝕦𝕞 𝕖𝕥 𝕞𝕒𝕝𝕦𝕞",
	"𝔚𝔞𝔥𝔯 𝔦𝔰𝔱 𝔫𝔲𝔯 𝔡𝔢𝔯 𝔄𝔫𝔣𝔞𝔫𝔤 𝔲𝔫𝔡 𝔡𝔦𝔢 𝔉𝔢𝔲𝔢𝔯𝔷𝔞𝔫𝔤𝔢𝔫𝔟𝔬𝔴𝔩𝔢.",
	"𝚂𝚘 𝚠𝚎 𝚋𝚎𝚊𝚝 𝚘𝚗, 𝚋𝚘𝚊𝚝𝚜 𝚊𝚐𝚊𝚒𝚗𝚜𝚝 𝚝𝚑𝚎 𝚌𝚞𝚛𝚛𝚎𝚗𝚝,\n 𝚋𝚘𝚛𝚗𝚎 𝚋𝚊𝚌𝚔 𝚌𝚎𝚊𝚜𝚎𝚕𝚎𝚜𝚜𝚕𝚢 𝚒𝚗𝚝𝚘 𝚝𝚑𝚎 𝚙𝚊𝚜𝚝.",
	"𝕎𝕖𝕣𝕕𝕖 𝕦𝕞 𝕫𝕦 𝕤𝕖𝕚𝕟, 𝕤𝕖𝕚𝕟 𝕦𝕞 𝕫𝕦 𝕨𝕖𝕣𝕕𝕖𝕟,\n 𝕟𝕦𝕣 𝕕𝕚𝕖 𝕎𝕖𝕣𝕕𝕖𝕟𝕕𝕖𝕟 𝕤𝕚𝕟𝕕.",
}

dashboard.section.footer.val = qoutes[index]

alpha.setup(dashboard.opts)

