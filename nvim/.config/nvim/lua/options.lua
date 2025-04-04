require ('nvchad.options')

local o = vim.o
o.cursorlineopt = 'both'
o.termguicolors = true
o.cursorcolumn = false
o.number = true
o.relativenumber = false
o.scrolloff = 10
o.laststatus = 3
o.guicursor = 'n-v-c:block-blinkwait0-blinkon1000-blinkoff1000,'
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
