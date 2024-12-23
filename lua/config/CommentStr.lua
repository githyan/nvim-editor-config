local linewise = '<Plug>(comment_toggle_linewise)'
local linewiseCurrent = '<Plug>(comment_toggle_linewise_current)'
local linewiseCount = '<Plug>(commnet_toggle_linewise_count)'
local linewiseVisual = '<Plug>(comment_toggle_linewise_visual)'


vim.keymap.set('n', '<C-_>', function()
   return vim.v.count == 0 and linewiseCurrent or linewiseCount
end, {expr = true})

vim.keymap.set('n', 'gc', linewise)
vim.keymap.set('x', '<C-_>', linewiseVisual)

