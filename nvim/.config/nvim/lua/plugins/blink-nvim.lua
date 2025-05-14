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
    indent = {
      enabled = true,
      visible = true,
      blocked = {
        buftypes = {},
        filetypes = {
          'snacks_picker_list',
          'snacks_dashboard',
          'lazy',
          'mason',
          'checkhealth',
        },
      },
      static = {
        enabled = true,
        char = '│',
        priority = 1,
        highlights = { 'BlinkIndent' },
      },
      scope = {
        enabled = true,
        char = '│',
        priority = 1024,
        highlights = {
          'BlinkIndentRed',
          'BlinkIndentYellow',
          'BlinkIndentBlue',
          'BlinkIndentOrange',
          'BlinkIndentGreen',
          'BlinkIndentViolet',
          'BlinkIndentCyan',
        },
        underline = {
          enabled = false,
          highlights = {
            'BlinkIndentRedUnderline',
            'BlinkIndentYellowUnderline',
            'BlinkIndentBlueUnderline',
            'BlinkIndentOrangeUnderline',
            'BlinkIndentGreenUnderline',
            'BlinkIndentVioletUnderline',
            'BlinkIndentCyanUnderline',
          },
        },
      },
    },
    select = {
      enabled = false,
    },
    tree = {
      enabled = false,
    },
  },
}
