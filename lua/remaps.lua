local g = vim.g
-- <leader> remap
g.mapleader = " "

-- navigate splits
vim.keymap.set("n", "<C-h>", "<C-w><C-h>")
vim.keymap.set("n", "<C-j>", "<C-w><C-j>")
vim.keymap.set("n", "<C-k>", "<C-w><C-k>")
vim.keymap.set("n", "<C-l>", "<C-w><C-l>")

-- interact with system clipboard
-- need xclip or similar on linux
vim.keymap.set("v", "<leader>y", '\"+y')
vim.keymap.set("v", "<leader>p", '\"+p')

vim.keymap.set("n", "<leader>y", '\"+y')
vim.keymap.set("n", "<leader>p", '\"+p')

-- navigate in insert mode
vim.keymap.set('i', "<C-h>", "<Left>")
vim.keymap.set('i', "<C-j>", "<Down>")
vim.keymap.set('i', "<C-k>", "<Up>")
vim.keymap.set('i', "<C-l>", "<Right>")
