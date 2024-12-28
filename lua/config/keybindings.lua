local function keymaps(mode, lhs, rhs, opts)
	local options = { noremap = true, silent = true }
	local api = vim.api

	if opts then 
		options = vim.tbl_extend('force', options, opts)
	end
	api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Change leader key to a <Space> --
vim.g.mapleader = ' '

---- Neovim shortcut -------
--
-- Disable arrow keys--
keymaps('', '<up>', '<nop>')
keymaps('', '<down>', '<nop>')
keymaps('', '<left>', '<nop>')
keymaps('', '<right>', '<nop>')

-- Maps Esc to kk
keymaps('i', 'kk', '<Esc>')
-- Maps move to dir :Ex set <leader>x
keymaps('n', '<leader>x', ':Ex<CR>')
-- Maps to save 
keymaps('n', '<leader>s', ':w<CR>')
keymaps('n', '<leader>so', ':so<CR>')

-- Maps to close all windows and exit 
keymaps('n', '<leader>q', ':qa!<CR>')

-- Applications and plugin shortcut
---- Terminal maps
-- keymaps('n', '<C-t>', ':Term<CR>', { noremap = true })
-- keymaps('n', '<C-t>', ':NvimTreeOpen<CR>')
keymaps('t', '<Esc>', '<C-\\><C-n>')

--- Treesitter Playground 
keymaps('n', '<leader>tp', ':TSPlaygroundToggle<CR>')

-- Navigating beetwen explorer and editor
keymaps('n', '<leader>dl', ':NvimTreeToggle<CR>')
keymaps('n', '<leader>j', '<C-w><Left>', defaults)
keymaps('n', '<leader>k', '<C-w><Right>', defaults)

--- automatically closing brackets, quotations, and parenthesis ---
keymaps('i', '"', '""<left>')
keymaps('i', '{', '{}<left>')
keymaps('i', '[', '[]<left>')
keymaps('i', '(', '()<left>')
keymaps("i", "'", "''<left>")

-- vim fugitive keybindings
-- keymaps('n', '<leader>gs', vim.cmd.git)
