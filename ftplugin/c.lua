vim.keymap.set("n", "<leader>h", ":ClangdSwitchSourceHeader<CR>", {silent=true})

vim.keymap.set("n", "<F5>", ":TermExec cmd='./build.sh'<CR>")
