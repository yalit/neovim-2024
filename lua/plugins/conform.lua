return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      twig = { "twig-cs-fixer" },
      php = { "php_cs_fixer" },
      html = {"prettier"},
      css = {"prettier"},
    },
  },
}
