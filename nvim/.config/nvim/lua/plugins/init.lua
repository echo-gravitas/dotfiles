return {
  {
    'nvim-telescope/telescope.nvim',
    opts = {
      defaults = {
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
    opts = function ()
      local lspconfig = require ('lspconfig')
      local nvlsp = require ('nvchad.configs.lspconfig')

      return {
        servers = {
          html = {},
          cssls = {},
          pyright = {},
          biome = {},
          ts_ls = {},
        },
        setup = function (servers)
          for server, config in pairs (servers) do
            lspconfig[server].setup (vim.tbl_deep_extend ('force', {
              on_attach = nvlsp.on_attach,
              on_init = nvlsp.on_init,
              capabilities = nvlsp.capabilities,
            }, config))
          end
        end,
      }
    end,
    config = function (_, opts)
      opts.setup (opts.servers)
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
