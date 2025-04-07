return {
  'echasnovski/mini.nvim',
  version = '*',
  config = function ()
    require ('mini.cursorword').setup ()
    require ('mini.ai').setup ()
    require ('mini.animate').setup ()
    require ('mini.hipatterns').setup ()
    require ('mini.pairs').setup ()
    require ('mini.surround').setup ()
    require ('mini.starter').setup ()
    require ('mini.trailspace').setup ()
  end,
}
