" Vim Configuration

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
set number relativenumber
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

nnoremap mt H
nnoremap mm M
nnoremap mb L

nnoremap tt zz

" Folds
nnoremap t z

" Remapping visual block
nnoremap ,v <C-v>

nnoremap ,, %

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

xnoremap mt H
xnoremap mm M
xnoremap mb L

xnoremap tt zz

" Folds
xnoremap t z

" Remapping visual block
xnoremap ,v <C-v>

xnoremap ,, %

" Remapping paste to retain yanked content
xnoremap p pgvy
xnoremap P Pgvy


noremap gh :wincmd k<CR>
noremap gk :wincmd j<CR>
noremap gj :wincmd h<CR>
noremap gl :wincmd l<CR>

noremap gH :wincmd K<CR>
noremap gK :wincmd J<CR>
noremap gJ :wincmd H<CR>
noremap gL :wincmd L<CR>

noremap ,sv :vsplit
noremap ,sh :split

" Fugitive Shortcuts
noremap ,ga :Git add
noremap ,gA :Git add --all<CR>
noremap ,gca :Git commit -a<CR>
noremap ,gcl :Git clone
noremap ,gcm :Git commit -m
noremap ,gl :Git pull<CR>
noremap ,gp :Git push -u origin main<CR>
noremap ,gs :Git status<CR>
noremap ,gd :Git diff<CR>
noremap ,gr :Git restore

" Firefox Shortcut
noremap ,rf :!firefox

" Python Shortcut
noremap ,rp :!python

" Ranger Shortcut
noremap ,rr :!ranger

" NERDTree Toggle
noremap ,n :NERDTreeToggle<CR>

" Command
noremap <Space> :
noremap ,<Space> :!

" Airline Font and Theme
let g:airline_powerline_fonts=1
let g:airline_theme='bubblegum'

" UltiSnips Configuration
let g:UltiSnipsExpandTrigger=",x"
let g:UltiSnipsJumpForwardTrigger=",t"
let g:UltiSnipsJumpBackwardTrigger=",rt"

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
