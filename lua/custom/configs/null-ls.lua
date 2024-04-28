local null_ls = require "null-ls"
local cspell = require "cspell"

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.prettier.with {
    disabled_filetypes = {
      "css",
      "scss",
      "less",
    },
  },
  b.formatting.eslint.with {
    disabled_filetypes = {
      "css",
      "scss",
      "less",
    },
  },
  b.diagnostics.eslint.with {
    disabled_filetypes = {
      "css",
      "scss",
      "less",
    },
  },

  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,

  cspell.diagnostics.with {
    disabled_filetypes = {
      "NvimTree",
    },
  },
  cspell.code_actions,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
