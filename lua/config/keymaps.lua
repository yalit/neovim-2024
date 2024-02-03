-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- LazyGit
keymap.set("n", "<C-k>", ":LazyGit<Return>", opts)

-- Close buffer
keymap.set("n", "<C-x>", ":bd<Return>")

-- Close all buffers
keymap.set("n", "<C-q>", ":qa<Return>")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G", opts)

-- Buffer/Tab movement
keymap.set("n", "<Tab>", ":BufferLineCycleNext<return>", opts)
keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<Return>", opts)

-- NeoTree
keymap.set("n", "<C-b>", ":Neotree toggle<Return>", opts)

-- Handle ToggleTerm
keymap.set("n", "<C-S-h>", ":ToggleTerm direction=horizontal<Return>", opts)
keymap.set("t", "<C-S-h>", "<C-\\><C-n>:ToggleTerm direction=horizontal<Return>", opts)
keymap.set("n", "<C-S-v>", ":ToggleTerm direction=vertical<Return>", opts)
keymap.set("t", "<C-S-v>", "<C-\\><C-n>:ToggleTerm direction=vertical<Return>", opts)

-- telescope
keymap.set("n", "<C-r>", ":lua require('telescope.builtin').lsp_references()<Return>", opts)
keymap.set("n", "<C-d>", ":lua require('telescope.builtin').lsp_definitions()<Return>", opts)
-- telescope grep string under cursor
keymap.set(
  "n",
  "<C-f>",
  ":lua require('telescope.builtin').grep_string({ search = vim.fn.expand('<cword>') })<Return>",
  opts
)
keymap.set(
  "n",
  "<leader>fs",
  ":lua require('telescope.builtin').grep_string({ search = vim.fn.expand('<cword>') })<Return>",
  opts
)
-- help
keymap.set("n", "<leader>fh", ":Telescope help_tags<Return>", opts)
keymap.set("n", "<leader>fo", ":Telescope commands<Return>", opts)
keymap.set("n", "<leader>fk", ":Telescope keymaps<Return>", opts)
