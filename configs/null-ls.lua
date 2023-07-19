-- Basic configuration
-- local present, null_ls = pcall(require, "null-ls")
--
-- if not present then
--   return
-- end
--
-- local b = null_ls.builtins
--
-- local sources = {
--
--   -- webdev stuff
--   -- b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
--   b.formatting.prettier, -- so prettier works only on these filetypes
--   b.diagnostics.eslint,
--
--   -- Lua
--   b.formatting.stylua,
-- }
--
-- null_ls.setup {
--   debug = true,
--   sources = sources,
-- }


local status, null_ls = pcall(require, "null-ls")
if not status then
  return
end

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

-- Use for formatting on save
-- local lsp_formatting = function(bufnr)
--   vim.lsp.buf.format {
--     filter = function(client)
--       return client.name == "null-ls"
--     end,
--     bufnr = bufnr,
--   }
-- end

null_ls.setup {
  sources = {
    null_ls.builtins.formatting.prettierd,
    null_ls.builtins.diagnostics.eslint_d.with {
      diagnostics_format = "[eslint] #{m}\n(#{c})",
    },
  },
  -- on_attach = function(client, bufnr)
  --   if client.supports_method "textDocument/formatting" then
  --     vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
  --     vim.api.nvim_create_autocmd("BufWritePre", {
  --       group = augroup,
  --       buffer = bufnr,
  --       callback = function()
  --         lsp_formatting(bufnr)
  --       end,
  --     })
  --   end
  -- end,
}

vim.api.nvim_create_user_command("DisableLspFormatting", function()
  vim.api.nvim_clear_autocmds { group = augroup, buffer = 0 }
end, { nargs = 0 })
