local M = {}

local is_prepared

local function set_prepared(val)
	is_prepared = val
end

local function get_prepared()
	return is_prepared
end

function M.get()
	if not get_prepared() then
		set_prepared(vim.api.nvim_create_autocmd("ColorScheme", {
			callback = function()
				if pcall(require, "lightspeed") then
					require("lightspeed").init_highlight()
				end
			end,
		}))
		set_prepared(true)
	end

	return {
		LightspeedLabel = { bg = cp.surface1, fg = cp.text },
		LightspeedOverlapped = { bg = cp.surface1, fg = cp.text },
		LightspeedLabelDistant = { bg = cp.mauve, fg = cp.text },
		LightspeedLabelDistantOverlapped = { bg = cp.mauve, fg = cp.text },
		LightspeedShortcut = { bg = cp.base, fg = cp.peach, style = { "italic" } },
		LightspeedShortcutOverlapped = { bg = cp.base, fg = cp.peach, style = { "bold" } },
		LightspeedMaskedChar = { bg = cp.base, fg = cp.red, style = { "undercurl" } },
		LightspeedGreyWash = { bg = cp.base, fg = cp.overlay0 },
		LightspeedUnlabeledMatch = { bg = cp.base, fg = cp.red, style = { "underline" } },
		LightspeedOneCharMatch = { bg = cp.base, fg = cp.red, style = { "underline" } },
		LightspeedUniqueChar = { bg = cp.base, fg = cp.green, style = { "strikethrough" } },
		LightspeedPendingOpArea = { bg = cp.base, fg = cp.green, style = { "strikethrough" } },
		LightspeedPendingChangeOpArea = { bg = cp.base, fg = cp.green, style = { "strikethrough" } },
		LightspeedCursor = { fg = cp.base, bg = cp.text },
	}
end

return M
