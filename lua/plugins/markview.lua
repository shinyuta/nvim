return {
  "OXY2DEV/markview.nvim",
  lazy = false, -- Recommended
  -- ft = "markdown" -- If you decide to lazy-load anyway

  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    -- Modes where preview is shown
    modes = { "n", "i", "nc", "c" },

    -- Modes where text you are
    -- editing isn't changed
    hybrid_modes = { "i" },
  }
}
