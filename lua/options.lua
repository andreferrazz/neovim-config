vim.opt.tabstop = 4 -- tab width
vim.opt.shiftwidth = 4 -- indent width
vim.opt.shiftround = true -- round indent
vim.opt.expandtab = true -- use spaces instead of tabs
vim.opt.wrap = false -- don't wrap lines
vim.opt.number = true -- show line numbers
vim.opt.showcmd = true -- show command in bottom bar
vim.opt.laststatus = 2 -- always show status line
vim.opt.autowrite = true -- automatically write file when switching buffers
vim.opt.cursorline = true -- highlight current line
vim.opt.autoread = true -- checks if a file has been modified outside vim

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.keymap.set('n', '<c-h>', '<C-w>h')
vim.keymap.set('n', '<c-j>', '<C-w>j')
vim.keymap.set('n', '<c-k>', '<C-w>k')
vim.keymap.set('n', '<c-l>', '<C-w>l')
