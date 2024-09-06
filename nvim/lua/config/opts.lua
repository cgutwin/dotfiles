local opt = vim.opt

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus" -- Sync with system clipboard
opt.cursorline = true -- Enable highlighting of the current line
opt.expandtab = true -- Use spaces instead of tabs
