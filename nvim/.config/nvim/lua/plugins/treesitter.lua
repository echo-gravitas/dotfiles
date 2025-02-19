return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      sync_install = false,
      highlight = {enable = true},
      indent = {enable = true},
      ensure_installed = {
        "lua",
        "javascript",
        "bash",
        "css",
        "csv",
        "git_config",
        "gitcommit",
        "gitignore",
        "gpg",
        "html",
        "hyprlang",
        "http",
        "json",
        "jsonc",
        "liquid",
        "nginx",
        "php",
        "powershell",
        "python",
        "regex",
        "scss",
        "sql",
        "ssh_config",
        "svelte",
        "toml",
        "tsv",
        "tsx",
        "typescript",
        "vim",
        "vue",
        "yaml"
      }
    })
  end
}
