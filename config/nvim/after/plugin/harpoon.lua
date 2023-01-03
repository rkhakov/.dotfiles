local map = vim.keymap.set

map('n', '<leader>a', require('harpoon.mark').add_file)
map('n', '<leader>tu', require('harpoon.ui').toggle_quick_menu)
map('n', '<leader>tc', require('harpoon.cmd-ui').toggle_quick_menu)

local ui = require("harpoon.ui")
map('n', '<leader>1', function() ui.nav_file(1) end)
map('n', '<leader>2', function() ui.nav_file(2) end)
map('n', '<leader>3', function() ui.nav_file(3) end)
map('n', '<leader>4', function() ui.nav_file(4) end)
