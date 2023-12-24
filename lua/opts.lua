local opt = vim.opt

-- line numbers
opt.nu = true
opt.rnu = true -- relative line numbers

-- indenting
local indent_amount = 4
opt.shiftwidth = indent_amount
opt.smartindent = true

opt.tabstop = indent_amount
opt.softtabstop = indent_amount
opt.expandtab = true

-- GUI colours
opt.termguicolors = true

-- search
opt.hlsearch = false
opt.incsearch = true

-- Sign column
opt.signcolumn = "yes"

-- net rw
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1
