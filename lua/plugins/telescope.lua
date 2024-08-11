return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    priority = 1000,
    config = function()
      local builtin = require("telescope.builtin")
      local keymap = vim.keymap
      local opts = { noremap = true, silent = true }
      keymap.set("n", "<leader>ff", builtin.find_files)
      keymap.set("n", "<C-f>", builtin.find_files, opts)
      keymap.set("n", "<leader>fa", "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>")
      keymap.set("n", "<leader>fg", builtin.live_grep)
      keymap.set("n", "<C-g>", builtin.live_grep)
      keymap.set("n", "<leader>fc", builtin.colorscheme)

      keymap.set("n", "<leader>fh", builtin.oldfiles)
      keymap.set("n", "<leader>fb", builtin.buffers)
    end,
  },
}
