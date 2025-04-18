return {
  'folke/noice.nvim',
  event = 'VeryLazy',
  dependencies = {
    'MunifTanjim/nui.nvim',
    'rcarriga/nvim-notify',
  },
  opts = {
    cmdline = {
      enabled = true,
      view = 'cmdline_popup',
      opts = {},
      format = {
        cmdline = { pattern = '^:', icon = '', lang = 'vim' },
        search_down = {
          kind = 'search',
          pattern = '^/',
          icon = ' ',
          lang = 'regex',
        },
        search_up = {
          kind = 'search',
          pattern = '^%?',
          icon = ' ',
          lang = 'regex',
        },
        filter = { pattern = '^:%s*!', icon = '$', lang = 'bash' },
        lua = {
          pattern = { '^:%s*lua%s+', '^:%s*lua%s*=%s*', '^:%s*=%s*' },
          icon = '',
          lang = 'lua',
        },
        help = { pattern = '^:%s*he?l?p?%s+', icon = '' },
        input = { view = 'cmdline_input', icon = '󰥻 ' },
      },
    },
    messages = {
      enabled = false,
      view = 'notify',
      view_error = 'notify',
      view_warn = 'notify',
      view_history = 'messages',
      view_search = 'virtualtext',
    },
    popupmenu = {
      enabled = false,
      backend = 'nui',
      kind_icons = {},
    },
    redirect = {
      view = 'popup',
      filter = { event = 'msg_show' },
    },
    commands = {
      history = {
        view = 'split',
        opts = { enter = true, format = 'details' },
        filter = {
          any = {
            { event = 'notify' },
            { error = true },
            { warning = true },
            { event = 'msg_show', kind = { '' } },
            { event = 'lsp', kind = 'message' },
          },
        },
      },
      last = {
        view = 'popup',
        opts = { enter = true, format = 'details' },
        filter = {
          any = {
            { event = 'notify' },
            { error = true },
            { warning = true },
            { event = 'msg_show', kind = { '' } },
            { event = 'lsp', kind = 'message' },
          },
        },
        filter_opts = { count = 1 },
      },
      errors = {
        view = 'popup',
        opts = { enter = true, format = 'details' },
        filter = { error = true },
        filter_opts = { reverse = true },
      },
      all = {
        view = 'split',
        opts = { enter = true, format = 'details' },
        filter = {},
      },
    },
    notify = {
      enabled = false,
      view = 'notify',
    },
    lsp = {
      progress = {
        enabled = false,
        format = 'lsp_progress',
        format_done = 'lsp_progress_done',
        throttle = 1000 / 30,
        view = 'mini',
      },
      override = {
        ['vim.lsp.util.convert_input_to_markdown_lines'] = false,
        ['vim.lsp.util.stylize_markdown'] = false,
        ['cmp.entry.get_documentation'] = false,
      },
      hover = {
        enabled = false,
        silent = false,
        view = nil,
        opts = {},
      },
      signature = {
        enabled = false,
        auto_open = {
          enabled = false,
          trigger = true,
          luasnip = true,
          throttle = 50,
        },
        view = nil,
        opts = {},
      },
      message = {
        enabled = false,
        view = 'notify',
        opts = {},
      },
      documentation = {
        view = 'hover',
        opts = {
          lang = 'markdown',
          replace = true,
          render = 'plain',
          format = { '{message}' },
          win_options = { concealcursor = 'n', conceallevel = 3 },
        },
      },
    },
    markdown = {
      hover = {
        ['|(%S-)|'] = vim.cmd.help,
        ['%[.-%]%((%S-)%)'] = require ('noice.util').open,
      },
      highlights = {
        ['|%S-|'] = '@text.reference',
        ['@%S+'] = '@parameter',
        ['^%s*(Parameters:)'] = '@text.title',
        ['^%s*(Return:)'] = '@text.title',
        ['^%s*(See also:)'] = '@text.title',
        ['{%S-}'] = '@parameter',
      },
    },
    health = {
      checker = true,
    },
    presets = {
      bottom_search = false,
      command_palette = false,
      long_message_to_split = false,
      inc_rename = false,
      lsp_doc_border = false,
    },
    throttle = 1000 / 30,
    views = {},
    routes = {},
    status = {},
    format = {},
  },
}
