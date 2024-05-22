-- leader keybind (space)
vim.g.mapleader = " "

vim.opt.termguicolors = true

-- lazy nvim insertion
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- load lazy (moved to plugins.lua)
require("lazy").setup("plugins")
require("vim-options")
