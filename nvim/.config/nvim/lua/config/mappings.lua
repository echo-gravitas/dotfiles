vim.keymap.set ('n', '<leader>fc', '<CMD>foldclose<CR>', { desc = 'Fold close' })

vim.keymap.set ('n', '<leader>fo', '<CMD>foldopen<CR>', { desc = 'Fold open' })

vim.keymap.set (
  'n',
  '<leader>t',
  '<CMD>lua Snacks.terminal.open()<CR>',
  { desc = 'Open CLI' }
)

vim.keymap.set (
  'n',
  '<Tab>',
  '<CMD>BufferLineCycleNext<CR>',
  { desc = 'Next Buffer Tab' }
)

vim.keymap.set (
  'n',
  '<S-Tab>',
  '<CMD>BufferLineCyclePrev<CR>',
  { desc = 'Previous Buffer Tab' }
)

vim.keymap.set (
  'n',
  '<leader>sh',
  '<CMD>split<CR>',
  { desc = 'Split horizontal' }
)

vim.keymap.set (
  'n',
  '<leader>sv',
  '<CMD>vsplit<CR>',
  { desc = 'Split vertical' }
)

-- vim.keymap.set (
--   'n',
--   '<leader><leader>',
--   '<CMD>lua Snacks.picker.explorer()<CR>',
--   { desc = 'Explorer toggle' }
-- )

vim.keymap.set (
  'n',
  '<leader>md',
  '<CMD>RenderMarkdown toggle<CR>',
  { desc = 'Toggle markdown rendering' }
)

vim.keymap.set (
  'n',
  '<leader><left>',
  '<CMD>vertical resize +10<CR>',
  { desc = 'Increase vertical size by 10' }
)
vim.keymap.set (
  'n',
  '<leader><right>',
  '<CMD>vertical resize -10<CR>',
  { desc = 'Decrease vertical size by 10' }
)
vim.keymap.set (
  'n',
  '<leader><up>',
  '<CMD>resize +5<CR>',
  { desc = 'Increase horizontal size by 10' }
)
vim.keymap.set (
  'n',
  '<leader><down>',
  '<CMD>resize -5<CR>',
  { desc = 'Decrease horizontal size by 10' }
)

vim.keymap.set ('i', 'kk', '<ESC>', {
  desc = 'Leave insert mode',
})

vim.keymap.set ('n', ';', ':', {
  desc = 'Enter normal mode',
})

vim.keymap.set ('n', '<C-Left>', '<C-w>h', {
  desc = 'Focus left window',
})
vim.keymap.set ('n', '<C-Down>', '<C-w>j', {
  desc = 'Focus bottom window',
})
vim.keymap.set ('n', '<C-Up>', '<C-w>k', {
  desc = 'Focus top window',
})
vim.keymap.set ('n', '<C-Right>', '<C-w>l', {
  desc = 'Focus right window',
})
