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

for i = 1,10,1
do 
  vim.api.nvim_set_keymap('n', '<leader>' .. i,'<cmd>BufferLineGoToBuffer' .. i .. '<cr>', opt)
end

require('Comment').setup()

-- require('hop').setup { keys = 'etovxqpdygfblzhckisuran', jump_on_sole_occurrence = false }
-- vim.api.nvim_set_keymap('n', 'fa', '<cmd>HopChar2<cr>', opt)



-- require("neo-tree").setup({
--   close_if_last_window = false,
--   enable_diagnostics = false,
--   hide_root_node = true,
--   enable_git_status = false,
--   use_default_mappings = false,
--   window = {
--     width = 30,
--     mappings = {
--       ["<cr>"] = "open"
--     }
--   },
--   filesystem = {
--     filtered_items = {
--       show_hidden_count = false
--     }
--   },
--   default_component_configs = {
--     indent = {
--       indent_size = 2,
--       padding = 0,
--       with_markers = false
--     },
--     icon = {
--       folder_closed = " ",
--       folder_open = " ",
--       folder_empty = " ",
--     }
--   },
--   event_handlers = {
--
--     -- {
--     --   event = "file_opened",
--     --   handler = function(file_path)
--     --     require("neo-tree").close_all()
--     --   end
--     -- }
--
--   }
-- })

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


