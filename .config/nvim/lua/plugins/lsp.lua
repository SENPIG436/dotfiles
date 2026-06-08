return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "mason-org/mason.nvim",
      "mason-org/mason-lspconfig.nvim",
    },
    config = function()
      local lspconfig = require("lspconfig")

      local on_attach = function(client, bufnr)
        if _G.setup_lsp_keymaps then
          _G.setup_lsp_keymaps(client, bufnr)
        end
      end

      _G.lsp_config = {
        on_attach = on_attach,
        capabilities = capabilities,
      }

      vim.diagnostic.config({
        virtual_text = true,
        signs = true,
        update_in_insert = false,
        underline = true,
      })
    end,
  },
}
