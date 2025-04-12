vim.keymap.set (
  'n',
  '<leader>bdf',
  '<CMD>bd!<CR>',
  { desc = 'Force delete buffer' }
)

vim.keymap.set ('n', '<leader>tv', function ()
  vim.cmd.vnew ()
  vim.cmd.term ()
  vim.cmd.wincmd ('J')
  vim.api.nvim_win_set_height (0, 10)
end, { desc = 'Open new vertical terminal' })

vim.keymap.set ('n', '<leader>bd', '<CMD>bd<CR>', {
  desc = 'Delete buffer',
})

vim.keymap.set (
  'n',
  '<leader>bn',
  '<CMD>enew<CR>',
  { desc = 'Create new buffer' }
)

vim.keymap.set (
  'n',
  '<Tab>',
  '<CMD>BufferLineCycleNext<CR>',
  { desc = 'Cycle Tabs' }
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

vim.keymap.set (
  'n',
  '<leader>ff',
  '<CMD>Telescope find_files<CR>',
  { desc = 'Telescope Find Files' }
)

vim.keymap.set (
  'n',
  '<leader>fw',
  '<CMD>Telescope live_grep<CR>',
  { desc = 'Telescope Live Grep' }
)

vim.keymap.set (
  'n',
  '<leader>e',
  '<CMD>Neotree focus<CR>',
  { desc = 'Focus Neotree window' }
)

vim.keymap.set (
  'n',
  '<leader>q',
  '<CMD>Neotree close<CR>',
  { desc = 'Close Neotree window' }
)

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

vim.keymap.set ('i', 'jk', '<ESC>', {
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

vim.keymap.set ('t', '<Esc>', '<C-\\><C-n>', {
  desc = 'Exit terminal mode',
  noremap = true,
  silent = true,
})
