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

require'nvim-web-devicons'.setup {
 default = true;
}
