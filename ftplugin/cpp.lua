vim.keymap.set("n", "<leader>h", ":ClangdSwitchSourceHeader<CR>", {silent=true})

vim.keymap.set("n", "<F5>", ":TermExec cmd='./build.sh'<CR>")

-- vim.keymap.set("<F5>", function()
--     vim.cmd[[normal :w]]
--     vim.cmd[[normal :!zsh -c "pdflatex %"<CR><CR>]]
-- end)

