-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- tabs
keymap.set("n", "te", ":tabedit<Return>", opts)
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Resize window
keymap.set("n", "<S-left>", "1<C-w><")
keymap.set("n", "<S-right>", "1<C-w>>")
keymap.set("n", "<S-up>", "5<C-w>+")
keymap.set("n", "<S-down>", "5<C-w>-")

keymap.set("n", "<leader>i", function()
  require("a10a.lsp").toggleInlayHints()
end)
