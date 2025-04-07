return {
  'stevearc/conform.nvim',
  event = 'BufWritePre',
  opts = {
    formatters_by_ft = {
      lua = { 'stylua' },
      css = { 'prettier' },
      html = { 'prettier' },
      javascript = { 'biome' },
      javascriptreact = { 'biome' },
      typescript = { 'biome' },
      typescriptreact = { 'biome' },
      json = { 'biome' },
      python = { 'autopep8' },
      toml = { 'taplo' },
      markdown = { 'mdformat' },
      yaml = { 'yamlfix' },
      sh = { 'beautysh' },
      zsh = { 'beautysh' },
    },
    format_on_save = {
      lsp_fallback = true,
    },
  },
}
