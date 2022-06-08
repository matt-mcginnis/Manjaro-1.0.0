vim.g.mapleader = ' '

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }

keymap('', '<F1>', ':setlocal spell! spelllang=en_us<CR>', {})
keymap('', '<Leader><Leader>', '<Plug>(easymotion-prefix)', {})
keymap('', '<Leader><Leader>k', '<Plug>(easymotion-j)', {})
keymap('', '<Leader><Leader>h', '<Plug>(easymotion-k)', {})

keymap('n', 'h', 'k', opts)
keymap('n', 'k', 'j', opts)
keymap('n', 'j', 'h', opts)

keymap('n', 'J', '0', opts)
keymap('n', 'L', '$', opts)
keymap('n', 'H', '{', opts)
keymap('n', 'K', '}', opts)

keymap('n', '<Leader>mt', 'H', opts)
keymap('n', '<Leader>mm', 'M', opts) 
keymap('n', '<Leader>mb', 'L', opts) 
keymap('n', '<Leader>mc', 'zz', opts)

keymap('n', '<Leader>c', ':', opts)
keymap('n', '<Leader>C', ':!', opts)

keymap('n', '<Leader>ef', ':!firefox', opts)
keymap('n', '<Leader>ep', ':!python', opts)

keymap('n', '<Leader>f', 'z', opts)

keymap('n', '<Leader>j', '%', opts)

keymap('n', '<Leader>ll', ':VimtexCompile<cr>', opts)

keymap('n', '<Leader>q', ':q<cr>', opts)
keymap('n', '<Leader>Q', ':q!<cr>', opts)

keymap('n', '<Leader>r', 'q', opts)
keymap('n', "'", '@', opts)

keymap('n', '<Leader>sf', ']s', opts)
keymap('n', '<Leader>sb', '[s', opts)
keymap('n', '<Leader>sc', 'z=', opts)

keymap('n', '<Leader>v', '<c-v>', opts)

keymap('n', '<Leader>w', ':w<cr>', opts)
keymap('n', '<Leader>W', ':wq<cr>', opts)

keymap('x', 'h', 'k', opts)
keymap('x', 'k', 'j', opts)
keymap('x', 'j', 'h', opts)

keymap('x', 'J', '0', opts)
keymap('x', 'L', '$', opts)
keymap('x', 'H', '{', opts)
keymap('x', 'K', '}', opts)

keymap('x', '<Leader>mt', 'H', opts)
keymap('x', '<Leader>mm', 'M', opts)
keymap('x', '<Leader>mb', 'L', opts)
keymap('x', '<Leader>mc', 'zz', opts)

keymap('x', '<Leader>j', '%', opts)