return {
  'lewis6991/gitsigns.nvim',
  opts = {
    signs = {
      add = { text = '│' },
      change = { text = '│' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' },
      untracked = { text = '┆' },
    },
    signs_staged = {
      add = { text = '│' },
      change = { text = '│' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
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
    current_line_blame = true,
    current_line_blame_opts = {
      virt_text = true,
      virt_text_pos = 'eol',
      delay = 0,
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
      style = 'minimal',
      relative = 'cursor',
      row = 0,
      col = 1,
    },
    on_attach = function (bufnr)
      local gitsigns = require ('gitsigns')

      local function map (mode, l, r, opts)
        opts = opts or {}
        opts.buffer = bufnr
        vim.keymap.set (mode, l, r, opts)
      end

      -- Navigation
      map ('n', ']c', function ()
        if vim.wo.diff then
          vim.cmd.normal ({ ']c', bang = true })
        else
          gitsigns.nav_hunk ('next')
        end
      end)

      map ('n', '[c', function ()
        if vim.wo.diff then
          vim.cmd.normal ({ '[c', bang = true })
        else
          gitsigns.nav_hunk ('prev')
        end
      end)

      -- Actions
      map ('n', '<leader>hs', gitsigns.stage_hunk, { desc = 'Stage Hunk' })
      map ('n', '<leader>hr', gitsigns.reset_hunk, { desc = 'Reset Hunk' })

      map ('v', '<leader>hs', function ()
        gitsigns.stage_hunk ({ vim.fn.line ('.'), vim.fn.line ('v') })
      end, { desc = 'Stage Hunk (Visual)' })
      map ('n', '<leader>hq', gitsigns.setqflist, { desc = 'Hunks in Quickfix' })

      -- Toggles
      map (
        'n',
        '<leader>tb',
        gitsigns.toggle_current_line_blame,
        { desc = 'Toggle Line Blame' }
      )
      map (
        'n',
        '<leader>tw',
        gitsigns.toggle_word_diff,
        { desc = 'Toggle Word Diff' }
      )

      -- Text object
      map ({ 'o', 'x' }, 'ih', gitsigns.select_hunk, { desc = 'Select Hunk' })
    end,
  },
}
