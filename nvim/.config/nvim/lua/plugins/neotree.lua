return {
  "nvim-neo-tree/neo-tree.nvim",
  -- branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  opts = {
    window = {
      position = "left",
      -- auto_expand_width = true,
    },
    filesystem = {
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
      }
    }
  }
}
