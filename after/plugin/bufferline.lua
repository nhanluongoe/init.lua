local status, bufferline = pcall(require, "bufferline")
if not status then
  return
end

bufferline.setup({
  options = {
    -- mode = "tabs",
    separator_style = "thin",
    -- always_show_bufferline = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true,
    indicator = {
      style = "none",
    },
    offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
  },
  highlights = {
    separator = {
      fg = "#1f1f28",
      bg = "#1f1f28",
    },
    separator_selected = {
      fg = "none",
      bg = "none",
    },
    fill = {
      fg = "blue",
      bg = "#1f1f28",
    },
    background = {
      fg = "#727169",
      bg = "#1f1f28",
    },
    buffer_selected = {
      fg = "#DCD7BA",
      bg = "#3b3a4d",
      bold = true,
      italic = true,
    },
  },
})

vim.keymap.set("n", "<S-l>", "<Cmd>BufferLineCycleNext<CR>", {})
vim.keymap.set("n", "<S-h>", "<Cmd>BufferLineCyclePrev<CR>", {})
