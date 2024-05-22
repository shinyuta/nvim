return {
  "voldikss/vim-floaterm",

  config = function()

    vim.keymap.set("n", "<C-m>", ":FloatermNew --height=0.8 --width=0.8 --titleposition=center --title=WinterFloat<CR>", {})

  end,
}
