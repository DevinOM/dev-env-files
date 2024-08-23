vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- general keymaps
keymap.set("i", "jk", "<ESC>", { desc = 'Exit insert mode with jk' })
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = 'Clear search highlights' })

-- keymap.set("n", "x", '"_x')

keymap.set("n", "<leader>+", "<C-a>", { desc = 'Increment number' })
keymap.set("n", "<leader>-", "<C-x>", { desc = 'Decrement number' })

-- Split windows
keymap.set("n", "<leader>sv", "<C-w>v", { desc = 'Split window vertically' })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = 'Split window horizontally' })
keymap.set("n", "<leader>se", "<C-w>=", { desc = 'Make split windows equal size' })
keymap.set("n", "<leader>sx", ":close<CR>", { desc = 'Close current split window' })

-- Tabs
keymap.set("n", "<leader>to", ":tabnew<CR>", { desc = 'Open new tab' })
keymap.set("n", "<leader>tx", ":tabclose<CR>", { desc = 'Close current tab' })
keymap.set("n", "<leader>tn", ":tabn<CR>", { desc = 'Go to next tab' })
keymap.set("n", "<leader>tp", ":tabp<CR>", { desc = 'Go to previous tab' })
keymap.set("n", "<leader>tf", ":tabnew %<CR>", { desc = 'Open current buffer in new tab' })

-- Move lines in Visual mode
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = 'Move lines up in visual mode' })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = 'Move lines down in visual mode' })

-- -- plugin keymaps
--
-- vim-maximizer
-- keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")
