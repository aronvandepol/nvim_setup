-- Setup language servers.
local lspconfig = require('lspconfig')
lspconfig.lua_ls.setup {}


require("mason-lspconfig").setup_handlers({
    function(server_name)
        require('lspconfig')[server_name].setup {
            capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
        }
    end,
})


vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)

-- Add this line to set up the Pyright language server for Python
lspconfig.pyright.setup {
  capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
}


vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    -- Add the rest of your key mappings here...
  end,
})


-- Function to read the custom dictionary
local function read_custom_dictionary()
    local words = {}
    local spellfile = vim.fn.stdpath("config") .. "/spell/en.utf-8.add"
    for word in io.lines(spellfile) do
        table.insert(words, word)
    end
    return words
end

-- Custom dictionary words
local custom_dictionary_words = read_custom_dictionary()

-- Configuration for LTeX Language Server
local ltex_settings = {
    ltex = {
        dictionary = {
            ["en-US"] = custom_dictionary_words,
        },
    },
}

-- Now, configure the LTeX language server with your settings
lspconfig.ltex.setup {
    -- include any other setup configuration here
    settings = ltex_settings
}


--[[vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', '<leader>k', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', '<space>r', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
  end,
})]]--
