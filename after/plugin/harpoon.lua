local harpoon_mark_status, harpoon_mark = pcall(require, "harpoon.mark")
if not harpoon_mark_status then
	return
end

local harpoon_ui_status, harpoon_ui = pcall(require, "harpoon.ui")
if not harpoon_ui_status then
	return
end

vim.keymap.set("n", "<leader>a", harpoon_mark.add_file)
vim.keymap.set("n", "<C-e>", harpoon_ui.toggle_quick_menu)
vim.keymap.set("n", "<C-h>", function()
	harpoon_ui.nav_file(1)
end)
vim.keymap.set("n", "<C-t>", function()
	harpoon_ui.nav_file(2)
end)
vim.keymap.set("n", "<C-n>", function()
	harpoon_ui.nav_file(3)
end)
vim.keymap.set("n", "<C-s>", function()
	harpoon_ui.nav_file(4)
end)
vim.keymap.set("n", "<C-g>", harpoon_mark.rm_file)
