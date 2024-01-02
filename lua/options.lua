vim.cmd("set clipboard+=unnamedplus") -- copy/paste to system clipboard (TODO: check why this is not working)
-- vim.cmd("au TextChanged,TextChangedI <buffer> silent write") -- write file on change

vim.api.nvim_create_autocmd({"TextChanged", "TextChangedI"}, {
    buffer = 0,
    callback = function()
        vim.cmd("silent write")
    end,
})

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

--
-- KEY MAPPINGS
--

-- General mappings
vim.g.mapleader = " " -- global leader
vim.g.maplocalleader = " " -- local leader is the same as global leader
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>") -- clear search highlight
vim.keymap.set("n", "<leader>q", ":q<CR>") -- quit
vim.keymap.set("n", "<leader>Q", ":qa<CR>") -- quit all

-- move between windows
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- save file
vim.keymap.set("n", "<C-s>", ":w<CR>", { noremap = true, silent = true }) -- save file in normal mode
vim.keymap.set("i", "<C-s>", "<C-o>:w<CR>", { noremap = true, silent = true }) -- save file in insert mode
vim.keymap.set("n", "<C-a>", ":wa<CR>", { noremap = true, silent = true }) -- save all files in normal mode
vim.keymap.set("i", "<C-a>", "<C-o>:wa<CR>", { noremap = true, silent = true }) -- save all files in insert mode

-- move lines up and down
vim.keymap.set("v", "<A-j>", ":m'>+1<CR>gv=gv", { noremap = true, silent = true }) -- move current line down/up in visual mode
vim.keymap.set("i", "<A-j>", "<Esc>:m .+1<CR>==gi", { noremap = true, silent = true }) -- move current line down
vim.keymap.set("n", "<A-j>", ":m+1<CR>==", { noremap = true, silent = true }) -- move current line down/up in normal mode
vim.keymap.set("v", "<A-k>", ":m'<-2<CR>gv=gv", { noremap = true, silent = true }) -- move current line up/down in normal mode
vim.keymap.set("i", "<A-k>", "<Esc>:m .-2<CR>==gi", { noremap = true, silent = true }) -- move current line up
vim.keymap.set("n", "<A-k>", ":m-2<CR>==", { noremap = true, silent = true }) -- move current line down/up in normal mode

-- copy current line, create new line bellow and paste
vim.keymap.set("v", "<C-d>", ":t '>+0<CR>gv=gv", { noremap = true, silent = true }) -- duplicate selected lines in visual mode
vim.keymap.set("i", "<C-d>", "<C-o>:t .<CR>", { noremap = true, silent = true }) -- duplicate current line in insert mode
vim.keymap.set("n", "<C-d>", ":t .<CR>", { noremap = true, silent = true }) -- duplicate current line in normal mode

