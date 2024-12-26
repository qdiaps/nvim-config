vim.g.mapleader = " "

vim.keymap.set("n", "<C-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>")

vim.keymap.set("n", "<M-e>", ":NvimTreeToggle<CR>")

vim.keymap.set("n", "<M-v>", ":vsplit<CR>")
vim.keymap.set("n", "<M-h>", ":split<CR>")

vim.keymap.set('n', '<leader>X', ':BufferLinePickClose<CR>')
vim.keymap.set("n", "<leader>x", ":BufferLineSortByTabs<CR>:BufferLineCloseRight<CR>")

vim.keymap.set("i", "jj", "<Esc>")

vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "<s-Tab>", ":BufferLineCyclePrev<CR>")

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files)
