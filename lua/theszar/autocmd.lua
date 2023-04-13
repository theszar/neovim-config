vim.api.nvim_create_augroup('bufcheck', {clear = true})
--
-- highlight yanks
vim.api.nvim_create_autocmd('TextYankPost', {
    group    = 'bufcheck',
    pattern  = '*',
    callback = function() vim.highlight.on_yank{higroup="Visual", timeout=200} end })

-- Return to last edit position when opening files
vim.api.nvim_create_autocmd('BufWinEnter',  {
    group    = 'bufcheck',
    pattern  = '*',
    callback = function()
        if vim.fn.line("'\"") > 0 and vim.fn.line("'\"") <= vim.fn.line("$") then
            vim.fn.setpos('.', vim.fn.getpos("'\""))
            vim.cmd('normal zz') -- centering window works with BufWinEnter because it 
                                 -- requires buffer to be displayed in the window so 
                                 --with BufReadPost this will fail
            vim.cmd('silent! foldopen')
            end end })
