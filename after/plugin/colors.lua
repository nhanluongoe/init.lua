-- local status, onedark = pcall(require, 'onedark')
-- if not status then
--   return
-- end
--
-- onedark.setup({
--   style = "darker"
-- })
--
-- vim.cmd("colorscheme onedark")

-- hide split border
-- vim.cmd("highlight VertSplit guibg=bg guifg=#1E232A")

local status, kanagawa = pcall(require, "kanagawa")
if not status then
	return
end

-- kanagawa.setup({
--   colors = {
--     bg = '#1e232a'
--   }
-- })

vim.cmd("colorscheme kanagawa")
vim.cmd("highlight WinSeparator guifg=#363647")
vim.cmd("highlight LineNr guibg=none")
vim.cmd("highlight SignColumn guibg=none")
vim.cmd("highlight CursorLineNr guibg=none")
vim.cmd("highlight CursorLineSign guibg=none")
vim.cmd("highlight GitSignsAdd guibg=none")
vim.cmd("highlight GitSignsChange guibg=none")
vim.cmd("highlight GitSignsDelete guibg=none")
vim.cmd("highlight GitSignsDelete guibg=none")
vim.cmd("highlight DiagnosticSignHint guibg=none")
