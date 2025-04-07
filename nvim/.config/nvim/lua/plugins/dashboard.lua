return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  dependencies = {
    {
      'nvim-tree/nvim-web-devicons',
    },
  },
  opts = {
    theme = 'hyper',
    config = {
      week_header = {
        enable = true,
      },
      packages = {
        enable = true,
      },
      project = {
        enable = true,
        limit = 5,
        icon = ' ',
      },
      mru = {
        enable = true,
        limit = 10,
        icon = ' ',
      },
      shortcut = {
        {
          desc = ' Lazy ',
          action = 'Lazy',
          key = 'l',
        },
        {
          desc = ' Telescope ',
          action = 'Telescope find_files',
          key = 'f',
        },
        {
          desc = ' Mason ',
          action = 'Mason',
          key = 'm',
        },
        {
          desc = ' Neotree ',
          action = 'Neotree focus',
          key = 'n',
        },
      },
      footer = {
        '',
        '',
        '✨ You have all weapons you need. Now fight! ✨',
      },
    },
  },
}
