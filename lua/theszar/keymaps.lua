vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set("t", "<Space>", "<Space>",{silent = true, noremap = true} )

-- better up/down
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- Move to window using the <ctrl> hjkl keys
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

-- Resize window using <ctrl> arrow keys
vim.keymap.set("n", "<A-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
vim.keymap.set("n", "<A-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
vim.keymap.set("n", "<A-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
vim.keymap.set("n", "<A-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

vim.keymap.set("t", "<A-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
vim.keymap.set("t", "<A-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
-- Move Lines
vim.keymap.set("n", "<C-S-j>", "<cmd>m .+1<cr>==", { desc = "Move down" })
vim.keymap.set("n", "<C-S-k>", "<cmd>m .-2<cr>==", { desc = "Move up" })
vim.keymap.set("i", "<C-S-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
vim.keymap.set("i", "<C-S-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
vim.keymap.set("v", "<C-S-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
vim.keymap.set("v", "<C-S-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

-- Navigate buffers
vim.keymap.set("n", "<localleader>]", ":bnext<CR>", {silent=true})
vim.keymap.set("n", "<localleader>[", ":bprevious<CR>", {silent=true})

--Delete buffers without closing windows buffdelete plugin
vim.keymap.set("n", "<localleader>d", ":Bdelete<CR>", {silent=true})
vim.keymap.set("n", "<localleader>q", ":Bdelete!<CR>", {silent=true})

--Indent lines in visual mode
vim.keymap.set("n", "<", "<<", {silent = true, noremap = true})
vim.keymap.set("n", ">", ">>", {silent = true, noremap = true})
vim.keymap.set("v", "<", "<gv", {silent = true, noremap = true})
vim.keymap.set("v", ">", ">gv",{silent = true, noremap = true})

-- Toggle between relative and absolute line numbers
vim.keymap.set("n", "<localleader>r", ":set rnu!<CR>", {silent=true})
-- C++ switch between header and cpp file 
--vim.keymap.set("n", "<tab>", ":ClangdSwitchSourceHeader<CR>",{silent = true})

vim.keymap.set("n", "<leader>1", ":vsp<CR>", {silent=true})
vim.keymap.set("n", "<leader>2", ":sp<CR>", {silent=true})
vim.keymap.set("n", "<leader>wq", ":q<CR>", {silent=true})
