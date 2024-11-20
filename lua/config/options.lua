-- lua/config/options.lua
local opt = vim.opt
local g = vim.g

-- Global options
g.mapleader = " "
g.maplocalleader = " "
g.have_nerd_font = true

-- Editor UI
opt.number = true
opt.signcolumn = "yes"
opt.breakindent = true

-- Whitespace display
opt.list = true
opt.listchars = { tab = "│ ", trail = "-", nbsp = "␣" }

-- File handling
opt.undofile = true

-- Search and replace
opt.inccommand = "split"
