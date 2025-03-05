return {
  'saghen/blink.cmp',
  dependencies = 'rafamadriz/friendly-snippets',
  version = '*',
  opts = {
    keymap = {
      preset = 'default',

      ['<Tab>'] = { 'accept', 'fallback' }

    },
    appearance = {
      use_nvim_cmp_as_default = true,
      nerd_font_variant = 'mono'
    },
    completion = {
      ghost_text = {
        enabled = false
      },
      documentation = {
        auto_show = true
      },
    },
    sources = {
      default = {
        "lsp",
        "path",
        "snippets",
        "buffer"
      },
      per_filetype = {
        javascript = { "lsp", "snippets", "buffer", "path", "npm" },
        typescript = { "lsp", "snippets", "buffer", "path", "npm" },
        jsx = { "lsp", "snippets", "buffer", "path", "npm" },
        tsx = { "lsp", "snippets", "buffer", "path", "npm" },
      }
    },
    signature = {
      enabled = true
    }

  },
  opts_extend = {
    'sources.default'
  }
}
