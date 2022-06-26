"""""""""""""""""""""""""""""""""
" Various Custom General Settings                  
"""""""""""""""""""""""""""""""""
syntax on
colorscheme wal
set encoding=UTF-8
set modifiable
set number relativenumber
set tabstop=4
set shiftwidth=0
set splitbelow
set timeoutlen=1000 ttimeoutlen=0
set mouse=a

" Airline Font and Theme
let g:airline_powerline_fonts=1
let g:airline_theme='tomorrow'

" Nerdtree Icons and Git statuses
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
