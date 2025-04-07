return {
  cmd = {
    'pyright-langserver',
    '--stdio',
  },
  root_markers = {
    '.git',
    'requirements.txt',
  },
  filetypes = {
    'python',
  },
}
