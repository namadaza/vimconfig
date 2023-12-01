---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "chadracula",
  theme_toggle = { "chadracula", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,

  tabufline = {
    enabled = false,
  },
  statusline = {
    overriden_modules = function(modules)
      -- https://nvchad.com/docs/config/nvchad_ui
      -- One option
      -- define the somefunction anywhwere in your custom dir, just call it well!
      -- modules[2] = somefunction()
      modules[3] = (function()
        return "%f"
      end)()

      -- Second option
      -- adding a module between 2 modules
      -- Use the table.insert functin to insert at specific index
      -- This will insert a new module at index 2 and previous index 2 will become 3 now
    end,
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
