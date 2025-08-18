return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    harpoon:setup()

    -- Add file
    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end, { desc = 'Harpoon add file' })

    -- Toggle quick menu
    vim.keymap.set('n', '<leader>h', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Harpoon quick menu' })

    -- Navigate between files
    vim.keymap.set('n', '<leader>1', function()
      harpoon:list():select(1)
    end)
    vim.keymap.set('n', '<leader>2', function()
      harpoon:list():select(2)
    end)
    vim.keymap.set('n', '<leader>3', function()
      harpoon:list():select(3)
    end)
    vim.keymap.set('n', '<leader>4', function()
      harpoon:list():select(4)
    end)

    -- Cycle next/prev
    vim.keymap.set('n', '<leader>n', function()
      harpoon:list():next()
    end)
    vim.keymap.set('n', '<leader>p', function()
      harpoon:list():prev()
    end)

    -- 🔹 Remove current file from Harpoon
    vim.keymap.set('n', '<leader>tr', function()
      local idx = harpoon:list():get_current_index()
      if idx then
        harpoon:list():remove(idx)
      end
    end, { desc = 'Harpoon remove current file' })

    -- 🔹 Clear all Harpoons
    vim.keymap.set('n', '<leader>tc', function()
      harpoon:list():clear()
    end, { desc = 'Harpoon clear all' })

    -- 🔹 Reorder: move current file left/right in the list
    vim.keymap.set('n', '<leader>t<Left>', function()
      local idx = harpoon:list():get_current_index()
      if idx and idx > 1 then
        harpoon:list():move(idx, idx - 1)
      end
    end, { desc = 'Harpoon move left' })

    vim.keymap.set('n', '<leader>t<Right>', function()
      local idx = harpoon:list():get_current_index()
      if idx and idx < #harpoon:list().items then
        harpoon:list():move(idx, idx + 1)
      end
    end, { desc = 'Harpoon move right' })
  end,
}
