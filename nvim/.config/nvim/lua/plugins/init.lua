return {
  {
    lazy = false,
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons',
      'MunifTanjim/nui.nvim',
    },
    opts = {
      close_if_last_window = false,
      popup_border_style = 'solid',
      enable_git_status = true,
      enable_modified_markers = true,
      enable_diagnostics = true,
      sort_case_insensitive = true,
      window = {
        position = 'left',
        width = 30,
        auto_expand_width = false,
      },
      filesystem = {
        follow_current_file = {
          enabled = true,
          leave_dirs_open = true,
        },
        filtered_items = {
          visible = false,
          hide_gitignored = false,
          hide_dotfiles = false,
          hide_by_name = {
            -- ".github",
            -- ".gitignore",
            -- "package-lock.json",
            -- ".changeset",
            -- ".prettierrc.json",
          },
          never_show = {},
        },
      },
      buffers = {
        follow_current_file = {
          enabled = true,
          leave_dirs_open = true,
        },
      },
    },
  },
  {
    lazy = false,
    'nvim-tree/nvim-tree.lua',
    enabled = false,
  },
  {
    lazy = false,
    'folke/which-key.nvim',
    event = 'VimEnter',
    opts = {
      delay = 0,
    },
  },
  {
    lazy = false,
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    opts = {
      signs = true,
    },
  },
  {
    lazy = false,
    'nvim-telescope/telescope.nvim',
    opts = {
      defaults = {
        vimgrep_arguments = {
          'rg',
          '--color=never',
          '--no-heading',
          '--with-filename',
          '--line-number',
          '--column',
          '--smart-case',
          '--hidden',
          '--no-ignore',
        },
      },
    },
  },
  {
    lazy = false,
    'stevearc/conform.nvim',
    event = 'BufWritePre',
    opts = {
      formatters_by_ft = {
        lua = { 'stylua' },
        css = { 'prettier' },
        html = { 'prettier' },
        javascript = { 'biome' },
        javascriptreact = { 'biome' },
        typescript = { 'biome' },
        typescriptreact = { 'biome' },
        json = { 'biome' },
        python = { 'pyright' },
        toml = { 'taplo' },
        markdown = { 'marksman' },
        yaml = { 'yamlls' },
        sh = { 'beautysh' },
        zsh = { 'beautysh' },
      },
      format_on_save = {
        lsp_fallback = true,
      },
    },
  },
  {
    lazy = false,
    'neovim/nvim-lspconfig',
    opts = function ()
      local lspconfig = require ('lspconfig')
      local nvlsp = require ('nvchad.configs.lspconfig')

      return {
        servers = {
          bashls = {},
          html = {},
          cssls = {},
          pyright = {},
          biome = {},
          ts_ls = {},
          eslint = {},
          intelephense = {},
          taplo = {},
          marksman = {},
          yamlls = {},
          lua_ls = {},
        },
        setup = function (servers)
          for server, config in pairs (servers) do
            lspconfig[server].setup (vim.tbl_deep_extend ('force', {
              on_attach = nvlsp.on_attach,
              on_init = nvlsp.on_init,
              capabilities = nvlsp.capabilities,
            }, config))
          end
        end,
      }
    end,
    config = function (_, opts)
      opts.setup (opts.servers)
    end,
  },
  {
    lazy = false,
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    opts = {
      auto_install = true,
      highlight = {
        enabled = true,
      },
      indent = {
        enabled = true,
      },
      ensure_installed = {
        'bash',
        'css',
        'csv',
        'git_config',
        'gitcommit',
        'gitignore',
        'gpg',
        'html',
        'http',
        'hyprlang',
        'javascript',
        'json',
        'jsonc',
        'liquid',
        'lua',
        'nginx',
        'php',
        'markdown_inline',
        'markdown',
        'powershell',
        'python',
        'regex',
        'scss',
        'sql',
        'ssh_config',
        'svelte',
        'toml',
        'tsv',
        'tsx',
        'tsx',
        'typescript',
        'vim',
        'vimdoc',
        'vue',
        'yaml',
      },
    },
  },
  {
    lazy = false,
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '┃' },
        delete = { text = '-' },
        topdelete = { text = '-' },
        changedelete = { text = '~' },
        untracked = { text = '┆' },
      },
      signs_staged = {
        add = { text = '+' },
        change = { text = '┃' },
        delete = { text = '-' },
        topdelete = { text = '-' },
        changedelete = { text = '~' },
        untracked = { text = '┆' },
      },
      signs_staged_enable = true,
      signcolumn = true,
      numhl = false,
      linehl = false,
      word_diff = false,
      watch_gitdir = {
        follow_files = true,
      },
      auto_attach = true,
      attach_to_untracked = false,
      current_line_blame = false,
      current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = 'eol',
        delay = 1000,
        ignore_whitespace = false,
        virt_text_priority = 100,
        use_focus = true,
      },
      current_line_blame_formatter = '<author>, <author_time:%R> - <summary>',
      sign_priority = 6,
      update_debounce = 100,
      status_formatter = nil,
      max_file_length = 40000,
      preview_config = {

        border = 'single',
        style = 'minimal',
        relative = 'cursor',
        row = 0,
        col = 1,
      },
    },
  },
  {
    lazy = false,
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    init = function ()
      vim.api.nvim_set_hl (0, 'CatppuccinMauve', { fg = '#cba6f7' })
      vim.api.nvim_set_hl (0, 'CatppuccinRed', { fg = '#f38ba8' })
      vim.api.nvim_set_hl (0, 'CatppuccinGreen', { fg = '#a6e3a1' })
      vim.api.nvim_set_hl (0, 'CatppuccinLavender', { fg = '#b4befe' })
      vim.api.nvim_set_hl (0, 'CatppuccinFlamingo', { fg = '#f2cdcd' })
      vim.api.nvim_set_hl (0, 'CatppuccinSapphire', { fg = '#74c7ec' })
      vim.api.nvim_set_hl (0, 'CatppuccinPeach', { fg = '#fab387' })
    end,
    opts = {
      scope = {
        enabled = true,
      },
      indent = {
        char = '┃',
        -- highlight = {
        --   'CatppuccinMauve',
        --   'CatppuccinRed',
        --   'CatppuccinGreen',
        --   'CatppuccinLavender',
        --   'CatppuccinFlamingo',
        --   'CatppuccinSapphire',
        --   'CatppuccinPeach',
        -- },
      },
    },
  },
  {
    lazy = false,
    'echasnovski/mini.nvim',
    version = '*',
    config = function ()
      require ('mini.cursorword').setup ()
      require ('mini.ai').setup ()
      -- require ('mini.animate').setup ()
      require ('mini.hipatterns').setup ()
    end,
  },
}
