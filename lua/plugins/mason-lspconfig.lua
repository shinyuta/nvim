return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  { "WhoIsSethDaniel/mason-tool-installer.nvim" },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    config = function()
      require("mason-lspconfig").setup({
        -- languages (https://github.com/williamboman/mason-lspconfig.nvim)
        ensure_installed = { "lua_ls", "ts_ls", "jdtls", "jsonls", "cssls", "html" },
        opts = {
          auto_install = true,
        },
      })

      local lspconfig = require("lspconfig")
      local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lsp_attach = function(client, bufnr)
        -- Create your keybindings here...
      end

      require("mason-lspconfig").setup_handlers({
        function(server_name)
          -- Don't call setup for JDTLS Java LSP because it will be setup from a separate config
          if server_name ~= "jdtls" then
            lspconfig[server_name].setup({
              on_attach = lsp_attach,
              capabilities = lsp_capabilities,
            })
          end
        end,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require("lspconfig")

      -- languages setup
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })

      lspconfig.ts_ls.setup({
        capabilities = capabilities,
      })

      lspconfig.eslint.setup({
        --- ...
        on_attach = function(client, bufnr)
          vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = bufnr,
            command = "EslintFixAll",
          })
        end,
      })
    end,
  },
}
