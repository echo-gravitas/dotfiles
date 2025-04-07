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
      shortcut = {
        {
          desc = ' Lazy ',
          action = 'Lazy',
          key = 'u',
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
    },
  },
}
