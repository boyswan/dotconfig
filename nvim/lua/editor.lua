require('gitsigns').setup()

require("bufferline").setup{
    options = {
    },
    highlights = {
        buffer_selected = {
            gui = "none"
        },
    },
}

local opt = { silent = true }
vim.api.nvim_set_keymap('n', '<leader>1','<cmd>BufferLineGoToBuffer 1<cr>', opt)
vim.api.nvim_set_keymap('n', '<leader>2','<cmd>BufferLineGoToBuffer 2<cr>', opt)
vim.api.nvim_set_keymap('n', '<leader>3','<cmd>BufferLineGoToBuffer 3<cr>', opt)
vim.api.nvim_set_keymap('n', '<leader>4','<cmd>BufferLineGoToBuffer 4<cr>', opt)
vim.api.nvim_set_keymap('n', '<leader>5','<cmd>BufferLineGoToBuffer 5<cr>', opt)

require('Comment').setup()
require("trouble").setup()
vim.api.nvim_set_keymap('n', '<leader>qd','<cmd>TroubleToggle document_diagnostics<cr>', opt)
vim.api.nvim_set_keymap('n', '<leader>qw','<cmd>TroubleToggle workspace_diagnostics<cr>', opt)

require('hop').setup { keys = 'etovxqpdygfblzhckisuran', jump_on_sole_occurrence = false }
vim.api.nvim_set_keymap('n', '<leader>s', '<cmd>HopChar2<cr>', opt)
