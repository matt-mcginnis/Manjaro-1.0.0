" Set colors for sneak hints
highlight Sneak guifg='#afff5f' guibg=black ctermfg=155 ctermbg=black
highlight SneakScope guifg='#5fffff' guibg=black ctermfg=81 ctermbg=black

" No labels
let g:sneak#label = 1

" Case insensitive sneak
let g:sneak#use_ic_scs = 1

" Immediately move to te next instance of search
let g:sneak#s_next = 1

" Remap ; and , to remove behavior from the plugin
map zxzx1 <Plug>Sneak_;
map zxzx2 <Plug>Sneak_,
