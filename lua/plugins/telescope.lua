return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local TelescopePrompt = {
        TelescopePromptBorder = {
          fg = "#A7C080",
          bg = "none",
        },
        TelescopePromptTitle = {
          fg = "#A7C080",
          bg = "none",
        },
        TelescopePreviewTitle = {
          fg = "#A7C080",
          bg = "none",
        },
        TelescopeResultsTitle = {
          fg = "#A7C080",
          bg = "none",
        },
        TelescopeBorder = {
          fg = "#A7C080",
          bg = "none",
        },
        TelescopeNormal = {
          fg = "#A7C080",
          bg = "none",
        },
        TelescopeSelectionCaret = {
          fg = "#A7C080",
        },
      }
      for hl, col in pairs(TelescopePrompt) do
        vim.api.nvim_set_hl(0, hl, col)
      end

      -- telescope + keymap
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<C-p>", builtin.find_files, {})
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })
      require("telescope").load_extension("ui-select")
    end,
  },
}
