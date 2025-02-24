return {
  {
    "neovim/nvim-lspconfig"
  },
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "intelephense",
          "biome",
          "pyright"
        }
      })

      local lspconfig = require("lspconfig")
      local util = require("lspconfig.util")
      local root_dir = util.root_pattern(
        "package.json",
        "tsconfig.json",
        ".git"
      )

      lspconfig.lua_ls.setup({
        root_dir = root_dir
      })

      lspconfig.pyright.setup({
        root_dir = root_dir
      })
      lspconfig.intelephense.setup({
        root_dir = root_dir
      })
      lspconfig.biome.setup({
        root_dir = root_dir
      })

    end
  }
}
