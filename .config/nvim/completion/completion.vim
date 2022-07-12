" Completion and Snippet Configuration

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()   
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use <C-f> for jump forward a placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<C-f>'

" Use <C-b> for jump backwards a placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<C-b>'

nnoremap <Leader>cc :CocConfig<CR>
nnoremap <Leader>cl :CocList<CR>
nnoremap <Leader>cm :CocList marketplace<CR>
