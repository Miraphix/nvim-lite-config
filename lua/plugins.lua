local gh = function(x) return 'https://github.com/' .. x end
vim.pack.add({
    -- lualine
    gh('nvim-lualine/lualine.nvim'),

    -- monokai theme
    gh('tanvirtin/monokai.nvim'),

    -- nvim-tree*
    gh('nvim-tree/nvim-tree.lua'),
    gh('nvim-tree/nvim-web-devicons'),

    -- vim-transparent
    gh('tribela/vim-transparent'),

    -- which-key
    gh('folke/which-key.nvim'),
})

require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        disabled_filetypes = {
            statusline = {},
            winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        always_show_tabline = true,
        globalstatus = false,
        refresh = {
            statusline = 100,
            tabline = 100,
            winbar = 100,
        },
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {},
}

require('nvim-tree').setup {}
