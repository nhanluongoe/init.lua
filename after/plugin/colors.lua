local status, onedark = pcall(require, 'onedark')
if not status then
  return
end

onedark.setup({
  style = "darker"
})

vim.cmd("colorscheme onedark")

-- hide split border
vim.cmd("highlight VertSplit guibg=bg guifg=#1E232A")
