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
vim.api.nvim_set_keymap('n', '<leader>q','<cmd>TroubleToggle document_diagnostics<cr>', opt)
vim.api.nvim_set_keymap('n', '<leader>qw','<cmd>TroubleToggle workspace_diagnostics<cr>', opt)

require('hop').setup { keys = 'etovxqpdygfblzhckisuran', jump_on_sole_occurrence = false }
vim.api.nvim_set_keymap('n', 'fa', '<cmd>HopChar2<cr>', opt)



require("neo-tree").setup({
  close_if_last_window = false,
  enable_diagnostics = false,
  hide_root_node = true,
  enable_git_status = false,
  window = {
    width = 30
  },
  filesystem = {
    filtered_items = {
      show_hidden_count = false
    }
  },
  default_component_configs = {
    indent = {
      indent_size = 2,
      padding = 0,
      with_markers = false
    },
    icon = {
      folder_closed = " ",
      folder_open = " ",
      folder_empty = " ",
    }
  },
  event_handlers = {

    -- {
    --   event = "file_opened",
    --   handler = function(file_path)
    --     require("neo-tree").close_all()
    --   end
    -- }

  }
})

vim.cmd[[hi NeoTreeRootName guifg=#98BBF5 gui=NONE]]
vim.cmd[[hi NeoTreeNormal guibg=#181825]]
vim.cmd[[hi NeoTreeNormalNC guibg=#181825]]
vim.cmd[[hi NeoTreeSignColumn guibg=#181825]]

