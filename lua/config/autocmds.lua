-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`
-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

-- Open alpha on startup
vim.api.nvim_create_autocmd('VimEnter', {
  callback = function()
    local args = vim.fn.argv() -- Ottieni gli argomenti passati a Neovim
    if #args == 1 and vim.fn.isdirectory(args[1]) == 1 then
      vim.cmd 'enew' -- Crea un buffer vuoto
      require('alpha').start() -- Avvia Alpha manualmente
    end
  end,
})
