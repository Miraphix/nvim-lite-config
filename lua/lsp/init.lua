-- mason
require('mason').setup {}

vim.diagnostic.config({ virtual_text = true }) -- 行内文本提示
vim.lsp.config['lua_ls'] = {
    cmd = { 'lua-language-server' },
    filetypes = { 'lua' },
    root_markers = { { '.luarc.json', '.luarc.jsonc' }, '.git' },
    settings = {
        Lua = {
            runtime = { version = "LuaJIT", path = vim.split(package.path, ";") }, -- Lua 运行时
            diagnostics = { globals = { "vim" } },                                 -- 忽略全局变量 vim 的警告
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false,
            },
            format = { enable = true }, -- 启用格式化
        },
    }
}

