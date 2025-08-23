return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('bufferline').setup {
      options = {
        numbers = 'none', -- "none" | "ordinal" | "buffer_id" | "both"
        diagnostics = 'nvim_lsp', -- show LSP errors on buffers
        separator_style = 'thin', -- "slant" | "thick" | "thin" | { "left", "right" }
        show_buffer_close_icons = true,
        show_close_icon = false,
        always_show_bufferline = false,
      },
      highlights = {
        fill = { bg = 'NONE' },
        background = { bg = 'NONE' },

        buffer_visible = { bg = 'NONE' },
        buffer_selected = { bg = 'NONE' },

        tab = { bg = 'NONE' },
        tab_selected = { bg = 'NONE' },
        tab_close = { bg = 'NONE' },

        separator = { bg = 'NONE' },
        separator_visible = { bg = 'NONE' },
        separator_selected = { bg = 'NONE' },

        indicator_visible = { bg = 'NONE' },
        indicator_selected = { bg = 'NONE' },

        modified = { bg = 'NONE' },
        modified_visible = { bg = 'NONE' },
        modified_selected = { bg = 'NONE' },

        offset_separator = { bg = 'NONE' },
      },
    }
  end,
}
