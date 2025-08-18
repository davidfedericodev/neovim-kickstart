-- This changes the color of the functions calls
vim.cmd [[hi @function.builtin guifg=#eb6f92]]

-- IMPORT
vim.api.nvim_set_hl(0, '@keyword.import', { fg = '#eb6f92' })

-- RETURN
vim.api.nvim_set_hl(0, '@keyword.return', { fg = '#eb6f92' })

-- IF / ELSE / SWITCH
vim.api.nvim_set_hl(0, '@keyword.conditional', { fg = '#f6c177' })

-- CONST / LET / VAR
vim.api.nvim_set_hl(0, '@keyword', { fg = '#f6c177' })

-- DEFINIZIONE DELLE FUNZIONI
vim.api.nvim_set_hl(0, '@function.definition', { fg = '#f6c177' })

-- (Facoltativo) Nomi di funzione quando vengono chiamate
vim.api.nvim_set_hl(0, '@function.call', { fg = '#c4a7e7' })
