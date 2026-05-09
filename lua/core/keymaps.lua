-- map function
local map = vim.keymap.set
vim.g.mapleader = '\\'
local opts = {
    noremap = true,
    silent = true
}

-- 显示时间喵
map('n', '<F2>', ":echo '现在时间是' . strftime('%c') . ' 喵~'<CR>", opts)

-- lsp迁移
map('n', 'gD', vim.lsp.buf.declaration, opts)
map('n', 'gd', vim.lsp.buf.definition, opts)
map('n', 'gr', vim.lsp.buf.references, opts)
map('n', 'gk', vim.lsp.buf.hover, opts)
map('n', 'gi', vim.lsp.buf.implementation, opts)
map('n', '<C-k>', vim.lsp.buf.signature_help, opts)
map('n', '<space>f', function() vim.lsp.buf.format { async = true } end, opts)

-- terminal设置
-- 结果有ToggleTerm用了，不赖
map('t', '<C-w><Esc>', '<C-\\><C-n>', {noremap = true})
map('t', '<C-w>j', '<C-\\><C-n><C-w>j', {noremap = true})
map('t', '<C-w>k', '<C-\\><C-n><C-w>k', {noremap = true})
map('t', '<C-w>h', '<C-\\><C-n><C-w>h', {noremap = true})
map('t', '<C-w>l', '<C-\\><C-n><C-w>l', {noremap = true})
-- map('n', '<leader>t', ':split | terminal<CR>:resize 9<CR>a', {noremap = true})
map('n', '<C-\\><C-\\>', ':ToggleTerm<CR>', {noremap = true})
map('n', '<C-\\>f', ':ToggleTerm direction=float<CR>', {noremap = true})
map('n', '<C-\\>h', ':ToggleTerm direction=horizontal<CR>', {noremap = true})
map('n', '<C-\\>v', ':ToggleTerm direction=vertical<CR>', {noremap = true})
map('t', '<C-\\><C-\\>', '<C-\\><C-n>:ToggleTerm<CR>', {noremap = true})

-- BufferLine设置
map({'n', 'i'}, '<C-h>', '<Esc>:BufferLineCyclePrev<CR>', opts)
map({'n', 'i'}, '<C-l>', '<Esc>:BufferLineCycleNext<CR>', opts)
map('n', '<leader>o', ':BufferLineCloseOthers<CR>', opts)

-- Code-Runner
map('n', '<leader>r', ':RunCode<CR>', opts)
map('n', '<leader>c', ':RunClose<CR>', opts)

-- makefile
map('n', '<leader>m ', ':make ', opts)
map('n', '<leader>mm', ':make<CR>', opts)
map('n', '<leader>mc', ':make clean<CR>', opts)
map('n', '<leader>mr', ':make run<CR>', opts)
map('n', '<leader>mf', ':make format<CR>', opts)
map('n', '<leader>md', ':make debug<CR>', opts)
map('n', '<leader>mb', ':make build<CR>', opts)

-- justfile
map('n', '<leader>j ', ':MyJustArg ', opts)
map('n', '<leader>jj', ':MyJustArg<CR>', opts)
map('n', '<leader>ja', ':MyJustArg all<CR>', opts)
map('n', '<leader>jc', ':MyJustArg clean<CR>', opts)
map('n', '<leader>jr', ':MyJustArg run<CR>', opts)
map('n', '<leader>jf', ':MyJustArg format<CR>', opts)
map('n', '<leader>jd', ':MyJustArg debug<CR>', opts)
map('n', '<leader>jb', ':MyJustArg build<CR>', opts)
map('n', '<leader>jt', ':MyJustArg test<CR>', opts)
map('n', '<leader>jv', ':MyJustArg run ', opts)

-- 调整窗口大小
map('n', '<C-Up>', ':resize -2<CR>', opts)
map('n', '<C-Down>', ':resize +2<CR>', opts)
map('n', '<C-Left>', ':vertical resize -2<CR>', opts)
map('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- v模式连续调整缩进
map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)

-- 更方便的注释
-- 终端会把/识别为_，为什么呢()
map('v', '<leader>/', ':s/^/', opts)
map('v', '<leader>d', ':s/^.\\{-}\\s//<CR>', opts)

-- 撤回，保存，HJKL
map({'n', 'i', 'v'}, '<C-Z>', '<Esc>u')
map({'n', 'i', 'v'}, '<C-S>', '<Esc>:w<CR>')
map({'n', 'v'}, 'H', '^')
map({'n', 'v'}, 'L', '$')
map('n', 'J', 'j')
map('i', 'jk', '<ESC>')

-- NvimTree
map({'n', 'i'}, '<A-f>', '<Esc>:NvimTreeFocus<CR>', opts)
map({'n', 'i'}, '<A-e>', '<Esc>:NvimTreeToggle<CR>', opts)
map('n', '<leader>q', ':qa<CR>', opts)

