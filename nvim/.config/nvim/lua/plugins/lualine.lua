return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  opts = {
    options = {
      theme = 'catppuccin',
      padding = 1,
      disabled_filetypes = {
        'Avante',
        'AvanteSelectedFiles',
        'AvanteInput',
        'snacks_terminal',
      },
    },
    sections = {
      lualine_a = {
        'mode',
      },
      lualine_b = {
        'branch',
        'diff',
        'diagnostics',
      },
      lualine_c = {
        'filename',
      },
      lualine_x = {
        'lsp_status',
        'fileformat',
        'filetype',
      },
      lualine_z = {
        'location',
      },
    },
  },
}
