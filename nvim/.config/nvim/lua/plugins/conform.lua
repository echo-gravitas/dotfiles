return {
  'stevearc/conform.nvim',
  opts = {
    formatters_by_ft = {
      css = { 'prettier' },
      html = { 'prettier' },
      javascript = { 'prettier' },
      javascriptreact = { 'prettier' },
      json = { 'prettier' },
      lua = { 'stylua' },
      markdown = { 'mdformat' },
      python = { 'autopep8' },
      sh = { 'beautysh' },
      toml = { 'taplo' },
      typescript = { 'prettier' },
      typescriptreact = { 'prettier' },
      yaml = { 'yamlfix' },
      zsh = { 'beautysh' },
    },
    format_on_save = {
      lsp_fallback = true,
    },
  },
  config = function (_, opts)
    require ('conform').setup (opts)
    vim.api.nvim_create_autocmd ('InsertLeave', {
      callback = function ()
        require ('conform').format ({ async = true, lsp_fallback = true })
      end,
    })
  end,
}
