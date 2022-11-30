require('plugins')

vim.o.termguicolors = true
vim.o.syntax = 'on'
vim.o.errorbells = false
vim.o.smartcase = true
vim.bo.swapfile = false
vim.o.backup = false
vim.o.incsearch = true
vim.o.completeopt='menuone,noinsert,noselect'
vim.bo.autoindent = true
vim.bo.smartindent = true
vim.wo.cursorline = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.smarttab = true
vim.o.expandtab = true
vim.wo.number = true
-- vim.wo.relativenumber = true
-- vim.wo.signcolumn = 'yes'

local key_mapper = function(mode, key, result, opts)
    local options = { noremap = true, silent = true }

    if opts then
        options = vim.tbl_extend('force', options, opts)
    end

    vim.api.nvim_set_keymap(mode, key, result, options)
end

key_mapper('n', '<ESC><ESC>', '<ESC>:noh<CR><ESC>')
