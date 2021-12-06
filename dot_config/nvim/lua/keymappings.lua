local map = vim.api.nvim_set_keymap
local g = vim.g
local opts = { noremap = true, silent = true }

g.mapleader = ' '

-- better window movement
map("n", "<C-h>", "<C-w>h", { silent = true })
map("n", "<C-j>", "<C-w>j", { silent = true })
map("n", "<C-k>", "<C-w>k", { silent = true })
map("n", "<C-l>", "<C-w>l", { silent = true })

map("n", "<A-h>", ":vertical resize +2<CR>", opts)
map("n", "<A-l>", ":vertical resize -2<CR>", opts)
map("n", "<A-j>", ":resize +2<CR>", opts)
map("n", "<A-k>", ":resize -2<CR>", opts)

-- no more escape
map("i", "jk", "<ESC>", opts)

-- better indenting
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- else
map("n", "<leader>q", ":qa<CR>", opts)
map("n", "<leader>w", ":wa<CR>", opts)
map("i", "<C-s>", ":w", opts)
map("n", "<leader>h", ":noh<CR>", opts)
map('n', '<leader>t', ':lua NTGlobal["terminal"]:toggle()<cr>a', opts)
map("t", '<ESC>', '<C-\\><C-n>', opts)
map("t", '<C-k>', '<C-\\><C-n><C-w>k', opts)

-- Plugins
map('n', '<leader>e', ':NvimTreeToggle<CR>', opts)
map("n", "<leader>f", ":lua require('telescope.builtin').find_files()<CR>", opts)
map("n", "<leader>v", ":lua require('telescope.builtin').live_grep()<CR>", opts)

map('n', '<TAB>', ':BufferNext<CR>', opts)
map('n', '<S-TAB>', ':BufferPrevious<CR>', opts)
map("n", "<leader>c", ":BufferClose<CR>", opts)
map("n", "<leader>;", ":Dashboard<CR>", opts)

