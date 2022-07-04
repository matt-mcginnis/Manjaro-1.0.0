let g:signify_sign_add               = '*'
let g:signify_sign_delete            = '-'
let g:signify_sign_delete_first_line = '_'
let g:signify_sign_change            = '~'

let g:signify_sign_show_count = 0
let g:signify_sign_show_text = 1

nmap <leader>gk <plug>(signify-next-hunk)
nmap <leader>gh <plug>(signify-prev-hunk)
nmap <leader>gK 9999<leader>gK
nmap <leader>gH 9999<leader>gH
