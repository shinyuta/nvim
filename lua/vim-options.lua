-- leader keybind found in init (to avoid the lazy message).
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set mouse=a")

-- Yank into system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y') -- yank motion
vim.keymap.set({ "n", "v" }, "<leader>Y", '"+Y') -- yank line

-- Delete into system clipboard
vim.keymap.set({ "n", "v" }, "<leader>d", '"+d') -- delete motion
vim.keymap.set({ "n", "v" }, "<leader>D", '"+D') -- delete line

-- Paste from system clipboard
vim.keymap.set("n", "<leader>p", '"+p') -- paste after cursor
vim.keymap.set("n", "<leader>P", '"+P') -- paste before cursor

vim.keymap.set("n", "<C-n>", ":Neotree filesystem toggle left<CR>", {})

-- windows/linux
-- vim.keymap.set("n", "<A-j>", ":m .+1<CR>==") -- move line up(n)
-- vim.keymap.set("n", "<A-k>", ":m .-2<CR>==") -- move line down(n)
-- vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv") -- move line up(v)
-- vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv") -- move line down(v)

-- neovim pane movement
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- error
vim.keymap.set("n", "<C-o>", ":Telescope noice<CR>")

-- bufferline close
vim.keymap.set("n", "<leader>q", ":Bdelete<CR>")


