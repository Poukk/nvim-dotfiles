local map = vim.keymap.set
local g = vim.g

-- Global options
g.mapleader = " "
g.maplocalleader = " "

-- Clear highlights
map("n", "<Esc>", "<cmd>nohlsearch<CR>", { noremap = true, silent = true, desc = "Clear highlights" })

-- Neotree: open
map("n", "<Leader>e", "<cmd>Neotree focus<CR>", { noremap = true, silent = true, desc = "Toggle Neotree" })

-- 42-header: insert header
map("n", "<leader>h", "<cmd>Stdheader<CR>", { noremap = true, silent = true, desc = "Insert 42 header" })

-- Norminette: check current file
map("n", "<leader>n", "<cmd>Norminette<CR>", { noremap = true, silent = true, desc = "Norminette" })

-- Compiler: menu
map("n", "<leader>c", "<cmd>CompilerOpen<cr>", { noremap = true, silent = true, desc = "Open compiler" })

-- Compiler: open/close
map(
	"n",
	"<leader>cc",
	"<cmd>CompilerToggleResults<cr>",
	{ noremap = true, silent = true, desc = "Toggle compiler results" }
)
