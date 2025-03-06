return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = "v3.x",
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {
      close_if_last_window = true,
      popup_border_style = 'solid',
      enable_git_status = true,
      enable_modified_markers = true,
      enable_diagnostics = true,
      sort_case_insensitive = true,
      window = {
        position = 'left',
        auto_expand_width = true,
      },
      filesystem = {
        follow_current_file = {
          enabled = true,
          leave_dirs_open = true
        },
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
      buffers = {
        follow_current_file = {
          enabled = true,
          leave_dirs_open = true
        }
      }
    }
    vim.keymap.set('n', '\\', '<CMD>Neotree toggle<CR>', {})
    vim.keymap.set('n', '<leader><Tab>', '<CMD>Neotree toggle<CR>', {})
    vim.keymap.set('n', '·', '<CMD>Neotree reveal<CR>', {})
  end,
}
