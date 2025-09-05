-- url-open
-- plugin to open urls under cursor
-- Github: https://github.com/sontungexpt/url-open

local url_open_settings = {
	"sontungexpt/url-open",
	event = "VeryLazy",
	cmd = "URLOpenUnderCursor",
	config = function()
		local status_ok, url_open = pcall(require, "url-open")
		if not status_ok then
			return
		end
		url_open.setup({})
	end,
}
return url_open_settings
