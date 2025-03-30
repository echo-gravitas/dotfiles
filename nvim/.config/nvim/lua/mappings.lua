require ('nvchad.mappings')

local map = vim.keymap.set

map ('t', '<Esc>', '<C-\\><C-n>', {
  noremap = true,
  silent = true,
})

map (
  'n',
  '<leader>e',
  '<CMD>Neotree focus<CR>',
  { desc = 'Focus Neotree window' }
)

map (
  'n',
  '<leader>q',
  '<CMD>Neotree close<CR>',
  { desc = 'Close Neotree window' }
)

map (
  'n',
  '<leader>md',
  '<CMD>RenderMarkdown toggle<CR>',
  { desc = 'Toggle markdown rendering' }
)

map (
  'n',
  '<leader><left>',
  '<CMD>vertical resize +10<CR>',
  { desc = 'Increase vertical size by 10' }
)
map (
  'n',
  '<leader><right>',
  '<CMD>vertical resize -10<CR>',
  { desc = 'Decrease vertical size by 10' }
)
map (
  'n',
  '<leader><up>',
  '<CMD>resize +5<CR>',
  { desc = 'Increase horizontal size by 10' }
)
map (
  'n',
  '<leader><down>',
  '<CMD>resize -5<CR>',
  { desc = 'Decrease horizontal size by 10' }
)

map ('i', 'jk', '<ESC>', {
  desc = 'Leave insert mode',
})

map ('n', ';', ':', {
  desc = 'Enter normal mode',
})

map ('n', '<C-Left>', '<C-w>h', {
  desc = 'Focus left window',
})
map ('n', '<C-Down>', '<C-w>j', {
  desc = 'Focus bottom window',
})
map ('n', '<C-Up>', '<C-w>k', {
  desc = 'Focus top window',
})
map ('n', '<C-Right>', '<C-w>l', {
  desc = 'Focus right window',
})
