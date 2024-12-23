vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*.lua", "*.c", "*.py" },
  callback = function()
    vim.opt.shiftwidth = 4
    vim.opt.tabstop = 3
    vim.opt.softtabstop = 3
  end
})


