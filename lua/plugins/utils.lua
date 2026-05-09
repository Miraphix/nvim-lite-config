require('nvim-tree').setup {}

require('nvim-autopairs').setup {}

require("blink.cmp").setup {
    keymap = { preset = "enter" },
    sources = {
        default = { "lsp", "path", "snippets", "buffer" },
    },
}

