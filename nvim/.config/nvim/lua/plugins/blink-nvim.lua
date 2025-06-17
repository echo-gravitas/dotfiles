return {
  'saghen/blink.nvim',
  build = 'cargo build --release',
  keys = {
    {
      ',',
      function ()
        require ('blink.chartoggle').toggle_char_eol (',')
      end,
      mode = { 'n', 'v' },
      desc = 'Toggle , at eol',
    },
  },
  lazy = false,
  opts = {
    chartoggle = {
      enabled = true,
    },
    filetypes = {
      'snacks_picker_list',
      'snacks_dashboard',
      'lazy',
      'mason',
      'checkhealth',
      'help',
    },
    select = {
      enabled = false,
    },
    tree = {
      enabled = false,
    },
  },
}
