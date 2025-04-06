return {
  'lukas-reineke/indent-blankline.nvim',
  main = 'ibl',
  init = function ()
    vim.api.nvim_set_hl (0, 'CatppuccinMauve', { fg = '#cba6f7' })
    vim.api.nvim_set_hl (0, 'CatppuccinRed', { fg = '#f38ba8' })
    vim.api.nvim_set_hl (0, 'CatppuccinGreen', { fg = '#a6e3a1' })
    vim.api.nvim_set_hl (0, 'CatppuccinLavender', { fg = '#b4befe' })
    vim.api.nvim_set_hl (0, 'CatppuccinFlamingo', { fg = '#f2cdcd' })
    vim.api.nvim_set_hl (0, 'CatppuccinSapphire', { fg = '#74c7ec' })
    vim.api.nvim_set_hl (0, 'CatppuccinPeach', { fg = '#fab387' })
  end,
  opts = {
    scope = {
      enabled = true,
    },
    indent = {
      char = '┃',
      -- highlight = {
      --   'CatppuccinMauve',
      --   'CatppuccinRed',
      --   'CatppuccinGreen',
      --   'CatppuccinLavender',
      --   'CatppuccinFlamingo',
      --   'CatppuccinSapphire',
      --   'CatppuccinPeach',
      -- },
    },
  },
}
