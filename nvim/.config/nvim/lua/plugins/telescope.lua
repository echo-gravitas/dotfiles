return {
  'nvim-telescope/telescope.nvim',
  opts = {
    pickers = {
      find_files = {
        hidden = true,
        no_ignore = true,
        follow = true,
        find_command = {
          'fd',
          '--type',
          'f',
          '--hidden',
          '--follow',
          '--no-ignore',
          '--exclude',
          '.git',
          '--exclude',
          'node_modules',
        },
      },
    },
  },
}
