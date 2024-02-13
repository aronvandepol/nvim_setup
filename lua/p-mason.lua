require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "rust_analyzer", "pyright" },
}

require("mason-lspconfig").setup()


require('mason-tool-installer').setup {

  -- a list of all tools you want to ensure are installed upon
  -- start
  ensure_installed = {
   'lua-language-server',
    'stylua',
},

}
