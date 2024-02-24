return {
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    name = "gruvbox",
    priority = 1000,
    config = function()
      -- Set the Gruvbox Material theme
      vim.g.gruvbox_material_foreground = 'original'
      vim.g.gruvbox_material_background = 'medium'
      vim.g.gruvbox_material_better_performance = 1
      vim.g.gruvbox_material_diagnostic_text_highlight = 1
      vim.g.gruvbox_material_diagnostic_line_highlight = 1
      vim.g.gruvbox_material_diagnostic_virtual_text = 1
      vim.g.gruvbox_material_enable_bold = 1
      vim.g.gruvbox_material_enable_italic = 1
      vim.g.gruvbox_material_cursor = 'auto'
      vim.cmd.colorscheme "gruvbox-material"
    end
  }
}
