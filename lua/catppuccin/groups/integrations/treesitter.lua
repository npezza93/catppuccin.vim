local M = {}

function M.get()
  -- local delimeters = cp.overlay2
  local operators = cp.sky
  local cl = cp.mauve -- conditionals, loops
  local keywords = cp.mauve

  local math_logic = cp.peach
  return {
    -- pink
    ["@conditional"] = { fg = cp.pink },
    ["@keyword.conditional"] = { fg = cp.pink },
    ["@exception"] = { fg = cp.pink },
    ["@keyword.exception"] = { fg = cp.pink },
    ["@include"] = { fg = cp.pink },
    ["@keyword.include"] = { fg = cp.pink },
    ["@keyword"] = { fg = cp.pink },
    ["@keyword.function"] = { fg = cp.pink },
    ["@keyword.operator"] = { fg = cp.pink },
    ["@keyword.modifier"] = { fg = cp.pink },
    ["@repeat"] = { fg = cp.pink },
    ["@keyword.repeat"] = { fg = cp.pink },
    ["@operator"] = { fg = cp.pink },
    ["@view_helper.ruby"] = { fg = cp.pink },
    ["@model_macro.ruby"] = { fg = cp.pink },
    ["@model_callback.ruby"] = { fg = cp.pink },
    ["@model_validations.ruby"] = { fg = cp.pink },

    ["@function.macro"] = { fg = cp.teal },

    -- yellow
    ["@constructor"] = { fg = cp.yellow },
    ["@type"] = { fg = cp.yellow },
    ["@constant"] = { fg = cp.yellow },
    ["@boolean"] = { fg = cp.yellow },
    ["@float"] = { fg = cp.yellow },
    ["@number"] = { fg = cp.yellow },
    ["@constant.builtin"] = { fg = cp.yellow },
    ["@constant.macro"] = { fg = cp.yellow },
    ["@type.builtin"] = { fg = cp.yellow },

    -- green
    ["@string"] = { fg = cp.green },
    ["@text.literal"] = { fg = cp.green },

    -- blue
    ["@method"] = { fg = cp.blue },
    ["@function"] = { fg = cp.blue },

    -- sky
    ["@attribute"] = { fg = cp.sky },
    ["@field"] = { fg = cp.sky },
    ["@function.builtin"] = { fg = cp.sky }, -- or peach
    ["@property"] = { fg = cp.sky },
    ["@symbol"] = { fg = cp.sky },
    ["@symbol.ruby"] = { fg = cp.sky },
    ["@string.regex"] = { fg = cp.sky },
    ["@string.escape"] = { fg = cp.sky }, -- or pink

    -- red
    ["@label"] = { fg = cp.maroon }, -- sapphire
    ["@tag"] = { fg = cp.red }, -- mauve
    ["@tag.delimiter"] = { fg = cp.red }, -- sky
    ["@variable.builtin"] = { fg = cp.red },
    ["@variable.global"] = { fg = cp.red },
    ["@punctuation.special"] = { fg = cp.red }, -- sky
    ["@parameter"] = { fg = cp.red }, -- maroon

    -- text
    ["@annotation"] = { fg = cp.text },
    ["@character"] = { fg = cp.text },
    ["@error"] = { fg = cp.text },
    ["@namespace"] = { fg = cp.text }, -- blue
    ["@none"] = { fg = cp.text },
    -- TSParameterReference = { fg = cp.text },
    ["@punctuation.delimiter"] = { fg = cp.text }, -- overlay2
    ["@punctuation.bracket"] = { fg = cp.rosewater }, -- overlay2
    ["@text"] = { fg = cp.text },
    ["@text.strong"] = { fg = cp.text, style = { "bold" } }, -- maroon
    ["@text.emphasis"] = { fg = cp.text, style = { "italic" } }, -- maroon
    ["@text.underline"] = { fg = cp.text },
    ["@text.strike"] = { fg = cp.text },
    ["@text.title"] = { fg = cp.text, style = { "bold" } }, -- blue
    ["@text.math"] = { fg = cp.text },
    ["@text.environment"] = { fg = cp.text },
    ["@text.environment.name"] = { fg = cp.text },
    ["@keyword.return"] = { fg = cp.mauve },
    ["@text.note"] = { fg = cp.base, bg = cp.blue },
    ["@text.warning"] = { fg = cp.base, bg = cp.yellow },
    ["@text.danger"] = { fg = cp.base, bg = cp.red },
    ["@property.toml"] = { fg = cp.blue }, -- Differentiates between string and properties
    ["@tag.attribute"] = { fg = cp.teal, style = { "italic" } }, -- Tags like html tag names.

    ["@comment"] = { fg = cp.surface1 },

    -- Markdown tresitter parser support
    ["@text.uri"] = { fg = cp.rosewater, style = { "italic", "underline" } }, -- urls, links and emails
    ["@text.literal"] = { fg = cp.teal, style = { "italic" } }, -- used for inline code in markdown and for doc in python (""")
    ["@text.reference"] = { fg = cp.lavender, style = { "bold" } }, -- references

    -- json
    ["@label.json"] = { fg = cp.blue }, -- For labels: label: in C and :label: in Lua.

    -- lua
    ["@constructor.lua"] = { fg = cp.lavender }, -- For constructor calls and definitions: = { } in Lua, and Java constructors.

    -- cpp
    ["@property.cpp"] = { fg = cp.rosewater },

    -- yaml
    ["@field.yaml"] = { fg = cp.blue }, -- For fields.
  }
end

return M
