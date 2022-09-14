local actions = require("telescope.actions")

require("telescope").setup({
  defaults = {
    file_ignore_patterns = {".git/", ".cache", "%.png", "%.lock"},
    initial_mode = 'insert',
    mappings = {
      n = {
        ["w"] = actions.close,
        ["t"] = actions.select_tab
      },
    },
  },
})

require'nvim-web-devicons'.setup {
  default = true;
}
