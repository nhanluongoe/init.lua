-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("t", "<C-n>", "<C-\\><C-n>", {
  desc = "Leave terminal mode",
})

vim.keymap.set("n", "<leader>spv", "<C-w>v", {
  desc = "Split Vertically",
})

vim.keymap.set("n", "<leader>sph", "<C-w>s", {
  desc = "Split Horizontally",
})

vim.keymap.set({ "n", "x" }, "<leader>y", '"+y', {
  desc = "Yank to System Clipboard",
})

vim.keymap.set("n", "<leader>Y", '"+Y', {
  desc = "Yank Line to System Clipboard",
})
