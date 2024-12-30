-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--
local lualine = require("lualine")
local neo_tree = require("neo-tree")
lualine.setup({
  options = {
    icons_enabled = true,
    theme = "pywal16-nvim",
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
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
    },
  },
  transparent = true,
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "branch", "diff", "diagnostics" },
    lualine_c = { "filename" },
    lualine_x = { "encoding", "fileformat", "filetype" },
    lualine_y = { "progress" },
    lualine_z = { "location" },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { "filename" },
    lualine_x = { "location" },
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {},
})

neo_tree.setup({
  window = {
    width = 30,
  },
  git_status = {
    symbols = {
      -- Change type
      added = "", -- or "✚", but this is redundant info if you use git_status_colors on the name
      modified = "", -- or "", but this is redundant info if you use git_status_colors on the name
      deleted = "✖", -- this can only be used in the git_status source
      renamed = "󰁕", -- this can only be used in the git_status source
      -- Status type
      untracked = "",
      ignored = "",
      unstaged = "󰄱",
      staged = "",
      conflict = "",
    },
  },
})
