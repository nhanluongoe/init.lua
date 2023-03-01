vim.g.mapleader = " "

-- move line or block of code
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]]) -- yank to the clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]]) -- yank to vim register
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]]) -- delete but not coppying to vim register

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- use jk to exit insert mode
vim.keymap.set("i", "jk", "<ESC>")

-- Window management
vim.keymap.set("n", "<leader>spv", "<C-w>v") -- split window vertically
vim.keymap.set("n", "<leader>sph", "<C-w>s") -- split window horizontally
vim.keymap.set("n", "<leader>spe", "<C-w>=") -- make split windows equal width & height
vim.keymap.set("n", "<leader>spx", ":close<CR>") -- close current split window

vim.keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- toggle file explorer
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- toggle highlight search
vim.keymap.set("n", "<leader>th", "<cmd>:set hlsearch!<CR>");

-- close all buffers but current buffer
vim.keymap.set("n", "<leader>bd", "<cmd>:%bd|e#|bd#<CR>");
