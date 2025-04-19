-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local key = vim.keymap
local opts = { noremap = true, silent = true }

-- Save
key.set("n", "<C-s>", ":w<Return>")
key.set("i", "<C-s>", "<Esc>:w<Return>")

-- Exit all
key.set("n", "<C-S-q>", "<Esc>:qa!<Return>", opts)
-- Exit current tab
key.set("n", "<C-q>", ":q<Return>")

-- Select all
key.set("n", "<C-a>", "gg<S-v>G")
key.set("i", "<C-a>", "<Esc>gg<S-v>G")

-- Text editing
key.set("v", "<C-A-Down>", ":m '>+1<CR>gv=gv")
key.set("v", "<C-A-Up>", ":m '<-2<CR>gv=gv")

-- Delete single character without copying into register
key.set("n", "x", '"_x', opts)

-- Windows
-- Split
key.set("n", "ss", ":split<Return>", opts)
key.set("n", "sv", ":vsplit<Return>", opts)
-- Move to Window
key.set("n", "<C-Left>", "<C-w>h")
key.set("n", "<C-Up>", "<C-w>k")
key.set("n", "<C-Down>", "<C-w>j")
key.set("n", "<C-Right>", "<C-w>l")
-- Pane resizing
key.set("n", "<C-S-Up>", ":resize -2<CR>")
key.set("n", "<C-S-Down>", ":resize +2<CR>")
key.set("n", "<C-S-Left>", ":vertical resize -2<CR>")
key.set("n", "<C-S-Right>", ":vertical resize +2<CR>")

-- Re-indent automatically
key.set("n", "<C-h>", "gg=G")
key.set("i", "<C-h>", "<esc>gg=G")
