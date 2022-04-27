"Vim Configuration

" Vundle Configuration
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'preservim/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'lervag/vimtex'
Plugin 'ycm-core/YouCompleteMe'

" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'matt-mcginnis/vim-snippets'

" Needs to be last for icons to show up
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ryanoasis/vim-devicons'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax highlighting, line numbers and default tab
"""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
set encoding=UTF-8
set relativenumber
set tabstop=4

""""""""""""""""""""""""
" Normal Mode Remappings
""""""""""""""""""""""""

" Remapping Movement Keys
nnoremap h k
nnoremap k j
nnoremap j h
nnoremap J _
nnoremap L $
nnoremap H {
nnoremap K }

" Remapping visual block
nnoremap <C-b> <C-v>
nnoremap <C-v> <C-b>

nnoremap gh :wincmd k<CR>
nnoremap gk :wincmd j<CR>
nnoremap gj :wincmd h<CR>
nnoremap gl :wincmd l<CR>

nnoremap gH :wincmd K<CR>
nnoremap gK :wincmd J<CR>
nnoremap gJ :wincmd H<CR>
nnoremap gL :wincmd L<CR>

""""""""""""""""""""""""
" Visual Mode Remappings
""""""""""""""""""""""""

" Remapping Movement Keys
xnoremap h k
xnoremap k j
xnoremap j h
xnoremap J _
xnoremap L $
xnoremap H {
xnoremap K }

" Remapping visual block
xnoremap <C-b> <C-v>
xnoremap <C-v> <C-b>

" Remapping paste to retain yanked content
xnoremap p pgvy
xnoremap P Pgvy

" Fugitive Shortcuts
noremap <C-g>a :Git add
noremap <C-g>A :Git add --all<CR>
noremap <C-g>ca :Git commit -a<CR>
noremap <C-g>cl :Git clone
noremap <C-g>cm :Git commit -m
noremap <C-g>l :Git pull<CR>
noremap <C-g>p :Git push -u origin main<CR>
noremap <C-g>s :Git status<CR>
noremap <C-g>d :Git diff<CR>
noremap <C-g>r :Git restore

" Python Shortcut
noremap <C-p> :!python

" NERDTree Toggle
noremap <C-n> :NERDTreeToggle<CR>

" Command
noremap <Space> :
noremap <CR><Space> :!

" Airline Font and Theme
let g:airline_powerline_fonts=1
let g:airline_theme='bubblegum'

" UltiSnips Configuration
let g:UltiSnipsExpandTrigger="<C-Space>"
let g:UltiSnipsJumpForwardTrigger="<C-t>"
let g:UltiSnipsJumpBackwardTrigger="<C-r><C-t>"

" YouCompleteMe Configuration
let g:ycm_autoclose_preview_window_after_completion = 1

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
