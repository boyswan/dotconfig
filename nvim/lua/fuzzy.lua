local actions = require("telescope.actions")

require("telescope").setup({
  defaults = {
    initial_mode = 'insert',
    mappings = {
      n = {
        ["w"] = actions.close,
        ["t"] = actions.select_tab
      },
    },
  },
})

require('telescope').load_extension('coc')

require'nvim-web-devicons'.setup {
  default = true;
}
