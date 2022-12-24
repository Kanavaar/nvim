local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

-- space as leader
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--Modes
--    normal mode = "n"
--    insert mode = "i"
--    visual mode  = "v"
--    visual block = "x"
--    visual linee = "t"
--    command mode = "c"
--
--
-- NORMAL
--
-- better window navigation
--
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical-resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical-resize +2<CR>", opts)

-- Move selected text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")

-- File manager
keymap("n", "<leader>e", ":Lex 30<CR>", opts)

-- quit and write
keymap("n", "<leader>q", ":q<cr>", opts)
keymap("n", "<leader>w", ":w<cr>", opts)

-- INSERT
keymap("i", "jk", "<ESC>", opts)

