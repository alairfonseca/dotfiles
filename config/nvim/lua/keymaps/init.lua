-- global aliases
set = vim.opt
g  = vim.g     -- global for let options
wo = vim.wo    -- window local
bo = vim.bo    -- buffer local
fn = vim.fn    -- access vim functions
cmd = vim.cmd  -- vim commands

-- local aliases
local keymap = vim.api.nvim_set_keymap

-- opts
local opts = { noremap = true }

-- leader key
keymap('n', '<Space>', '', {})
g.mapleader = ' '

keymap('n', '<c-s>', ':w<CR>', {}) -- save file
keymap('i', '<c-s>', '<Esc>:w<CR>', {}) -- save file in insert mode

-- navigate to splits (down, left, up and right)
keymap('n', '<c-j>', '<c-w>j', opts)
keymap('n', '<c-h>', '<c-w>h', opts)
keymap('n', '<c-k>', '<c-w>k', opts)
keymap('n', '<c-l>', '<c-w>l', opts)
keymap("n", "<Leader>h", ":<C-u>split<CR>", opts)

-- find files
keymap('n', '<leader>ff', ':Telescope find_files<CR>', opts)
keymap('n', '<leader>fg', ':Telescope live_grep<CR>', opts)
keymap('n', '<leader>fb', ':Telescope buffers<CR>', opts)
keymap('n', '<leader>fh', ':Telescope help_tags<CR>', opts)

-- navigate between tabs (left, right)
keymap('n', '<leader>h', ':BufferLineCyclePrev<CR>', opts)
keymap('n', '<leader>l', ':BufferLineCycleNext<CR>', opts)

-- nvim tree
keymap('n', '<c-n>', ':NvimTreeToggle<CR>', opts)

