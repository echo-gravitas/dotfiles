return {
  'yetone/avante.nvim',
  event = 'VeryLazy',
  version = false,
  opts = {
    selector = {
      provider = 'snacks',
    },
    provider = 'openai',
    openai = {
      endpoint = 'https://api.openai.com/v1',
      model = 'gpt-4.1',
    },
    gemini = {
      endpoint = 'https://generativelanguage.googleapis.com/v1beta/models',
      model = 'gemini-2.5-pro-preview-03-25',
    },
  },
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
}
