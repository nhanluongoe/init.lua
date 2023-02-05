local gs = require("gitsigns")

gs.setup({
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
})

vim.keymap.set("n", "<leader>tb", gs.toggle_current_line_blame)
vim.keymap.set("n", "<leader>hd", gs.diffthis)
vim.keymap.set("n", "<leader>hp", gs.preview_hunk)
