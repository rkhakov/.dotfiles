local o = vim.opt

if vim.fn.has('termguicolors') then
    o.termguicolors = true
end

o.background = 'dark'

o.encoding = "utf-8"

o.foldmethod = 'indent'
o.foldenable = false

-- tabs
o.splitright = true
o.splitbelow = true

-- Chars
o.list = true
-- o.listchars:append("space:·")
o.listchars:append("trail:·")
-- o.listchars:append("eol:↴")
o.listchars:append("tab:▸ ")

-- Command completion
o.wildmode = { "full" }
o.wildmenu = true
o.wildignore = {
  "**/.git/*",
  "*.pyc",
  "*_build/*",
  "**/node_modules/*",
}

-- Russian keymap
o.langmap = "ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ," ..
        "фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz"

-- Enable mouse
o.mouse = "a"

-- Cursor settings
o.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50"
   -- ",a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor" ..
   -- ",sm:block-blinkwait175-blinkoff150-blinkon175"

-- Numbers and signcolumn
o.signcolumn = "yes"
o.number = true
o.relativenumber = true

-- Hide buffer
o.hidden = true
o.errorbells = false

-- Tabs
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true
o.autoindent = true
o.smartindent = true

-- Wrap
o.wrap = false
o.breakindent = true
o.showbreak = string.rep(" ", 3)
o.linebreak = true

-- Search
o.smartcase = true
o.incsearch = true

-- Undo
o.swapfile = false
o.backup = false
o.undodir = vim.fn.stdpath('data').."/undodir"
o.undofile = true

-- Min lines to show
o.scrolloff = 8

-- Show (insert, visual) mod in the last (command) line
o.showmode = false

-- Insert mode completion
o.completeopt = {'menu', 'menuone', 'noselect'}

-- Backspace, C-W, C-U
o.backspace = {'indent', 'eol', 'start'}

-- Command line hieght
o.cmdheight = 1

-- Don't show completion message
o.shortmess:append "c"

-- Vertical line
o.colorcolumn = "88"

o.cursorline = false

o.joinspaces = false

-- Shortmess
o.shortmess = o.shortmess
  + {
    A = true, -- don't give the "ATTENTION" message when an existing swap file is found
    I = true, -- don't give the intro message when starting Vim |:intro|
    W = true, -- don't give "written" or "[w]" when writing a file
    c = true, -- don't give |ins-completion-menu| messages
    m = true, -- use "[+]" instead of "[Modified]"
  }

-- Format options
o.formatoptions = o.formatoptions
  + {
    c = false,
    o = false, -- O and o, don't continue comments
    r = true, -- Pressing Enter will continue comments
  }

-- Remove builtin plugins
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_zipPlugin = 1
vim.g.loaded_zip = 1

-- Global status
o.laststatus = 3
if vim.fn.has('nvim-0.8') == 1 then
  o.winbar = "%=%m %f"
end

-- Diff
vim.opt.diffopt = { "internal", "filler", "closeoff", "hiddenoff", "algorithm:minimal" }

vim.cmd[[
  augroup RemoveTrailingWhitespaces
    autocmd!
    autocmd BufWritePre * %s/\s\+$//e
  augroup END
]]
