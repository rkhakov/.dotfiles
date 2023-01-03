local ok, null_ls = pcall(require, 'null-ls')
if not ok then
  return
end

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.black,
    -- null_ls.builtins.formatting.isort,
    -- null_ls.builtins.diagnostics.flake8,
    -- null_ls.builtins.diagnostics.mypy,
  },
  -- on_attach = function(client)
  --   if client.resolved_capabilities.document_formatting then
  --     vim.cmd([[
  --       augroup LspFormatting
  --         autocmd! * <buffer>
  --         autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
  --       augroup END
  --     ]])
  --   end
  -- end,
})

