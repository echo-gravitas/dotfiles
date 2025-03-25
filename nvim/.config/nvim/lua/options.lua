require ('nvchad.options')

local o = vim.o
o.cursorlineopt = 'both'
o.number = true
o.relativenumber = true
o.scrolloff = 5
o.laststatus = 3
o.guicursor = 'n-v-c:hor20-blinkwait0-blinkon1000-blinkoff1000,'
  .. 'i-ci-ve:ver25-blinkwait0-blinkon1000-blinkoff1000'

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
