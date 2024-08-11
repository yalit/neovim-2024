return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "cssls",
          "html",
          "jsonls",
          "tsserver",
          "phpactor",
          "pyright",
          "tailwindcss",
          "yamlls",
          "remark_ls",
          "mdx_analyzer",
          "twiggy_language_server",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.cssls.setup({
        capabilities = capabilities,
      })
      lspconfig.html.setup({
        capabilities = capabilities,
      })
      lspconfig.jsonls.setup({
        capabilities = capabilities,
      })
      lspconfig.tsserver.setup({
        capabilities = capabilities,
      })
      lspconfig.phpactor.setup({
        capabilities = capabilities,
      })
      lspconfig.pyright.setup({
        capabilities = capabilities,
      })
      lspconfig.tailwindcss.setup({
        capabilities = capabilities,
      })
      lspconfig.yamlls.setup({
        capabilities = capabilities,
      })
      lspconfig.remark_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.mdx_analyzer.setup({
        capabilities = capabilities,
      })
      lspconfig.twiggy_language_server.setup({
        capabilities = capabilities,
      })

      local buf = vim.lsp.buf
      local keymap = vim.keymap
      keymap.set("n", "<leader>ck", buf.signature_help, { desc = "Signature Help" })
      keymap.set("n", "<leader>cd", buf.type_definition, { noremap = true, desc = "Type definition" })
      keymap.set("n", "<leader>cr", buf.rename, { desc = "Rename" })
      keymap.set("n", "<leader>cf", buf.references, { desc = "Find references" })
      keymap.set({ "n", "v" }, "<leader>ca", buf.code_action, { desc = "Code actions" })
    end,
  },
}
