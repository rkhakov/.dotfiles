require'diffview'.setup {
  diff_binaries = false,    -- Show diffs for binaries
  enhanced_diff_hl = false, -- See ':h diffview-config-enhanced_diff_hl'
  use_icons = true,         -- Requires nvim-web-devicons
  icons = {                 -- Only applies when use_icons is true.
    folder_closed = "",
    folder_open = "",
  },
  signs = {
    fold_closed = "",
    fold_open = "",
  },
  file_panel = {
    win_config = {
      position = "left",                  -- One of 'left', 'right', 'top', 'bottom'
      width = 35,                         -- Only applies when position is 'left' or 'right'
      height = 10,                        -- Only applies when position is 'top' or 'bottom'
    },
    listing_style = "tree",             -- One of 'list' or 'tree'
    tree_options = {                    -- Only applies when listing_style is 'tree'
      flatten_dirs = true,              -- Flatten dirs that only contain one single dir
      folder_statuses = "only_folded",  -- One of 'never', 'only_folded' or 'always'.
    },
  },
  file_history_panel = {
    win_config = {
      position = "bottom",
      width = 35,
      height = 16,
    },
    log_options = {
      single_file = {
        diff_merges = "combined",
      },
      multi_file = {
        diff_merges = "first-parent",
      },
    },
  },
  default_args = {
    DiffviewOpen = {},
    DiffviewFileHistory = {},
  },
  hooks = {},
  key_bindings = {
    disable_defaults = false,
  },
}
