local null_ls = require "null-ls"

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
}

null_ls.setup {
  debug = true,
  sources = sources,
}
