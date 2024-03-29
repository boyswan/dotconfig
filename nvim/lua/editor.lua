require('gitsigns').setup()

require("bufferline").setup{
    options = {
    },
    highlights = {
        buffer_selected = {
            underline = false,
            undercurl = false,
            italic = false,
        },
    },
}

local opt = { silent = true }

for i = 1,10,1
do 
  vim.api.nvim_set_keymap('n', '<leader>' .. i,'<cmd>BufferLineGoToBuffer' .. i .. '<cr>', opt)
end

require('Comment').setup()

vim.cmd[[hi LineNr guifg=#636872]]

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


