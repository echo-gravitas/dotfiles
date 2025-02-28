return {
  {
    'neovim/nvim-lspconfig',
  },
  {
    'williamboman/mason.nvim',
    opts = {},
  },
  {
    'saghen/blink.cmp',
  },
  {
    'williamboman/mason-lspconfig.nvim',
    dependencies = {
      'williamboman/mason.nvim',
      'neovim/nvim-lspconfig',
      'saghen/blink.cmp'
    },
    opts = function()
      local lspconfig = require('lspconfig')
      local util = require('lspconfig.util')
      local capabilities = require('blink.cmp').get_lsp_capabilities()

      return {
        ensure_installed = {
          'lua_ls',
          'intelephense',
          'biome',
          'pyright',
          'taplo',
          'yamlls',
        },
        handlers = {
          function(server_name)
            lspconfig[server_name].setup({
              capabilities = capabilities,
              root_dir = util.root_pattern('package.json', 'tsconfig.json', '.git', '.lsproot'),
            })
          end,
        },
      }
    end,
  },
}
