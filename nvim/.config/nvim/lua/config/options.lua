vim.opt.cursorlineopt = 'both'
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.guicursor = 'n-v-c:block-blinkwait0-blinkon1000-blinkoff1000,'
  .. 'i-ci-ve:ver25-blinkwait0-blinkon1000-blinkoff1000'

vim.api.nvim_create_autocmd ('TextYankPost', {
  desc = 'Highlight when copying text',
  group = vim.api.nvim_create_augroup (
    'highlight-yank',
    { clear = true }
  ),
  callback = function ()
    vim.highlight.on_yank ()
  end,
})
