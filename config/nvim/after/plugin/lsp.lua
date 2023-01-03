local on_attach = function(_, bufnr)
  local map = vim.keymap.set
  local opts = { buffer = bufnr, noremap = true, silent = true }

  map('n', '<F8>', vim.diagnostic.open_float, opts)
  map('n', '<F6>', vim.diagnostic.goto_prev, opts)
  map('n', '<F7>', vim.diagnostic.goto_next, opts)
  map('n', '<leader>ll', vim.diagnostic.setloclist, opts)

  map('n', 'K', vim.lsp.buf.hover, opts)
  map('n', 'gd', vim.lsp.buf.definition, opts)
  map('n', 'gD', vim.lsp.buf.declaration, opts)
  map('n', 'gi', vim.lsp.buf.implementation, opts)
  map('n', 'rn', vim.lsp.buf.rename, opts)
  map('n', '<leader>gr', vim.lsp.buf.references, opts)
  map('n', '<leader>lh', vim.lsp.buf.signature_help, opts)
  map('n', '<leader>lf', vim.lsp.buf.format, opts)
  map('n', '<leader>la', vim.lsp.buf.code_action, opts)
end

local make_client_capabilities = vim.lsp.protocol.make_client_capabilities()
local capabilities = require('cmp_nvim_lsp').default_capabilities(make_client_capabilities)

local servers = { 'pyright' }
for _, lsp in pairs(servers) do
  require('lspconfig')[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    flags = {
      debounce_text_changes = 150,
    }
  }
end

require 'lspconfig'.sumneko_lua.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { 'vim' },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}
