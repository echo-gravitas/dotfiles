return {
  {
    'neovim/nvim-lspconfig',
  },
  {
    'williamboman/mason.nvim',
    opts = {},
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
          'lua_ls',       -- Lua
          'intelephense', -- PHP
          'biome',        -- JavaScript/TypeScript Formatter/Linter
          'pyright',      -- Python
          'taplo',        -- TOML
          'yamlls',       -- YAML
          'ts_ls',        -- TypeScript & JavaScript
          'eslint',       -- Linting für JavaScript/TypeScript
          'html',         -- HTML
          'cssls',        -- CSS
          'jsonls',       -- JSON
        },
        handlers = {
          function(server_name)
            lspconfig[server_name].setup({
              capabilities = capabilities,
              root_dir = util.root_pattern('package.json', 'tsconfig.json', '.git', '.lsproot'),
            })
          end,
          ["ts_ls"] = function()
            lspconfig.ts_ls.setup({
              capabilities = capabilities,
              root_dir = util.root_pattern("package.json", "tsconfig.json", ".git"),
              settings = {
                completions = {
                  completeFunctionCalls = true, -- Fügt automatisch `()` nach Funktionsnamen hinzu
                },
              },
            })
          end,
          ["eslint"] = function()
            lspconfig.eslint.setup({
              capabilities = capabilities,
              root_dir = util.root_pattern(".eslintrc.js", ".eslintrc.json", "package.json"),
              settings = {
                format = true,
              },
            })
          end,
        },
      }
    end,
  },
}
