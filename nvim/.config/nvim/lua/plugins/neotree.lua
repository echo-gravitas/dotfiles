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
      mappings = {
        ['oa'] = 'avante_add_files',
      },
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
    commands = {
      avante_add_files = function (state)
        local node = state.tree:get_node ()
        local filepath = node:get_id ()
        local relative_path = require ('avante.utils').relative_path (filepath)

        local sidebar = require ('avante').get ()

        local open = sidebar:is_open ()
        -- ensure avante sidebar is open
        if not open then
          require ('avante.api').ask ()
          sidebar = require ('avante').get ()
        end

        sidebar.file_selector:add_selected_file (relative_path)

        -- remove neo tree buffer
        if not open then
          sidebar.file_selector:remove_selected_file ('neo-tree filesystem [1]')
        end
      end,
    },
    buffers = {
      follow_current_file = {
        enabled = true,
        leave_dirs_open = true,
      },
    },
  },
}
