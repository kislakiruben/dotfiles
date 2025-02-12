local opts = { noremap = true, silent = true }

vim.g['node_host_prog'] = vim.call('system', 'which neovim-node-host | tr -d "\n"')

vim.cmd [[autocmd TextYankPost * silent! lua vim.highlight.on_yank {on_visual=false, timeout=200}]]
-- cmd [[autocmd CmdLineEnter * set cmdheight=2]]
-- cmd [[autocmd CmdLineLeave * set cmdheight=0]]

vim.keymap.set("n", "<Space>", "<Nop>", opts)

-- <Tab> to navigate the completion menu
vim.keymap.set('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<Tab>"', { expr = true })
vim.keymap.set('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', { expr = true })

 -- Clear highlights
vim.keymap.set('n', '\\', '<cmd>noh<CR>')

vim.keymap.set('n', '<Leader>w', ':w<CR>')

-- keep visual selection after indenting
vim.keymap.set('v', '>', '>gv');
vim.keymap.set('v', '<', '<gv');

-- make the current window the only one on the screen
vim.keymap.set('n', 'qo', ':only<CR>')

-- move selection using jk
vim.keymap.set('v', '<S-j>', ':m\'>+<CR>gv=gv')
vim.keymap.set('v', '<S-k>', ':m-2<CR>gv=gv')

-- escape visual selection
vim.keymap.set('v', ';;', '<Esc>')

-- disable recording macros
vim.keymap.set('n', 'q', '<Nop>')
vim.keymap.set('n', 'Q', '<Nop>')

vim.keymap.set('n', 'qq', ':q<CR>')
vim.keymap.set('n', 'QQ', ':q!<CR>')

-- paste on selection
vim.keymap.set('x', 'p', [["_dP]])
