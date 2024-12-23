-- local present, feline = pcall(require, 'feline')
--
-- if not present then 
--    return 
-- end
--
-- local present, pywal16_feline = pcall(require, 'pywal.feline')
--
-- if not present then
--    return 
-- end
--
-- feline.setup({
--    components = pywal16_feline,
-- })
--

local lualine = require('lualine')

lualine.setup {
  options = {
    icons_enabled = true,
    theme = 'pywal16-nvim',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  transparent = true,
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}