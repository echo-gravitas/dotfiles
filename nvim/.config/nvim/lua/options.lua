require ('nvchad.options')

-- add yours here!

local o = vim.o
o.cursorlineopt = 'both'
o.number = true
o.relativenumber = true
o.scrolloff = 5

vim.api.nvim_create_autocmd ('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup (
    'kickstart-highlight-yank',
    { clear = true }
  ),
  callback = function ()
    vim.highlight.on_yank ()
  end,
})
