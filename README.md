# My basic need config neovim for workflows

This configuration loads 21 plugins that is made using packer to apply all related needed as following by packer status.
- comment.nvim
- Luasnip
- cmp-nvim-lsp
- dashboard-nvim
- gruvbox.nvim
- harpoon
- lualine.nvim
- mason-lspconfig.nvim
- nvim-cmp
- nvim-lspconfig
- nvim-tree.lua
- nvim-treesitter
- nvim-web-devicons
- packer.nvim
- playground
- plenary.nvim
- pywal16
- telescope.nvim
- undotree
- vim-fugitive

for making the workflows more be easier that supports program develop efficiency in normal mode by various keybindings <br>considered following :

* `<leader> = space`
* `<leader>s :w<CR>`
* `<leader>so :so<CR>`
* `<leader>q :qa!<CR>`
* `<leader>tp :TSPlaygroundToggle<CR>`
* `<leader>dl :NvimTreeToggle<CR>`
* `<leader>j :<C-w><Left>`
* `<leader>k :<C-w><Right>`
* `<leader><Ctrl-u> :vim.cmd.UndotreeToggle`<br>
as code editing like commenting and move around up and above is setting up by `Ctrl` following by:

* `<ctrl>/ = commenting`
* `<ctrl>_ = commenting in 'x' mode` except in normal mode I used `gc` to give a block comment in current line <br>
 
 for harpoon (see this document from theprimeagen's github)[https://github.com/Theprimeagen/harpoon]
 * `<leader>p :mark.add_file`
 * `<Ctrl>e :ui.toggle_quick_menu`
 * `<Ctrl>h :ui.nav_file(1)`
 * `<Ctrl>l :ui.nav_file(2)`
 * `<Ctrl>n :ui.nav_file(3)`
 * `<Ctrl>s :ui.nav_file(4)`<br>
 Telescope :
 * `<leader>ff :find_files`
 * `<leader>fg :live_grep`
 * `<leader>fb :buffers`
 * `<leader>fh :help_tags`
