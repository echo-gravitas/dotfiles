return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  opts = {
    options = {
      theme = 'ayu_mirage',
      padding = 1,
      disabled_filetypes = {
        'Avante',
        'AvanteSelectedFiles',
        'AvanteInput',
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
