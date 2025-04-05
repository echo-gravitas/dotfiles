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

vim.api.nvim_create_autocmd ('LspAttach', {
  callback = function (ev)
    local client = vim.lsp.get_client_by_id (ev.data.client_id)
    if client:supports_method ('textDocument/completion') then
      vim.lsp.completion.enable (true, client.id, ev.buf, { autotrigger = true })
    end
  end,
})

vim.diagnostic.config ({ virtual_text = true })
