" This is the default extra key bindings
let g:fzf_action = {
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-h': 'split',
      \ 'ctrl-v': 'vsplit' }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and 
" previous-history instead of down and up. If you don't like the change, 
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

map <leader>ff :Files<CR>
map <leader>fb :Buffers<CR>
map <leader>fg :Rg<CR>
map <leader>ft :Tags<CR>
map <leader>fm :Marks<CR>

let g:fzf_tags_command = 'ctags -R'
let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline --bind tab:down --bind shift-tab:up --bind space:toggle'
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden'
