-- helpers
local cmd = vim.cmd -- to execute Vim commands e.g. cmd('pwd')
local g = vim.g     -- a table to access global variables

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out,                            "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

--config
g['mapleader'] = ' '      -- leader key
g['maplocalleader'] = ' ' -- leader key

g['node_host_prog'] = vim.call('system', 'which neovim-node-host | tr -d "\n"')

-- register
g['peekup_paste_before'] = '<leader>P'
g['peekup_paste_after'] = '<leader>p'

-- format on save
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("lsp", { clear = true }),
  callback = function(args)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = args.buf,
      callback = function()
        vim.lsp.buf.format { async = false, id = args.data.client_id }
      end,
    })
  end
})

cmd [[autocmd TextYankPost * silent! lua vim.highlight.on_yank {on_visual=false, timeout=200}]]
cmd [[autocmd CmdLineEnter * set cmdheight=2]]
cmd [[autocmd CmdLineLeave * set cmdheight=0]]

-- mappings
map('n', '<Leader>sv', ':source $MYVIMRC<CR>')
map('n', '<Space>', '<Nop>', { noremap = true, silent = true })

-- <Tab> to navigate the completion menu
map('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<Tab>"', { expr = true })
map('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', { expr = true })

map('n', '\\', '<cmd>noh<CR>') -- Clear highlights

map('n', '<Leader>j', ':j<CR>')
map('n', '<Leader>J', ':j!<CR>')

map('n', '<Leader>w', ':w<CR>')

-- keep visual selection after indenting
map('v', '>', '>gv');
map('v', '<', '<gv');

-- copy file path
map('n', '<Leader>cp', ':let @*=expand("%")<CR>')

map('n', '<S-u>', '<C-u>')
map('n', '<S-d>', '<C-d>')

map('n', 'qo', ':only<CR>')

map('', '<C-S-Left>', ':vertical resize -5<CR>')
map('', '<C-S-Right>', ':vertical resize +5<CR>')
map('', '<C-S-Up>', ':resize +5<CR>')
map('', '<C-S-Down>', ':resize -5<CR>')

-- switch window using hjkl
map('n', '<S-h>', '<C-w>h')
map('n', '<S-j>', '<C-w>j')
map('n', '<S-k>', '<C-w>k')
map('n', '<S-l>', '<C-w>l')

-- move selection using jk
map('v', '<S-j>', ':m\'>+<CR>gv=gv')
map('v', '<S-k>', ':m-2<CR>gv=gv')

-- escape visual selection
map('v', ';;', '<Esc>')

-- disable recording macros
map('n', 'q', '<Nop>')
map('n', 'Q', '<Nop>')

map('n', 'qq', ':q<CR>')
map('n', 'QQ', ':q!<CR>')

-- paste on selection
map('x', 'p', [["_dP]])
