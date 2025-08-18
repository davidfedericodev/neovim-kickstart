return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {
    delete_to_trash = false,
    skip_confirm_for_simple_edits = false,
    prompt_save_on_select_new_entry = true,
    view_options = {
      show_hidden = false,
      -- is_hidden_file = function(name, bufnr)
      -- 	local m = name:match("^%.")
      -- 	return m ~= nil
      -- end,
    },
    float = {
      padding = 2,
      max_width = 100,
      max_height = 30,
      border = 'rounded',
      win_options = {
        winblend = 0,
      },
    },
    keymaps = {
      ['<CR>'] = 'actions.select',
      ['<C-v>'] = 'actions.select_split',
      ['<C-s>'] = 'actions.select_vsplit',
      ['<C-t>'] = 'actions.select_tab',
      ['q'] = 'actions.close',
    },
  },
  -- Optional dependencies
  dependencies = { { 'echasnovski/mini.icons', opts = {} } },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
}
