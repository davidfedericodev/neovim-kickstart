return {
  'folke/persistence.nvim',
  event = 'BufReadPre', -- load before buffers are read
  opts = {
    dir = vim.fn.stdpath 'state' .. '/sessions/', -- session save directory
    options = { 'buffers', 'curdir', 'tabpages', 'winsize' }, -- what to save
  },
  keys = {
    {
      '<leader>qs',
      function()
        require('persistence').load()
      end,
      desc = 'Restore session for cwd',
    },
    {
      '<leader>ql',
      function()
        require('persistence').load { last = true }
      end,
      desc = 'Restore last session',
    },
    {
      '<leader>qd',
      function()
        require('persistence').stop()
      end,
      desc = "Don't save session on exit",
    },
  },
}
