-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--
local lualine = require("lualine")
local neo_tree = require("neo-tree")
local presences = require("cord")
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

presences.setup({
  usercmds = true, -- Enable user commands
  log_level = "error", -- One of 'trace', 'debug', 'info', 'warn', 'error', 'off'
  timer = {
    interval = 1500, -- Interval between presence updates in milliseconds (min 500)
    reset_on_idle = false, -- Reset start timestamp on idle
    reset_on_change = false, -- Reset start timestamp on presence change
  },
  editor = {
    image = nil, -- Image ID or URL in case a custom client id is provided
    client = "neovim", -- vim, neovim, lunarvim, nvchad, astronvim or your application's client id
    tooltip = "The Superior Text Editor", -- Text to display when hovering over the editor's image
  },
  display = {
    show_time = true, -- Display start timestamp
    show_repository = true, -- Display 'View repository' button linked to repository url, if any
    show_cursor_position = false, -- Display line and column number of cursor's position
    swap_fields = false, -- If enabled, workspace is displayed first
    swap_icons = false, -- If enabled, editor is displayed on the main image
    workspace_blacklist = {}, -- List of workspace names that will hide rich presence
  },
  lsp = {
    show_problem_count = false, -- Display number of diagnostics problems
    severity = 1, -- 1 = Error, 2 = Warning, 3 = Info, 4 = Hint
    scope = "workspace", -- buffer or workspace
  },
  idle = {
    enable = true, -- Enable idle status
    show_status = true, -- Display idle status, disable to hide the rich presence on idle
    timeout = 300000, -- Timeout in milliseconds after which the idle status is set, 0 to display immediately
    disable_on_focus = false, -- Do not display idle status when neovim is focused
    text = "Idle", -- Text to display when idle
    tooltip = "💤", -- Text to display when hovering over the idle image
    icon = nil, -- Replace the default idle icon; either an asset ID or a URL
  },
  text = {
    viewing = "Viewing {}", -- Text to display when viewing a readonly file
    editing = "Editing {}", -- Text to display when editing a file
    file_browser = "Browsing files in {}", -- Text to display when browsing files (Empty string to disable)
    plugin_manager = "Managing plugins in {}", -- Text to display when managing plugins (Empty string to disable)
    lsp_manager = "Configuring LSP in {}", -- Text to display when managing LSP servers (Empty string to disable)
    vcs = "Committing changes in {}", -- Text to display when using Git or Git-related plugin (Empty string to disable)
    workspace = "In {}", -- Text to display when in a workspace (Empty string to disable)
  },
  buttons = {
    {
      label = "View Repository", -- Text displayed on the button
      url = "git", -- URL where the button leads to ('git' = automatically fetch Git repository URL)
    },
    -- {
    --   label = 'View Plugin',
    --   url = 'https://github.com/vyfor/cord.nvim',
    -- }
  },
  assets = nil, -- Custom file icons, see the wiki*
  -- assets = {
  --   lazy = {                                 -- Vim filetype or file name or file extension = table or string
  --     name = 'Lazy',                         -- Optional override for the icon name, redundant for language types
  --     icon = 'https://example.com/lazy.png', -- Rich Presence asset name or URL
  --     tooltip = 'lazy.nvim',                 -- Text to display when hovering over the icon
  --     type = 'plugin_manager',               -- One of 'language', 'file_browser', 'plugin_manager', 'lsp_manager', 'vcs' or respective ordinals; defaults to 'language'
  --   },
  --   ['Cargo.toml'] = 'crates',
  -- },
})
