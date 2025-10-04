return {
	-- Rust (rust-analyzer)
	rust_analyzer = {
		["rust-analyzer"] = {
			cargo = { allFeatures = true },
			checkOnSave = { command = "clippy" },
		},
	},

	-- Java
	jdtls = {
		-- jdtls is usually configured via launchers, leaving settings empty
	},

	-- C/C++ (clangd)
	clangd = {
		-- Optional: add clangd-specific options here
	},

	-- Markdown
	marksman = {
		-- Marksman doesn't need extra settings by default
	},

	-- Python (python-lsp-server)
	pylsp = {
		pylsp = {
			plugins = {
				pyflakes = { enabled = true },
				pycodestyle = { enabled = true },
				mccabe = { enabled = false },
			},
		},
	},

	-- Nix
	nil_ls = {
		-- Usually empty settings; can configure formatters/linters if needed
	},

	-- OCaml
	ocamllsp = {
		-- Default settings are usually enough
	},

	-- Zig
	zls = {
		-- Default settings
	},

	-- LaTeX
	texlab = {
		texlab = {
			build = {
				executable = "latexmk",
				args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" },
				onSave = true,
			},
			forwardSearch = {
				executable = "zathura",
				args = { "--synctex-forward", "%l:1:%f", "%p" },
			},
		},
	},

	-- Lua
	sumneko_lua = {
		Lua = {
			runtime = { version = "LuaJIT" },
			diagnostics = { globals = { "vim" } },
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
				checkThirdParty = false,
			},
			telemetry = { enable = false },
		},
	},
}
