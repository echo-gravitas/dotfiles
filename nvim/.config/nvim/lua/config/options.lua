vim.opt.termguicolors = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.cursorline = true
vim.opt.cursorlineopt = 'both'
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.scrolloff = 5
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.mouse = 'a'
vim.opt.guicursor = 'n-v-c:block-blinkwait0-blinkon1000-blinkoff1000,'
    .. 'i-ci-ve:ver25-blinkwait0-blinkon1000-blinkoff1000'

vim.diagnostic.config({
  virtual_text = true,
})

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when copying text',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.lsp.enable({
  'lua-language-server',
  'typescript-language-server',
  'pyright',
})
