local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Foreign dependencies: black, lazygit, neovim

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.termguicolors = true
vim.opt.wrap = false

vim.g.mapleader = " "

vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find Files" })
vim.keymap.set("n", "<leader>gf", "<cmd>Telescope git_files<cr>", { desc = "Find Git Files" })
vim.keymap.set("n", "<leader>lg", "<cmd>Telescope live_grep<cr>", { desc = "Live Grep" })
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", { desc = "Toggle File Tree" })
vim.keymap.set("n", "<leader>tt", "<cmd>terminal<cr>", { desc = "Terminal" })
vim.keymap.set("n", "<leader>la", "<cmd>Lazy<cr>", { desc = "Lazy" })
vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<cr>", { desc = "Git" })
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set("n", "gI", vim.lsp.buf.implementation, { desc = "Go to implementation" })
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover documentation" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })
vim.keymap.set("n", "<leader>ds", vim.lsp.buf.document_symbol, { desc = "Document Symbols" })
vim.keymap.set("n", "<leader>ge", "<cmd>:Gen<cr>")

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

local function setup_tree()
	require("nvim-tree").setup({
		view = { width = 30, side = "left" },
		renderer = { icons = { show = { git = true, folder = true, file = true } } },
		filters = { dotfiles = false },
	})
end

local function setup_catppuccin()
	require("catppuccin").setup({
		flavour = "mocha",
		integrations = {
			treesitter = true,
			telescope = true,
		},
	})
	vim.cmd.colorscheme("catppuccin")
end

local function setup_lualine()
	require("lualine").setup({
		options = {
			theme = "catppuccin",
			section_seperators = { left = " ", right = " " },
			component_seperators = { left = " ", right = " " },
			globalstatus = true,
		},
		sections = {
			lualine_a = { "mode" },
			lualine_b = { "branch", "diff" },
			lualine_c = { "filename" },
			lualine_x = { "encoding", "filetype" },
			lualine_z = { "location" },
		},
	})
end

local function setup_conform()
	require("conform").setup({
		formatters_by_ft = {
			lua = { "stylua" },
			c = { "clang_format" },
			cpp = { "clang_format" },
			rust = { "rustfmt" },
			python = { "black" },
		},
		format_on_save = { timeout_ms = 500, lsp_fallback = true },
	})
end

local function setup_mason()
	require("mason").setup()
end

local function setup_mason_lspconfig()
	require("mason-lspconfig").setup({
		ensure_installed = { "lua_ls", "clangd", "rust_analyzer" },
		automatic_installation = true,
	})
end

local function setup_nvim_lspconfig()
	local capabilities = require("cmp_nvim_lsp").default_capabilities()
	local navic = require("nvim-navic")

	local on_attach = function(client, bufnr)
		if client.server_capabilities.documentSymbolProvider then
			navic.attach(client, bufnr)
		end
	end

	vim.lsp.config("lua_ls", {
		capabilities = capabilities,
		on_attach = on_attach,
		settings = {
			Lua = {
				runtime = { version = "LuaJIT" },
				diagnostics = { globals = { "vim", "require" } },
			},
		},
	})

	vim.lsp.config("clangd", {
		capabilities = capabilities,
		on_attach = on_attach,
	})

	vim.lsp.config("rust_analyzer", {
		capabilities = capabilities,
		on_attach = on_attach,
	})
end

require("lazy").setup({
	"nvim-treesitter/nvim-treesitter",
	"nvim-telescope/telescope.nvim",
	{ "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" }, config = setup_lualine },
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = setup_alpha,
	},
	{ "windwp/nvim-autopairs", event = "InsertEnter", config = true },
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = setup_catppuccin,
	},
	{
		"goolord/alpha-nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = setup_alpha,
	},
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = setup_tree,
	},
	{
		"stevearc/conform.nvim",
		event = { "BufWritePre" },
		config = setup_conform,
	},
	{ "kdheepak/lazygit.nvim", requires = "nvim-lua/plenary.nvim" },
	{ "williamboman/mason.nvim", build = ":MasonUpdate", config = setup_mason },
	{ "williamboman/mason-lspconfig.nvim", config = setup_mason_lspconfig },
	{ "neovim/nvim-lspconfig", config = setup_nvim_lspconfig },
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",
		},
		config = function()
			local cmp = require("cmp")
			local luasnip = require("luasnip")

			cmp.setup({
				snippet = {
					expand = function(args)
						luasnip.lsp_expand(args.body)
					end,
				},
				mapping = cmp.mapping.preset.insert({
					["<C-Space>"] = cmp.mapping.complete(),
					["<CR>"] = cmp.mapping.confirm({ select = true }),
					["<Tab>"] = cmp.mapping(function(fallback)
						if cmp.visible() then
							cmp.select_next_item()
						elseif luasnip.expand_or_jumpable() then
							luasnip.expand_or_jump()
						else
							fallback()
						end
					end, { "i", "s" }),
					["<S-Tab>"] = cmp.mapping(function(fallback)
						if cmp.visible() then
							cmp.select_prev_item()
						elseif luasnip.jumpable(-1) then
							luasnip.jump(-1)
						else
							fallback()
						end
					end, { "i", "s" }),
				}),
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "luasnip" },
				}, {
					{ name = "buffer" },
					{ name = "path" },
				}),
			})
		end,
	},
	{
		"SmiteshP/nvim-navic",
		dependencies = { "neovim/nvim-lspconfig" },
	},
	{
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
	},
	{
		"David-Kunz/gen.nvim",
		opts = {
			model = "gemma3:12b",
			quit_map = "q",
			retry_map = "<c-r>",
			accept_map = "<c-cr>",
			host = "localhost",
			port = "11434",
			display_mode = "float",
			show_prompt = false,
			show_model = false,
			no_auto_close = false,
			file = false,
			hidden = false,
			init = function(options)
				pcall(io.popen, "ollama serve > /dev/null 2>&1 &")
			end,
			command = function(options)
				local body = { model = options.model, stream = true }
				return "curl --silent --no-buffer -X POST http://"
					.. options.host
					.. ":"
					.. options.port
					.. "/api/chat -d $body"
			end,
			result_filetype = "markdown",
			debug = false,
		},
	},
})
