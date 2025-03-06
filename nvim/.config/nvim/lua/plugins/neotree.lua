return {
  'nvim-neo-tree/neo-tree.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {
      window = {
        position = 'float',
      },
      filesystem = {
        filtered_items = {
          visible = false,
          hide_gitignored = false,
          hide_dotfiles = false,
          hide_by_name = {
            -- ".github",
            -- ".gitignore",
            -- "package-lock.json",
            -- ".changeset",
            -- ".prettierrc.json",
          },
          never_show = {},
        },
      },
    }
    vim.keymap.set('n', '\\', '<CMD>Neotree toggle<CR>', {})
    vim.keymap.set('n', '<leader><Tab>', '<CMD>Neotree toggle<CR>', {})
    vim.keymap.set('n', '·', '<CMD>Neotree reveal<CR>', {})
  end,
}
