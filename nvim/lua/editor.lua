require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    show_current_context = false,
    show_current_context_start = false,
}

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

require('Comment').setup()
require("neo-tree").setup()
