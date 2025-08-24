local function setup_mason()
	require("mason").setup()
end
local mason_settings = { "williamboman/mason.nvim", build = ":MasonUpdate", config = setup_mason }
return mason_settings
