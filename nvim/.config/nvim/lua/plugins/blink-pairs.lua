return {
  'saghen/blink.pairs',
  version = '*',
  dependencies = 'saghen/blink.download',
  opts = {
    mappings = {
      enabled = true,
      disabled_filetypes = {},
      pairs = {},
    },
    highlights = {
      enabled = true,
      groups = {
        'BlinkPairsPurple',
        'BlinkPairsOrange',
        'BlinkPairsViolet',
        'BlinkPairsBlue',
        'BlinkPairsRed',
        'BlinkPairsCyan',
        'BlinkPairsYellow',
        'BlinkPairsGreen',
      },
      matchparen = {
        enabled = true,
        group = 'MatchParen',
      },
    },
    debug = false,
  },
}
