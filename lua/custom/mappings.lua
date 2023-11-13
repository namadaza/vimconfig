---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!
M.harpoon = {
  plugin = true,
  n = {
    ["<leader>ha"] = {
      function()
        require("harpoon.mark").add_file()
      end,
      "Add file to harpoon",
    },
    ["<leader>hh"] = {
      function()
        require("harpoon.ui").toggle_quick_menu()
      end,
      "View harpoon menu",
    },
    ["<leader>h1"] = {
      function()
        require("harpoon.ui").nav_file(1)
      end,
      "Go to harpoon mark 1",
    },
    ["<leader>h2"] = {
      function()
        require("harpoon.ui").nav_file(2)
      end,
      "Go to harpoon mark 2",
    },
    ["<leader>h3"] = {
      function()
        require("harpoon.ui").nav_file(3)
      end,
      "Go to harpoon mark 3",
    },
  },
}

return M
