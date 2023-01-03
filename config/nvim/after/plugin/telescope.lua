local telescope = safe_require 'telescope'
if not telescope then
  return
end

telescope.setup{
  defaults = {
    winblend = 0,
    mappings = {
      i = {
      }
    }
  },
  pickers = { },
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  }
}

telescope.load_extension('fzf')
telescope.load_extension('dir')

local builtin = require('telescope.builtin')
local themes = require('telescope.themes')

local set = vim.keymap.set

set('n', '<leader>fs', builtin.live_grep)
set('n', '<leader>fS', function()
  builtin.grep_string {search = vim.fn.input("Grep For > ")}
end)
set('n', '<leader>fw', builtin.grep_string)
set('n', '<leader>ff', function()
  builtin.find_files(themes.get_ivy())
end)
set({'n', 'i'}, '<C-b>', builtin.buffers)
set('n', '<leader>fh', builtin.help_tags)
set('n', '<leader>fk', builtin.keymaps)
set('n', '<C-f>', function()
  builtin.current_buffer_fuzzy_find({
    layout_config={
      prompt_position = 'top',
      height = 0.8,
      width = 0.6,
    },
    sorting_strategy = 'ascending',
  })
end)
set('n', '<C-p>', builtin.git_files)
set('n', '<leader>.', function()
  builtin.find_files {cwd = vim.env.DOTFILES}
end)
set('n', '<leader>gb', builtin.git_branches)

set("n", "<leader>fd", "<cmd>Telescope dir live_grep<CR>", { noremap = true, silent = true })
set("n", "<leader>pd", "<cmd>Telescope dir find_files<CR>", { noremap = true, silent = true })
