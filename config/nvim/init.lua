require 'keymaps'
require 'plugins'

-- local variables

vim.bo.expandtab = true
vim.bo.shiftwidth = 2
vim.bo.softtabstop = 2
set.autoindent = true

set.hidden = true
set.number = true
set.relativenumber = true
set.inccommand = "split"
set.mouse = "a"

set.termguicolors = false

g.tokyonight_style = "night"
vim.cmd[[colorscheme tokyonight]]
