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
Plugin 'tpope/vim-fugitive'
Plugin 'preservim/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'lervag/vimtex'

" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'matt-mcginnis/vim-snippets'

Plugin 'ycm-core/YouCompleteMe'

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

" Airline Font and Theme
let g:airline_powerline_fonts=1
let g:airline_theme='bubblegum'

" UltiSnips Configuration
let g:UltiSnipsExpandTrigger="<C-Space>"
let g:UltiSnipsJumpForwardTrigger="<C-t>"
let g:UltiSnipsJumpBackwardTrigger="<C-r><C-t>"

" YouCompleteMe Configuration
let g:ycm_autoclose_preview_window_after_completion = 1

" Fugitive Shortcuts
map <C-g>a :Git add
map <C-g>aa :Git add --all<CR>
map <C-g>ca :Git commit -a<CR>
map <C-g>cl :Git clone
map <C-g>cm :Git commit -m
map <C-g>l :Git pull<CR>
map <C-g>p :Git push -u origin main<CR>
map <C-g>s :Git status<CR>

" NERDTree Toggle
map <C-n> :NERDTreeToggle<CR>

" Syntax highlighting, line numbers and default tab
syntax on
set number
set tabstop=4
