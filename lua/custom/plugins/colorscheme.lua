-- return {
--   'sainnhe/gruvbox-material',
--   priority = 1000,
--   name = 'gruvbox-material',
--   config = function(_, opts)
--     require('gruvbox-material').setup(opts)
--     vim.cmd 'colorscheme gruvbox-material'
--   end,
-- }

return {
  'craftzdog/solarized-osaka.nvim',
  lazy = false,
  priority = 1000,
  opts = {},
  config = function(_, opts)
    require('solarized-osaka').setup(opts)
    vim.cmd 'colorscheme solarized-osaka'
  end,
}

--
--

-- return {
--   'folke/tokyonight.nvim',
--   priority = 1000,
--   config = function()
--     local transparent = false -- set to true if you would like to enable transparency
--
--     local bg = '#011628'
--     local bg_dark = '#011423'
--     local bg_highlight = '#143652'
--     local bg_search = '#0A64AC'
--     local bg_visual = '#275378'
--     local fg = '#CBE0F0'
--     local fg_dark = '#B4D0E9'
--     local fg_gutter = '#627E97'
--     local border = '#547998'
--
--     require('tokyonight').setup {
--       style = 'night',
--       transparent = transparent,
--       styles = {
--         sidebars = transparent and 'transparent' or 'dark',
--         floats = transparent and 'transparent' or 'dark',
--       },
--       on_colors = function(colors)
--         colors.bg = bg
--         colors.bg_dark = transparent and colors.none or bg_dark
--         colors.bg_float = transparent and colors.none or bg_dark
--         colors.bg_highlight = bg_highlight
--         colors.bg_popup = bg_dark
--         colors.bg_search = bg_search
--         colors.bg_sidebar = transparent and colors.none or bg_dark
--         colors.bg_statusline = transparent and colors.none or bg_dark
--         colors.bg_visual = bg_visual
--         colors.border = border
--         colors.fg = fg
--         colors.fg_dark = fg_dark
--         colors.fg_float = fg
--         colors.fg_gutter = fg_gutter
--         colors.fg_sidebar = fg_dark
--       end,
--     }
--
--     vim.cmd 'colorscheme tokyonight'
--   end,
-- }

-- return {
--   'rose-pine/neovim',
--   name = 'rose-pine',
--   opts = {
--     styles = {
--       bold = true,
--       italic = false,
--       transparency = false,
--     },
--     groups = {
--       border = 'muted',
--       link = 'iris',
--       panel = 'surface',
--
--       error = 'love',
--       hint = 'iris',
--       info = 'foam',
--       note = 'pine',
--       todo = 'rose',
--       warn = 'gold',
--
--       git_add = 'foam',
--       git_change = 'rose',
--       git_delete = 'love',
--       git_dirty = 'rose',
--       git_ignore = 'muted',
--       git_merge = 'iris',
--       git_rename = 'pine',
--       git_stage = 'iris',
--       git_text = 'rose',
--       git_untracked = 'subtle',
--
--       h1 = 'iris',
--       h2 = 'foam',
--       h3 = 'rose',
--       h4 = 'gold',
--       h5 = 'pine',
--       h6 = 'foam',
--     },
--   },
--   config = function(_, opts)
--     require('rose-pine').setup(opts)
--     vim.cmd 'colorscheme rose-pine'
--   end,
-- }
