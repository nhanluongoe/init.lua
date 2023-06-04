local M = {}
local utils = require "core.utils"

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "tailwindcss-language-server",
    "prettier",
    "eslint_d",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },
  renderer = {
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.blankline = {
  indentLine_enabled = 1,
  filetype_exclude = {
    "help",
    "terminal",
    "lazy",
    "lspinfo",
    "TelescopePrompt",
    "TelescopeResults",
    "mason",
    "nvdash",
    "nvcheatsheet",
  },
  buftype_exclude = { "terminal" },
  show_trailing_blankline_indent = false,
  show_first_indent_level = false,
  show_current_context = true,
  show_current_context_start = false,
}

M.gitsigns = {
  signs = {
    add = { text = "+" },
    change = { text = "~" },
    delete = { text = "_" },
    topdelete = { text = "‾" },
    changedelete = { text = "~" },
  },
  current_line_blame_opts = {
    delay = 200,
  },
  on_attach = function(bufnr)
    utils.load_mappings("gitsigns", { buffer = bufnr })
  end,
}

M.nvterm = {
  terminals = {
    type_opts = {
      float = {
        relative = "editor",
        row = 0.1,
        col = 0.1,
        width = 0.8,
        height = 0.8,
        border = "single",
      },
    },
  },
}

return M
