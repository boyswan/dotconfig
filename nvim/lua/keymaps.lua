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

keymap("n", "<leader>y", "\"_dP")
keymap("i", "jk", "<esc>")
keymap("n", "<leader>jk", "<cmd>:VMClear<cr>")

vim.cmd[[nnoremap <silent> <leader>k <cmd>lua vim.diagnostic.open_float()<CR>]]

keymap("n", "<leader>l", "<cmd>:bnext<cr>")
keymap("n", "<leader>h", "<cmd>:bprev<cr>")
keymap("n", "<leader>q", "<cmd>:bd<cr>")
keymap("n", "<leader>w", "<C-w>c")
keymap("n", "<leader>e", "<cmd>Explore<cr><cr>")
keymap("n", "<leader>o", "<cmd>vsp<cr><cr>")

vim.cmd[[set omnifunc=rescript#Complete]]
vim.cmd[[set completeopt+=preview]]
vim.cmd[[autocmd FileType rescript nnoremap <silent> <buffer> <leader>f :RescriptFormat<CR>]]
vim.cmd[[autocmd FileType rescript nnoremap <silent> <buffer> <s-k> :RescriptTypeHint<CR>]]
vim.cmd[[autocmd FileType rescript nnoremap <silent> <buffer> gd :RescriptJumpToDefinition<CR>]]
vim.cmd[[autocmd FileType rescript nnoremap <silent> <buffer> <leader>b :RescriptBuild<CR>]]

vim.cmd[[autocmd FileType css nnoremap <silent> <buffer> <leader>f :Prettier<CR>]]
vim.cmd[[autocmd FileType scss nnoremap <silent> <buffer> <leader>f :Prettier<CR>]]
vim.cmd[[autocmd FileType javascript nnoremap <silent> <buffer> <leader>f :Prettier<CR>]]

local ft = require('Comment.ft')

ft.set("wgsl", "//%s")
