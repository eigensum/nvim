local function setup_mason_tool_installer()
	local formatters = require("configs.formatters")
	local fmt_dict = {}

	for key, value in pairs(formatters) do
		for _, formatter in ipairs(value) do
			table.insert(fmt_dict, formatter)
		end
	end
	require("mason-tool-installer").setup({
		ensure_installed = fmt_dict,
	})
end

local mason_tool_installer_settings =
	{ "WhoIsSethDaniel/mason-tool-installer.nvim", config = setup_mason_tool_installer }

return mason_tool_installer_settings
