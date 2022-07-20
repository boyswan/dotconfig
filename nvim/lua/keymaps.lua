function keymap(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

keymap("n", "<leader>fi", "<cmd>lua require'telescope.builtin'.git_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>")
keymap("n", "<leader>fe", "<cmd>lua require'telescope.builtin'.find_files()<cr>")
keymap("n", "<leader>fl", "<cmd>lua require'telescope.builtin'.live_grep()<cr>")
keymap("n", "<leader>fs", "<cmd>lua require'telescope.builtin'.git_status()<cr>")
keymap("n", "<leader>fd", "<cmd>lua require'telescope.builtin'.diagnostics()<cr>")

keymap("i", "jk", "<esc>")
keymap("n", "<leader>jk", "<cmd>:VMClear<cr>")

vim.cmd[[nnoremap <silent> <leader>k <cmd>lua vim.diagnostic.open_float()<CR>]]


keymap("n", "<leader>l", "<cmd>:bnext<cr>")
keymap("n", "<leader>h", "<cmd>:bprev<cr>")
keymap("n", "<leader>w", "<cmd>:bd<cr>")
keymap("n", "<leader>e", "<cmd>NeoTreeRevealToggle<cr>")
-- keymap("n", "<leader>i", "<cmd>sp<cr><cr>")
keymap("n", "<leader>o", "<cmd>vsp<cr><cr>")

vim.cmd[[set omnifunc=rescript#Complete]]
vim.cmd[[set completeopt+=preview]]
vim.cmd[[autocmd FileType rescript nnoremap <silent> <buffer> <leader>f :RescriptFormat<CR>]]
vim.cmd[[autocmd FileType rescript nnoremap <silent> <buffer> <leader>k :RescriptTypeHint<CR>]]
vim.cmd[[autocmd FileType rescript nnoremap <silent> <buffer> gd :RescriptJumpToDefinition<CR>]]
vim.cmd[[autocmd FileType rescript nnoremap <silent> <buffer> <leader>b :RescriptBuild<CR>]]
vim.cmd[[autocmd FileType rescript nnoremap <silent> <buffer> <leader>fd :Telescope coc diagnostics<CR>]]
vim.cmd[[autocmd FileType rescript nnoremap <silent> <buffer> <leader>fdw :Telescope coc workspace_diagnostics<CR>]]


vim.cmd[[autocmd FileType css nnoremap <silent> <buffer> <leader>f :Prettier<CR>]]
vim.cmd[[autocmd FileType javascript nnoremap <silent> <buffer> <leader>f :Prettier<CR>]]

