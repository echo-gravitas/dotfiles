return {
  'saghen/blink.indent',
  opts = {
    blocked = {
      buftypes = {},
      filetypes = {
        'snacks_picker_list',
        'snacks_dashboard',
        'lazy',
        'mason',
        'checkhealth',
        'help',
      },
    },
    static = {
      enabled = true,
      char = '│',
      priority = 1,
      -- specify multiple highlights here for rainbow-style indent guides
      -- highlights = { 'BlinkIndentRed', 'BlinkIndentOrange', 'BlinkIndentYellow', 'BlinkIndentGreen', 'BlinkIndentViolet', 'BlinkIndentCyan' },
      highlights = { 'BlinkIndent' },
    },
    scope = {
      enabled = true,
      char = '│',
      priority = 1024,
      -- set this to a single highlight, such as 'BlinkIndent' to disable rainbow-style indent guides
      -- highlights = { 'BlinkIndent' },
      highlights = {
        'BlinkIndentOrange',
        'BlinkIndentViolet',
        'BlinkIndentBlue',
        'BlinkIndentRed',
        'BlinkIndentCyan',
        'BlinkIndentYellow',
        'BlinkIndentGreen',
      },
      underline = {
        enabled = false,
        highlights = {
          'BlinkIndentOrangeUnderline',
          'BlinkIndentVioletUnderline',
          'BlinkIndentBlueUnderline',
          'BlinkIndentRedUnderline',
          'BlinkIndentCyanUnderline',
          'BlinkIndentYellowUnderline',
          'BlinkIndentGreenUnderline',
        },
      },
    },
  },
}
