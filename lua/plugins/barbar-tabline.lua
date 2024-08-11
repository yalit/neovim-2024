return {
  {
    "romgrk/barbar.nvim",
    dependencies = {
      "lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
      "nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
    },
    init = function()
      vim.g.barbar_auto_setup = true
    end,
    opts = {},
    config = function()
      local keymap = vim.keymap
      keymap.set("n", "<Tab>", "<Cmd>BufferNext<CR>")
      keymap.set("n", "<S-Tab>", "<Cmd>BufferPrevious<CR>")
      keymap.set("n", "<C-x>", "<Cmd>BufferClose<CR>")
    end,
  },
}
