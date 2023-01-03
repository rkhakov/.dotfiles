require('nightfox').setup({ --foobar
  options = {
    compile_path = vim.fn.stdpath("cache") .. "/nightfox",
    compile_file_suffix = "_compiled",
    transparent = true,
    terminal_colors = false,
    dim_inactive = false,
    styles = {
      comments = "italic",
      conditionals = "NONE",
      constants = "bold",
      functions = "bold,italic",
      keywords = "italic,bold",
      numbers = "NONE",
      operators = "NONE",
      strings = "NONE",
      types = "bold",
      variables = "NONE",
    },
    inverse = {
      match_paren = false,
      visual = false,
      search = false,
    },
    modules = {},
  }
})

vim.cmd("colorscheme nightfox")
