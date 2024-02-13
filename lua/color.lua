vim.g.gruvbox_diagnostic_line_highlight = 1

vim.fn.sign_define({
  {
    name = 'DiagnosticError',
    text = '',
    texthl = 'DiagnosticSignError',
    linehl = 'ErrorLine'
  },
  {
    name = 'DiagnosticWarning',
    text = '',
    texthl = 'DiagnosticSignWarning',
    linehl = 'WarningLine'
  },
  {
    name = 'DiagnosticInfo',
    text = '',
    texthl = 'DiagnosticSignInfo',
    linehl = 'InfoLine'
  },
  {
    name = 'DiagnosticHint',
    text = '',
    texthl = 'DiagnosticSignHint',
    linehl = 'HintLine'
  },
})

