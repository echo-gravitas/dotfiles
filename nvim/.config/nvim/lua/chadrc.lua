local M = {}

M.base46 = {
  theme = 'catppuccin',
}

M.nvdash = {
  load_on_startup = false,
  header = {
    '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠁⠀⠀⠈⠉⠙⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
    '⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
    '⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⣿⣿⣿⣿⣿⣿⣿⣿',
    '⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⠀⠀⠀⢀⣠⣤⣤⣤⣤⣄⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿',
    '⣿⣿⣿⣿⣿⣿⣿⠁⠀⠀⠀⠀⠾⣿⣿⣿⣿⠿⠛⠉⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿',
    '⣿⣿⣿⣿⣿⣿⡏⠀⠀⠀⣤⣶⣤⣉⣿⣿⡯⣀⣴⣿⡗⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿',
    '⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⡈⠀⠀⠉⣿⣿⣶⡉⠀⠀⣀⡀⠀⠀⠀⢻⣿⣿⣿⣿⣿',
    '⣿⣿⣿⣿⣿⣿⡇⠀⠀⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⠀⠀⠀⢸⣿⣿⣿⣿⣿',
    '⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠉⢉⣽⣿⠿⣿⡿⢻⣯⡍⢁⠄⠀⠀⠀⣸⣿⣿⣿⣿⣿',
    '⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠐⡀⢉⠉⠀⠠⠀⢉⣉⠀⡜⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿',
    '⣿⣿⣿⣿⣿⣿⠿⠁⠀⠀⠀⠘⣤⣭⣟⠛⠛⣉⣁⡜⠀⠀⠀⠀⠀⠛⠿⣿⣿⣿⣿',
    '⡿⠟⠛⠉⠉⠀⠀⠀⠀⠀⠀⠀⠈⢻⣿⡀⠀⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⣿',
    '                              ⠘',
    '           Dark Star           ',
    '                               ',
  },
  buttons = {
    { txt = ' Open Neotree', keys = 'Spc e', cmd = 'Neotree focus' },
    { txt = ' Find File', keys = 'ff', cmd = 'Telescope find_files' },
    { txt = ' Recent Files', keys = 'fo', cmd = 'Telescope oldfiles' },
    { txt = ' Find Word', keys = 'fw', cmd = 'Telescope live_grep' },
    {
      txt = ' Themes',
      keys = 'th',
      cmd = ':lua require(\'nvchad.themes\').open()',
    },
    { txt = '─', hl = 'NvDashFooter', no_gap = true, rep = true },

    {
      txt = function ()
        local stats = require ('lazy').stats ()
        local ms = math.floor (stats.startuptime) .. ' ms'
        return ' Loaded '
          .. stats.loaded
          .. '/'
          .. stats.count
          .. ' plugins in '
          .. ms
      end,
      hl = 'NvDashFooter',
      no_gap = true,
    },

    { txt = '─', hl = 'NvDashFooter', no_gap = true, rep = true },
  },
}

M.ui = {
  telescope = {
    style = 'bordered',
  },

  statusline = {
    theme = 'default',
    separator_style = 'round',
  },

  tabufline = {
    enabled = true,
  },

  cmp = {
    lspkind_text = true,
    style = 'flat_light',
  },
}

return M
