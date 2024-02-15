local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { 'echasnovski/mini.nvim', version = '*' },
  'neovim/nvim-lspconfig',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-vsnip',
  'hrsh7th/vim-vsnip',
  'nvim-lualine/lualine.nvim',
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',
  'nvim-treesitter/nvim-treesitter',
  "sainnhe/gruvbox-material",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  'WhoIsSethDaniel/mason-tool-installer.nvim',
  {
    'stevearc/conform.nvim',
    opts={},
  },
  'nvim-tree/nvim-tree.lua',
  'nvim-tree/nvim-web-devicons',
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {} -- this is equalent to setup({}) function
},
    {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
-- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
},
})


-- Set colorscheme options
vim.opt.termguicolors = true
vim.opt.background = 'dark' -- or 'light' for a light background

-- Set the Gruvbox Material palette to 'original'
vim.g.gruvbox_material_foreground = 'original'
vim.g.gruvbox_material_background = 'medium'
vim.g.gruvbox_material_better_performance = 1
vim.g.gruvbox_material_diagnostic_text_highlight = 1
vim.g.gruvbox_material_diagnostic_line_highlight = 1
vim.g.gruvbox_material_diagnostic_virtual_text = 1
vim.g.gruvbox_material_enable_bold = 1
vim.g.gruvbox_material_enable_italic = 1
vim.g.gruvbox_material_cursor = 'auto'


-- Load the colorscheme
vim.cmd("colorscheme gruvbox-material")



require('base')
require('p-mason')
require('p-lsp')
require('p-conform')
require('p-tree')
require('p-telescope')
require('p-treesitter')
require('p-mini')
require('p-surround')
require('color')
require('p-cmp')
require('p-lualine')


-- Set the location of the spell file
local spellfile = vim.fn.stdpath("config") .. "/spell/en.utf-8.add"
vim.opt.spellfile = spellfile
