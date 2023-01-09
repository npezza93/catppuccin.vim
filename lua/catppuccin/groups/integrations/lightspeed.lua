local M = {}

local is_prepared

local function set_prepared(val)
	is_prepared = val
end

local function get_prepared()
	return is_prepared
end

local ucolors = require("catppuccin.utils.colors")

function M.get()
	if not get_prepared() then
		set_prepared(vim.api.nvim_create_autocmd("ColorScheme", {
			callback = function()
				if pcall(require, "leap") then
					require("leap").init_highlight()
				end
			end,
		}))
		set_prepared(true)
	end

	return {
    LeapBackdrop = { link = 'Comment' },
		LeapMatch = {
 			fg = ucolors.vary_color({ latte = "#222222" }, ucolors.brighten(cp.green, 0.3)),
 			style = { "underline", "nocombine" },
 		},
		LeapLabelPrimary = {
 			fg = ucolors.vary_color({ latte = "#222222" }, cp.base),
 			bg = ucolors.vary_color({ latte = ucolors.brighten(cp.red, 0.4) }, ucolors.brighten(cp.green, 0.3)),
 			style = { "nocombine" },
 		},
 		LeapLabelSecondary = {
 			fg = ucolors.vary_color({ latte = "#222222" }, cp.base),
			bg = ucolors.vary_color({ latte = ucolors.brighten(cp.sky, 0.3) }, cp.sky),
 			style = { "nocombine" },
 		},
	}
end

return M
