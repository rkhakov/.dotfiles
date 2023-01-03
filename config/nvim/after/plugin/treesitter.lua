local treesitter = safe_require 'nvim-treesitter.configs'
if not treesitter then
  return
end

treesitter.setup {
  -- One of "all", "maintained" (parsers with maintainers), or a list of languages
  ensure_installed = {
    "python",
    "lua",
    "javascript",
    "typescript",
    "go",
    "json",
    "html",
    "yaml",
  },
  sync_install = true,
  ignore_install = {},
  highlight = {
    enable = true,
    disable = {},
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = false,
  },
  rainbow = {
    enable = true,
    disable = {},
    extended_mode = false,
    max_file_lines = nil,
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  },
}

