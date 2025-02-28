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
    dependencies = { 'williamboman/mason.nvim' },
    opts = {
      ensure_installed = {
        'lua_ls',
        'intelephense',
        'biome',
        'pyright',
        'taplo',
        'yamlls',
      },
      handlers = {
        function (server_name)
          local lspconfig = require ('lspconfig')
          local util = require ('lspconfig.util')
          local root_dir = util.root_pattern ('package.json', 'tsconfig.json', '.git', '.lsproot')

          lspconfig[server_name].setup ({
            root_dir = root_dir,
          })
        end,
      },
    },
  },
}
