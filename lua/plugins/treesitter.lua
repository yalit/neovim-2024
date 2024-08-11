return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      ensure_installed = { "lua", "vim", "javascript", "html", "python", "php", "scss", "css", "html", "gitignore" },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    },
  },
}
