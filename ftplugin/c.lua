vim.keymap.set("n", "<leader>h", ":ClangdSwitchSourceHeader<CR>", {silent=true})

vim.opt.makeprg = "./build.sh"
vim.keymap.set("n", "<localleader>m", ":make<CR>")
vim.keymap.set("n", "<localleader>e", ":cw<CR>")
