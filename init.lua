-- leader keybind (space)
vim.g.mapleader = " "

vim.opt.termguicolors = true

vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.scrolloff = 10
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.backspace = {"start", "eol", "indent"}

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false

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
