nvim.builtin.treesitter.ensure_installed = {
  "python",
}

local formatters = require 'nvim.lsp.null-ls.formatters'
formatters.setup {{ name = 'black'}, }

local linters = require "nvim.lsp.null-ls.linters"
linters.setup {{command = 'flake8', args = {"--ignore=E203"}, filetypes= {'python'}}}


