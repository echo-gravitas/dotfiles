return {
  cmd = {
    'typescript-language-server',
    '--stdio',
  },
  root_markers = {
    '.git',
    'package.json',
    'tsconfig.json',
  },
  filetypes = {
    'javascript',
    'typescript',
    'typescriptreact',
  },
}
