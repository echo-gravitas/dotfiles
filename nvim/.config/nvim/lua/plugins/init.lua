return {
  {
    'nvim-telescope/telescope.nvim',
    opts = {
      defaults = {
        border = true,
        promt_prefix = '🔍 ',
        vimgrep_arguments = {
          'rg',
          '--color=never',
          '--no-heading',
          '--with-filename',
          '--line-number',
          '--column',
          '--smart-case',
          '--hidden',
          '--no-ignore',
        },
      },
    },
  },
  {
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
      },
      format_on_save = {
        lsp_fallback = true,
      },
    },
  },
  {
    'neovim/nvim-lspconfig',
    config = function ()
      return require ('configs.lspconfig')
    end,
  },
  {
    'nvim-treesitter/nvim-treesitter',
    opts = {
      ensure_installed = {
        'vim',
        'lua',
        'vimdoc',
        'html',
        'css',
        'typescript',
        'tsx',
      },
    },
  },
  {
    'nvim-tree/nvim-tree.lua',
    opts = {},
  },
}
