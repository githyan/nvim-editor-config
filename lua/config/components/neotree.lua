local neo_tree = require("neo-tree")
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
