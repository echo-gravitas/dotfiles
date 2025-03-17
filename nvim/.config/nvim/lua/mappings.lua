require ('nvchad.mappings')

-- add yours here

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

map ('n', ';', ':', { desc = 'Enter normal mode' })
map ('i', 'jk', '<ESC>', { desc = 'Leave insert mode' })
