local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use { 'nvim-lua/plenary.nvim' }
  use { 'ThePrimeagen/harpoon' }
  use { "mbbill/undotree" }
  use {
     'nvim-telescope/telescope.nvim', tag = '0.1.6',
      requires = { {'nvim-lua/plenary.nvim'} }
   }
   use {'uZer/pywal16.nvim', as = 'pywal16' }
   use {
       "williamboman/mason.nvim",
       "williamboman/mason-lspconfig.nvim",
       "neovim/nvim-lspconfig",
       'hrsh7th/cmp-nvim-lsp',
       'hrsh7th/nvim-cmp',
        'L3MON4D3/LuaSnip',
       config = function()
          require("mason").setup({
             ui = {
                icons = {
                   package_installed = "✓",
                   package_pending = "➜",
                   package_uninstalled = "✗",
                }
             }
          })
       end
   }
   use {'nvim-tree/nvim-web-devicons'}
   use { 'tpope/vim-fugitive' }
   use { "ellisonleao/gruvbox.nvim" }
   use {
      'nvim-treesitter/nvim-treesitter',
      run = function()
         local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      end
   }
   use { "nvim-treesitter/playground" }
   use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
   }
   use { 
      'numToStr/Comment.nvim',
      config = function()
         require('Comment').setup()
      end
   }
   use {
      'nvim-tree/nvim-tree.lua',
      requires = {
         'nvim-tree/nvim-web-devicons'
      },
   }
   use 'andweeb/presence.nvim'
    use {
        'nvimdev/dashboard-nvim',
        event = 'VimEnter',
        config = function ()
            require('dashboard').setup {
                theme = 'hyper',
                config = {
                    week_header = {
                        enable = true,
                    },
                    shortcut = {
                        { desc = '󰊳 Update', group = '@property', action = 'PackerSync', key = 'u' },
                        {
                            icon = ' ',
                            icon_hl = '@variable',
                            desc = 'Files',
                            group = 'Label',
                            action = 'Telescope find_files',
                            key = 'f',
                        },
                        {
                            desc = ' Apps',
                            group = 'DiagnosticHint',
                            action = 'Telescope app',
                            key = 'a',
                        },
                        {
                            desc = ' dotfiles',
                            group = 'Number',
                            action = 'Telescope dotfiles',
                            key = 'd',
                        },
                    },
                },
            }
        end,
        requires = {"nvim-tree/nvim-web-devicons"}
    }
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
