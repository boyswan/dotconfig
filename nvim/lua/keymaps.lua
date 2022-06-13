function keymap(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

keymap("n", "<leader>fi", "<cmd>lua require'telescope.builtin'.git_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>")
keymap("i", "jk", "<esc>")

keymap("n", "<leader>l", "<cmd>:bnext<cr>")
keymap("n", "<leader>h", "<cmd>:bprev<cr>")
keymap("n", "<leader>w", "<cmd>:bd<cr>")

