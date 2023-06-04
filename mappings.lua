---@type MappingsTable
local M = {}

-- In order to disable a default keymap, use
M.disabled = {
  n = {
    -- bufline
    ["<tab>"] = "",
    ["<S-tab>"] = "",
  },
}

M.general = {
  n = {
    ["<leader>th"] = { "<cmd>:set hlsearch!<CR>", "Toggle highlight search", opts = { nowait = true } },
    ["<leader>tb"] = {
      function()
        require("gitsigns").toggle_current_line_blame()
      end,
      "Toggle current line blame",
      opts = { nowait = true },
    },
  },
}

M.window = {
  n = {
    ["<leader>spv"] = { "<C-w>v", "Split window vertically", opts = { nowait = true } },
    ["<leader>sph"] = { "<C-w>s", "Split window horizontally", opts = { nowait = true } },
  },
}

-- Format code
M.format = {
  n = {
    ["<leader>fc"] = { "<cmd> lua vim.lsp.buf.format() <CR>", "Format code", opts = { nowait = true } },
  },

  v = {
    ["<leader>fc"] = { "<cmd>:lua vim.lsp.buf.format()<CR>", "Format code selected code", opts = { nowait = true } },
  },
}

-- Move line or block of code
M.moving_code = {
  v = {
    ["J"] = { ":m '>+1<CR>gv=gv", "Move block of code down" },
    ["K"] = { ":m '<-2<CR>gv=gv", "Move block of code up" },
  },
}

-- Custom bufline keymap
M.tabufline = {
  plugin = true,

  n = {
    -- cycle through buffers
    ["<S-l>"] = {
      function()
        require("nvchad_ui.tabufline").tabuflineNext()
      end,
      "Goto next buffer",
    },

    ["<S-h>"] = {
      function()
        require("nvchad_ui.tabufline").tabuflinePrev()
      end,
      "Goto prev buffer",
    },
  },
}

-- Custom yank
M.yank = {
  x = {
    ["<leader>p"] = { [["_dP]] },
  },

  n = {
    ["<leader>y"] = { [["+y]], "Yank to the clipboard", opts = { nowait = true } },
    ["<leader>Y"] = { [["+Y]], "Yank to vim register", opts = { nowait = true } },
    ["<leader>d"] = { [["_d]], "Delete but not coppying to vim register", opts = { nowait = true } },
  },

  v = {
    ["<leader>y"] = { [["+y]], "Yank to the clipboard", opts = { nowait = true } },
    ["<leader>d"] = { [["_d]], "Delete but not coppying to vim register", opts = { nowait = true } },
  },
}

-- Harpoon file navigation
M.harpoon = {
  n = {
    ["<leader>a"] = {
      function()
        require("harpoon.mark").add_file()
      end,
      "Add file to harpoon",
    },
    ["<C-e>"] = {
      function()
        require("harpoon.ui").toggle_quick_menu()
      end,
      "Open harpoon menu",
    },
  },
}

-- Lazygit
M.lazygit = {
  n = {
    ["<leader>lg"] = {
      function()
        local term = require("nvterm.terminal").new "float"
        vim.api.nvim_chan_send(term.job_id, "lazygit\n")
      end,
      "Open Lazygit",
      opts = { nowait = true },
    },
  },
}

return M
