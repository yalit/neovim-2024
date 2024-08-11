return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    config = function()
      vim.keymap.set("n", "<C-n>", ":Neotree toggle reveal<CR>", {})
      vim.keymap.set("i", "<C-n>", "<Esc>:Neotree toggle reveal<CR>", {})
    end,
  },
}
