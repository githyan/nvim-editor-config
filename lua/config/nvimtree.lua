vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true
local function my_on_attach(bufnr)
   local api = require 'nvim-tree.api'

   local function opts(desc)
      return { desc = "nvim-tree: ".. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
   end

   api.config.mappings.default_on_attach(bufnr)

   vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent,   opts('Up'))
   vim.keymap.set('n', '?',     api.tree.toggle_help,             opts('Help'))
end

require('nvim-tree').setup({
   sort = {
      sorter = 'case_sensitive',
   },
   view = {
      width = 30,
   },
   renderer = {
      group_empty = true,
   },
   filters = {
      dotfiles = true,
   },
   on_attach = my_on_attach,
})

require'nvim-web-devicons'.get_icons_by_window_manager()
require'nvim-web-devicons'.get_icons()
