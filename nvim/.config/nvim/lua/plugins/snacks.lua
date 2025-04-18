return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  opts = {
    animate = { enabled = true },
    bigfile = { enabled = true },
    bufdelete = { enabled = true },
    dashboard = {
      enabled = true,
      width = 75,
      sections = {
        {
          pane = 1,
          section = 'terminal',
          cmd = 'ascii-image-converter ~/.config/avatar/hacker.webp --threshold 1 -bCW75',
          hl = 'header',
          height = 21,
          padding = 1,
        },
        {
          pane = 2,
          section = 'keys',
          padding = 1,
        },
        {
          pane = 2,
          icon = ' ',
          title = 'Recent Files',
          section = 'recent_files',
          -- indent = 2,
          padding = 1,
        },
        {
          pane = 2,
          icon = ' ',
          title = 'Projects',
          section = 'projects',
          -- indent = 2,
        },
      },
      preset = {
        keys = {
          {
            icon = ' ',
            key = 'f',
            desc = 'Find File',
            action = ':lua Snacks.picker.files()',
          },
          {
            icon = ' ',
            key = 'n',
            desc = 'New File',
            action = ':ene | startinsert',
          },
          {
            icon = ' ',
            key = 'g',
            desc = 'Find Text',
            action = ':lua Snacks.picker.grep()',
          },
          {
            icon = '󰙅 ',
            key = 'e',
            desc = 'Explorer',
            action = ':lua Snacks.picker.explorer()',
          },
          {
            icon = ' ',
            key = 'r',
            desc = 'Recent Files',
            action = ':lua Snacks.dashboard.pick(\'oldfiles\')',
          },
          {
            icon = ' ',
            key = 'l',
            desc = 'Lazy Check',
            action = ':Lazy check',
          },
          {
            icon = ' ',
            key = 'm',
            desc = 'Mason Update',
            action = ':Mason',
          },
        },
      },
    },
    debug = { enabled = true },
    dim = { enabled = true },
    explorer = {
      enabled = true,
      replace_netrw = true,
    },
    git = { enabled = true },
    gitbrowse = { enabled = true },
    image = { enabled = true },
    indent = { enabled = true },
    input = { enabled = true },
    layout = { enabled = true },
    lazygit = { enabled = true },
    notifier = { enabled = true },
    notify = { enabled = true },
    picker = {
      enabled = true,
      sources = {
        explorer = {
          hidden = true,
        },
        grep = {
          ignored = true,
          hidden = true,
          exclude = {
            '.cache',
            '.local',
            '.var',
            '.vscode',
            'go',
            '**/node_modules',
          },
        },
        files = {
          ignored = true,
          hidden = true,
          exclude = {
            '.cache',
            '.local',
            '.var',
            '.vscode',
            'go',
            '**/node_modules',
          },
        },
      },
      layouts = {
        sidebar = {
          preview = 'main',
          layout = {
            backdrop = false,
            width = 30,
            min_width = 30,
            height = 0,
            position = 'left',
            border = 'none',
            box = 'vertical',
            {
              win = 'input',
              height = 1,
              border = 'rounded',
              title = '{title} {live} {flags}',
              title_pos = 'center',
            },
            {
              win = 'list',
              border = 'none',
            },
            {
              win = 'preview',
              title = '{preview}',
              height = 0.4,
              border = 'top',
            },
          },
        },
      },
    },
    profiler = { enabled = true },
    quickfile = { enabled = true },
    rename = { enabled = true },
    scope = { enabled = true },
    scratch = { enabled = true },
    scroll = { enabled = false },
    statuscolumn = {
      enabled = true,
    },
    styles = {
      zen = {
        enter = true,
        fixbuf = false,
        minimal = false,
        width = 120,
        height = 0,
        backdrop = { transparent = true, blend = 25 },
        keys = { q = false },
        zindex = 40,
        wo = {
          winhighlight = 'NormalFloat:Normal',
        },
        w = {
          snacks_main = true,
        },
      },
    },
    terminal = { enabled = true },
    toggle = { enabled = true },
    util = { enabled = true },
    win = { enabled = true },
    words = { enabled = true },
    zen = { enabled = true },
  },

  keys = {
    {
      '<leader><space>',
      function ()
        Snacks.picker.smart ()
      end,
      desc = 'Smart Find Files',
    },
    {
      '<leader>,',
      function ()
        Snacks.picker.buffers ()
      end,
      desc = 'Buffers',
    },
    {
      '<leader>/',
      function ()
        Snacks.picker.grep ()
      end,
      desc = 'Grep',
    },
    {
      '<leader>:',
      function ()
        Snacks.picker.command_history ()
      end,
      desc = 'Command History',
    },
    {
      '<leader>n',
      function ()
        Snacks.picker.notifications ()
      end,
      desc = 'Notification History',
    },
    {
      '<leader>e',
      function ()
        Snacks.explorer ()
      end,
      desc = 'File Explorer',
    },
    {
      '<leader>fb',
      function ()
        Snacks.picker.buffers ()
      end,
      desc = 'Buffers',
    },
    {
      '<leader>fc',
      function ()
        Snacks.picker.files ({ cwd = vim.fn.stdpath ('config') })
      end,
      desc = 'Find Config File',
    },
    {
      '<leader>ff',
      function ()
        Snacks.picker.files ()
      end,
      desc = 'Find Files',
    },
    {
      '<leader>fg',
      function ()
        Snacks.picker.git_files ()
      end,
      desc = 'Find Git Files',
    },
    {
      '<leader>fp',
      function ()
        Snacks.picker.projects ()
      end,
      desc = 'Projects',
    },
    {
      '<leader>fr',
      function ()
        Snacks.picker.recent ()
      end,
      desc = 'Recent',
    },
    {
      '<leader>gb',
      function ()
        Snacks.picker.git_branches ()
      end,
      desc = 'Git Branches',
    },
    {
      '<leader>gl',
      function ()
        Snacks.picker.git_log ()
      end,
      desc = 'Git Log',
    },
    {
      '<leader>gL',
      function ()
        Snacks.picker.git_log_line ()
      end,
      desc = 'Git Log Line',
    },
    {
      '<leader>gs',
      function ()
        Snacks.picker.git_status ()
      end,
      desc = 'Git Status',
    },
    {
      '<leader>gS',
      function ()
        Snacks.picker.git_stash ()
      end,
      desc = 'Git Stash',
    },
    {
      '<leader>gd',
      function ()
        Snacks.picker.git_diff ()
      end,
      desc = 'Git Diff (Hunks)',
    },
    {
      '<leader>gf',
      function ()
        Snacks.picker.git_log_file ()
      end,
      desc = 'Git Log File',
    },
    {
      '<leader>sb',
      function ()
        Snacks.picker.lines ()
      end,
      desc = 'Buffer Lines',
    },
    {
      '<leader>sB',
      function ()
        Snacks.picker.grep_buffers ()
      end,
      desc = 'Grep Open Buffers',
    },
    {
      '<leader>sg',
      function ()
        Snacks.picker.grep ()
      end,
      desc = 'Grep',
    },
    {
      '<leader>sw',
      function ()
        Snacks.picker.grep_word ()
      end,
      desc = 'Visual selection or word',
      mode = { 'n', 'x' },
    },
    {
      '<leader>s"',
      function ()
        Snacks.picker.registers ()
      end,
      desc = 'Registers',
    },
    {
      '<leader>s/',
      function ()
        Snacks.picker.search_history ()
      end,
      desc = 'Search History',
    },
    {
      '<leader>sa',
      function ()
        Snacks.picker.autocmds ()
      end,
      desc = 'Autocmds',
    },
    {
      '<leader>sb',
      function ()
        Snacks.picker.lines ()
      end,
      desc = 'Buffer Lines',
    },
    {
      '<leader>sc',
      function ()
        Snacks.picker.command_history ()
      end,
      desc = 'Command History',
    },
    {
      '<leader>sC',
      function ()
        Snacks.picker.commands ()
      end,
      desc = 'Commands',
    },
    {
      '<leader>sd',
      function ()
        Snacks.picker.diagnostics ()
      end,
      desc = 'Diagnostics',
    },
    {
      '<leader>sD',
      function ()
        Snacks.picker.diagnostics_buffer ()
      end,
      desc = 'Buffer Diagnostics',
    },
    {
      '<leader>sh',
      function ()
        Snacks.picker.help ()
      end,
      desc = 'Help Pages',
    },
    {
      '<leader>sH',
      function ()
        Snacks.picker.highlights ()
      end,
      desc = 'Highlights',
    },
    {
      '<leader>si',
      function ()
        Snacks.picker.icons ()
      end,
      desc = 'Icons',
    },
    {
      '<leader>sj',
      function ()
        Snacks.picker.jumps ()
      end,
      desc = 'Jumps',
    },
    {
      '<leader>sk',
      function ()
        Snacks.picker.keymaps ()
      end,
      desc = 'Keymaps',
    },
    {
      '<leader>sl',
      function ()
        Snacks.picker.loclist ()
      end,
      desc = 'Location List',
    },
    {
      '<leader>sm',
      function ()
        Snacks.picker.marks ()
      end,
      desc = 'Marks',
    },
    {
      '<leader>sM',
      function ()
        Snacks.picker.man ()
      end,
      desc = 'Man Pages',
    },
    {
      '<leader>sp',
      function ()
        Snacks.picker.lazy ()
      end,
      desc = 'Search for Plugin Spec',
    },
    {
      '<leader>sq',
      function ()
        Snacks.picker.qflist ()
      end,
      desc = 'Quickfix List',
    },
    {
      '<leader>sR',
      function ()
        Snacks.picker.resume ()
      end,
      desc = 'Resume',
    },
    {
      '<leader>su',
      function ()
        Snacks.picker.undo ()
      end,
      desc = 'Undo History',
    },
    {
      '<leader>uC',
      function ()
        Snacks.picker.colorschemes ()
      end,
      desc = 'Colorschemes',
    },
    {
      'gd',
      function ()
        Snacks.picker.lsp_definitions ()
      end,
      desc = 'Goto Definition',
    },
    {
      'gD',
      function ()
        Snacks.picker.lsp_declarations ()
      end,
      desc = 'Goto Declaration',
    },
    {
      'gr',
      function ()
        Snacks.picker.lsp_references ()
      end,
      nowait = true,
      desc = 'References',
    },
    {
      'gI',
      function ()
        Snacks.picker.lsp_implementations ()
      end,
      desc = 'Goto Implementation',
    },
    {
      'gy',
      function ()
        Snacks.picker.lsp_type_definitions ()
      end,
      desc = 'Goto T[y]pe Definition',
    },
    {
      '<leader>ss',
      function ()
        Snacks.picker.lsp_symbols ()
      end,
      desc = 'LSP Symbols',
    },
    {
      '<leader>sS',
      function ()
        Snacks.picker.lsp_workspace_symbols ()
      end,
      desc = 'LSP Workspace Symbols',
    },
    {
      '<leader>z',
      function ()
        Snacks.zen ()
      end,
      desc = 'Toggle Zen Mode',
    },
    {
      '<leader>Z',
      function ()
        Snacks.zen.zoom ()
      end,
      desc = 'Toggle Zoom',
    },
    {
      '<leader>.',
      function ()
        Snacks.scratch ()
      end,
      desc = 'Toggle Scratch Buffer',
    },
    {
      '<leader>S',
      function ()
        Snacks.scratch.select ()
      end,
      desc = 'Select Scratch Buffer',
    },
    {
      '<leader>n',
      function ()
        Snacks.notifier.show_history ()
      end,
      desc = 'Notification History',
    },
    {
      '<leader>bd',
      function ()
        Snacks.bufdelete ()
      end,
      desc = 'Delete Buffer',
    },
    {
      '<leader>cR',
      function ()
        Snacks.rename.rename_file ()
      end,
      desc = 'Rename File',
    },
    {
      '<leader>gB',
      function ()
        Snacks.gitbrowse ()
      end,
      desc = 'Git Browse',
      mode = { 'n', 'v' },
    },
    {
      '<leader>gg',
      function ()
        Snacks.lazygit ()
      end,
      desc = 'Lazygit',
    },
    {
      '<leader>un',
      function ()
        Snacks.notifier.hide ()
      end,
      desc = 'Dismiss All Notifications',
    },
    {
      '<c-/>',
      function ()
        Snacks.terminal ()
      end,
      desc = 'Toggle Terminal',
    },
    {
      '<c-_>',
      function ()
        Snacks.terminal ()
      end,
      desc = 'which_key_ignore',
    },
    {
      ']]',
      function ()
        Snacks.words.jump (vim.v.count1)
      end,
      desc = 'Next Reference',
      mode = { 'n', 't' },
    },
    {
      '[[',
      function ()
        Snacks.words.jump (-vim.v.count1)
      end,
      desc = 'Prev Reference',
      mode = { 'n', 't' },
    },
    {
      '<leader>N',
      desc = 'Neovim News',
      function ()
        Snacks.win ({
          file = vim.api.nvim_get_runtime_file ('doc/news.txt', false)[1],
          width = 0.6,
          height = 0.6,
          wo = {
            spell = false,
            wrap = false,
            signcolumn = 'yes',
            statuscolumn = ' ',
            conceallevel = 3,
          },
        })
      end,
    },
  },
}
