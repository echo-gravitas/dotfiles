return {
  {
    lazy = true,
    'yetone/avante.nvim',
    event = 'VeryLazy',
    version = false,
    opts = {
      provider = 'openai',
      openai = {
        endpoint = 'https://api.openai.com/v1',
        model = 'gpt-4o',
        timeout = 30000,
        -- temperature = 0,
        max_completion_tokens = 8192,
        --reasoning_effort = "medium", -- low|medium|high, only used for reasoning models
      },
    },
    lazy = true,
    build = 'make',
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'stevearc/dressing.nvim',
      'nvim-lua/plenary.nvim',
      'MunifTanjim/nui.nvim',
      'echasnovski/mini.pick',
      'nvim-telescope/telescope.nvim',
      'hrsh7th/nvim-cmp',
      'ibhagwan/fzf-lua',
      'nvim-tree/nvim-web-devicons',
      'zbirenbaum/copilot.lua',
      {
        'HakonHarnes/img-clip.nvim',
        event = 'VeryLazy',
        opts = {
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = {
              insert_mode = true,
            },
            use_absolute_path = true,
          },
        },
      },
    },
  },
  {
    lazy = true,
    'MeanderingProgrammer/render-markdown.nvim',
    opts = {
      file_types = {
        'markdown',
        'Avante',
      },
      heading = {
        position = 'inline',
      },
    },
    ft = {
      'markdown',
      'Avante',
    },
  },
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
      close_if_last_window = true,
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
            '.cache',
            'node_modules',
            '.local',
            '.git',
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
    lazy = true,
    'folke/which-key.nvim',
    event = 'VimEnter',
    opts = {
      delay = 0,
    },
  },
  {
    lazy = true,
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    opts = {
      signs = true,
    },
  },
  {
    lazy = true,
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
    lazy = true,
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
        python = { 'autopep8' },
        toml = { 'taplo' },
        markdown = { 'mdformat' },
        yaml = { 'yamlfix' },
        sh = { 'beautysh' },
        zsh = { 'beautysh' },
      },
      format_on_save = {
        lsp_fallback = true,
      },
    },
  },
  {
    lazy = true,
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
          lua_ls = {},
          yamlls = {},
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
    lazy = true,
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
        'arduino',
        'astro',
        'bash',
        'c',
        'c_sharp',
        'cmake',
        'css',
        'csv',
        'diff',
        'dockerfile',
        'git_config',
        'git_rebase',
        'gitcommit',
        'gitignore',
        'go',
        'gpg',
        'graphql',
        'html',
        'http',
        'hyprlang',
        'javascript',
        'jsdoc',
        'json',
        'jsonc',
        'liquid',
        'lua',
        'luadoc',
        'markdown',
        'markdown_inline',
        'nginx',
        'php',
        'phpdoc',
        'powershell',
        'printf',
        'pug',
        'python',
        'regex',
        'robot',
        'robots',
        'scss',
        'sql',
        'ssh_config',
        'svelte',
        'toml',
        'tsv',
        'tsx',
        'typescript',
        'vim',
        'vimdoc',
        'vue',
        'xml',
        'yaml',
      },
    },
  },
  {
    lazy = true,
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
    lazy = true,
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
    lazy = true,
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
