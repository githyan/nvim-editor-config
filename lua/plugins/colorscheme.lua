return {
  {
    "uZer/pywal16.nvim",
    "nvim-tree/nvim-web-devicons",
    config = function()
      vim.cmd.colorscheme("pywal16")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "pywal16",
    },
  },
}
