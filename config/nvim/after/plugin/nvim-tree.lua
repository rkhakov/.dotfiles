-- default mappings
local list = {
  { key = {"<CR>", "o", "l"}, action = "edit" },
  { key = {"O"},                          action = "edit_no_picker" },
  { key = {"<C-v>", "v"},                        action = "vsplit" },
  { key = {"<C-x>", "s"},                        action = "split" },
  { key = {"<C-t>", "t"},                        action = "tabnew" },
}

require'nvim-tree'.setup {
  disable_netrw = true,
  view = {
    side = "left",
    mappings = {
      custom_only = false,
      list = list,
    },
  },
  update_focused_file = {
    enable = false,
  },
  renderer = {
    highlight_git = true,
    highlight_opened_files = "icon",
    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
      glyphs = {
        git = {
          unstaged = "",
          staged = "S",
          unmerged = "",
          renamed = "➜",
          deleted = "",
          untracked = "U",
          ignored = "◌",
        },
      },
    },
  },
  diagnostics = {
    enable = true,
    show_on_dirs = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  filters = {
    dotfiles = false,
    custom = {
      "__pycache__",
      "^.git",
    },
  },
}
