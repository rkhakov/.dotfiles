local neogit = require('neogit')

neogit.setup {
  disable_commit_confirmation = true,
  integrations = {
    diffview = false
  }
}

local set = vim.keymap.set

set('n', '<leader>nn', '<CMD>Neogit<CR>')
set('n', '<leader>nl', '<CMD>Neogit log<CR>')
set('n', '<leader>np', '<CMD>Neogit push<CR>')
