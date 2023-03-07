local status, indent_line = pcall(require, "indent_blankline")
if not status then
	return
end

indent_line.setup({
	show_end_of_line = true,
	-- space_char_blankline = " ",
})

vim.opt.list = true
-- vim.opt.listchars:append("space:⋅")
-- vim.opt.listchars:append("eol:↴")
