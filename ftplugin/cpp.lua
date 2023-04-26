vim.keymap.set("n", "<leader>h", ":ClangdSwitchSourceHeader<CR>", { silent = true })

vim.keymap.set("n", "<F5>", ":TermExec cmd='./build.sh'<CR>")

-- vim.keymap.set("<F5>", function()
--     vim.cmd[[normal :w]]
--     vim.cmd[[normal :!zsh -c "pdflatex %"<CR><CR>]]
-- end)
vim.opt.makeprg = "./build.sh"
vim.keymap.set("n", "<localleader>m", ":make<CR>")
vim.keymap.set("n", "<localleader>e", ":cw<CR>")
