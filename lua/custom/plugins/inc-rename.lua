return {
  'smjonas/inc-rename.nvim',
  opts = {},
  keys = {
    {
      'grn',
      function()
        return ':IncRename ' .. vim.fn.expand '<cword>'
      end,
      desc = 'Rename',
      expr = true,
    },
    {
      '<leader>cr',
      function()
        return ':IncRename ' .. vim.fn.expand '<cword>'
      end,
      desc = 'Rename',
      expr = true,
    },
  },
}
-- return {
--   -- Incremental rename
--   {
--     'smjonas/inc-rename.nvim',
--     cmd = 'IncRename',
--     config = true,
--     keys = {
--       {
--         '<leader>rn',
--         mode = 'n',
--         function()
--           require('inc-rename').rename()
--         end,
--         desc = 'Incremental Rename',
--       },
--     },
--   },
-- }
