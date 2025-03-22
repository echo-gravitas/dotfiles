require ('nvchad.mappings')

local map = vim.keymap.set

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

map ('n', '<leader><left>', ':vertical resize +10<CR>')
map ('n', '<leader><right>', ':vertical resize -10<CR>')
map ('n', '<leader><up>', ':resize +10<CR>')
map ('n', '<leader><down>', ':resize -10<CR>')

map ('n', ';', ':', { desc = 'Enter normal mode' })
map ('i', 'jk', '<ESC>', { desc = 'Leave insert mode' })
