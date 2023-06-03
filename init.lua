-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
--

local opt = vim.opt

opt.nu = true
opt.relativenumber = true

opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

opt.autoindent = true -- copy indent from current line when starting new one

opt.cursorline = true -- hightligh the current cusor line

opt.ignorecase = true
opt.smartcase = true

opt.wrap = false

opt.hlsearch = false
opt.incsearch = true

opt.termguicolors = true

opt.scrolloff = 18
opt.signcolumn = "yes"
opt.isfname:append "@-@"

opt.updatetime = 50

vim.o.completeopt = "menuone,noselect"
