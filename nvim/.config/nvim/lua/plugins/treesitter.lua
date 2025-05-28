return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  branch = 'main',
  build = ':TSUpdate',
  opts = {
    auto_install = true,
    highlight = {
      enabled = true,
    },
    indent = {
      enabled = true,
    },
    ensure_installed = 'all',
  },
}
