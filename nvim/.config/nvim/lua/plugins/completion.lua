return {
  'saghen/blink.cmp',
  dependencies = {
    'rafamadriz/friendly-snippets',
    'Kaiser-Yang/blink-cmp-avante',
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
          treesitter = { 'lsp' },
          columns = { { 'kind_icon' }, { 'label', gap = 1 } },
          components = {
            label = {
              text = function (ctx)
                return require ('colorful-menu').blink_components_text (ctx)
              end,
              highlight = function (ctx)
                return require ('colorful-menu').blink_components_highlight (ctx)
              end,
            },
          },
        },
      },
    },

    sources = {
      default = {
        'avante',
        'lsp',
        'path',
        'snippets',
        'buffer',
      },
      providers = {
        avante = {
          module = 'blink-cmp-avante',
          name = 'Avante',
          opts = {},
        },
      },
    },
    fuzzy = {
      implementation = 'prefer_rust_with_warning',
    },
    signature = {
      enabled = true,
      window = {
        show_documentation = false,
      },
    },
  },
  opts_extend = {
    'sources.default',
  },
}
