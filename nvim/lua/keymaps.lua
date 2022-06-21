function keymap(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

keymap("n", "<leader>fi", "<cmd>lua require'telescope.builtin'.git_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>")
keymap("n", "<leader>fe", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>")
keymap("i", "jk", "<esc>")

keymap("n", "<leader>l", "<cmd>:bnext<cr>")
keymap("n", "<leader>h", "<cmd>:bprev<cr>")
keymap("n", "<leader>w", "<cmd>:bd<cr>")
keymap("n", "<leader>e", "<cmd>:NeoTreeFocusToggle<cr>")


vim.cmd[[set omnifunc=rescript#Complete]]
vim.cmd[[set completeopt+=preview]]
vim.cmd[[autocmd FileType rescript nnoremap <silent> <buffer> <leader>f :RescriptFormat<CR>]]
vim.cmd[[autocmd FileType rescript nnoremap <silent> <buffer> <leader>k :RescriptTypeHint<CR>]]
vim.cmd[[autocmd FileType rescript nnoremap <silent> <buffer> gd :RescriptJumpToDefinition<CR>]]
vim.cmd[[autocmd FileType rescript nnoremap <silent> <buffer> <leader>b :RescriptBuild<CR>]]





