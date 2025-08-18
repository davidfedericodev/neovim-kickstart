return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('bufferline').setup {
      options = {
        numbers = 'none', -- "none" | "ordinal" | "buffer_id" | "both"
        diagnostics = 'nvim_lsp', -- show LSP errors on buffers
        separator_style = 'slant', -- "slant" | "thick" | "thin" | { "left", "right" }
        show_buffer_close_icons = true,
        show_close_icon = false,
        always_show_bufferline = true,
      },
    }
  end,
}
