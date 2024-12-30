-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("i", "kk", "<Esc>", opts)
vim.api.nvim_set_keymap("", "<up>", "<nop>", opts)
vim.api.nvim_set_keymap("", "<down>", "<nop>", opts)
vim.api.nvim_set_keymap("", "<left>", "<nop>", opts)
vim.api.nvim_set_keymap("", "<right>", "<nop>", opts)
