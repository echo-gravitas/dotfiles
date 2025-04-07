return {
  'saghen/blink.cmp',
  dependencies = {
    'rafamadriz/friendly-snippets',
  },

  version = '1.*',
  opts = {
    keymap = {
      preset = 'none',
      ['<Up>'] = { 'select_prev', 'fallback' },
      ['<Down>'] = { 'select_next', 'fallback' },
      ['<Tab>'] = { 'select_next', 'fallback' },
      ['<S-Tab>'] = { 'select_prev', 'fallback' },
      ['<CR>'] = { 'select_and_accept', 'fallback' },
    },

    appearance = {
      nerd_font_variant = 'mono',
    },

    completion = {
      documentation = {
        auto_show = true,
      },
      menu = {
        draw = {
          columns = {
            { 'kind_icon', 'label', 'label_description', gap = 1 },
            { 'kind' },
          },
        },
      },
    },

    sources = {
      default = {
        'lsp',
        'path',
        'snippets',
        'buffer',
      },
    },
    fuzzy = {
      implementation = 'prefer_rust_with_warning',
    },
    signature = {
      enabled = false,
    },
  },
  opts_extend = {
    'sources.default',
  },
}
