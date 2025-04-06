return {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons',
      'MunifTanjim/nui.nvim',
    },
    opts = {
      close_if_last_window = false,
      enable_git_status = true,
      enable_modified_markers = true,
      enable_diagnostics = true,
      sort_case_insensitive = true,
      window = {
        position = 'left',
        width = 30,
        auto_expand_width = false,
      },
      filesystem = {
        follow_current_file = {
          enabled = true,
          leave_dirs_open = true,
        },
        filtered_items = {
          visible = false,
          hide_gitignored = false,
          hide_dotfiles = false,
          hide_by_name = {
            '.cache',
            'node_modules',
            '.local',
            '.git',
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
          leave_dirs_open = true,
        },
      },
    },
  }
