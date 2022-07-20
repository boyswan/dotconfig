require('gitsigns').setup()

require("bufferline").setup{
    options = {
    },
    highlights = {
        buffer_selected = {
            gui = "NONE"
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

vim.cmd[[hi TSParameter gui=NONE]]
vim.cmd[[hi TSNamespace gui=NONE]]
vim.cmd[[hi TSTagAttribute gui=NONE]]
vim.cmd[[hi TSParameter gui=NONE]]
vim.cmd[[hi TSConditional gui=NONE]]

vim.cmd[[hi DiagnosticVirtualTextWarn guibg=#1E1D2D guifg=#F9C296]]
vim.cmd[[hi DiagnosticVirtualTextError guibg=#1E1D2D guifg=#F08FA9]]
vim.cmd[[hi DiagnosticVirtualTextInfo guibg=#1E1D2D guifg=#89DCEB]]
vim.cmd[[hi DiagnosticVirtualTextHint guibg=#1E1D2D guifg=#ACE5AB]]

vim.cmd[[hi DiagnosticWarn guibg=#1E1D2D guifg=#F9C296]]
vim.cmd[[hi DiagnosticError guibg=#1E1D2D guifg=#F08FA9]]
vim.cmd[[hi DiagnosticInfo guibg=#1E1D2D guifg=#89DCEB]]
vim.cmd[[hi DiagnosticHint guibg=#1E1D2D guifg=#ACE5AB]]

vim.cmd[[sign define DiagnosticSignError texthl=DiagnosticSignError text=]]
vim.cmd[[sign define DiagnosticSignWarn texthl=DiagnosticSignWarn text=]]
vim.cmd[[sign define DiagnosticSignHint texthl=DiagnosticSignHint text=]]
vim.cmd[[sign define DiagnosticSignInfo texthl=DiagnosticSignInfo text=]]


