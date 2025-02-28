return {
  'echasnovski/mini.nvim',
  version = '*',
  config = function()
    require('mini.ai').setup { n_lines = 500 }
    require('mini.surround').setup()
    require('mini.animate').setup()
    require('mini.cursorword').setup()
    require('mini.hipatterns').setup()
    require('mini.map').setup()
    require('mini.pairs').setup()
    require('mini.starter').setup()
  end,
}
