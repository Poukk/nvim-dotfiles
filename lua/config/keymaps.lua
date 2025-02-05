local map = vim.keymap.set
local g = vim.g

-- Global options
g.mapleader = " "
g.maplocalleader = " "

-- Clear highlights
map("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Neotree: open and focus if already open
map("n", "<Leader>e", "<cmd>Neotree focus<CR>")

-- Neotree: close
map("n", "<Leader>ce", "<cmd>Neotree close<CR>")

-- 42-header: insert header
map("n", "<leader>h", "<cmd>Stdheader<CR>")
