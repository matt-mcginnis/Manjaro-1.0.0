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
Plugin 'dylanaraps/wal.vim'
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
colorscheme wal
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
nnoremap <Space>v <C-v>

nnoremap <Space>m %

" Split Window Commands
nnoremap <Space>wh :wincmd k<CR>
nnoremap <Space>wk :wincmd j<CR>
nnoremap <Space>wj :wincmd h<CR>
nnoremap <Space>wl :wincmd l<CR>

nnoremap <Space>wH :wincmd K<CR>
nnoremap <Space>wK :wincmd J<CR>
nnoremap <Space>wJ :wincmd H<CR>
nnoremap <Space>wL :wincmd L<CR>

" Tab Commands
nnoremap <Space>tn :tabnew
nnoremap <Space>tl gt
nnoremap <Space>tj gT

nnoremap <Space>sv :vsplit
nnoremap <Space>sh :split

" Fugitive Shortcuts
nnoremap <Space>ga :Git add
nnoremap <Space>gA :Git add --all<CR>
nnoremap <Space>gca :Git commit -a<CR>
nnoremap <Space>gcl :Git clone
nnoremap <Space>gcm :Git commit -m
nnoremap <Space>gl :Git pull<CR>
nnoremap <Space>gp :Git push -u origin main<CR>
nnoremap <Space>gs :Git status<CR>
nnoremap <Space>gd :Git diff<CR>
nnoremap <Space>gr :Git restore

" Firefox Shortcut
nnoremap <Space>rf :!firefox

" Python Shortcut
nnoremap <Space>rp :!python

" Ranger Shortcut
nnoremap <Space>rr :!ranger

" NERDTree Toggle
nnoremap <Space>n :NERDTreeToggle<CR>

" Command
nnoremap ,t :
nnoremap ,T :!

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
xnoremap <Space>v <C-v>

xnoremap <Space>m %

" Remapping paste to retain yanked content
xnoremap p pgvy
xnoremap P Pgvy

" Split Window Commands
xnoremap <Space>wh :wincmd k<CR>
xnoremap <Space>wk :wincmd j<CR>
xnoremap <Space>wj :wincmd h<CR>
xnoremap <Space>wl :wincmd l<CR>

xnoremap <Space>wH :wincmd K<CR>
xnoremap <Space>wK :wincmd J<CR>
xnoremap <Space>wJ :wincmd H<CR>
xnoremap <Space>wL :wincmd L<CR>

" Tab Commands
xnoremap <Space>tn :tabnew
xnoremap <Space>tl gt
xnoremap <Space>tj gT

xnoremap <Space>sv :vsplit
xnoremap <Space>sh :split

" Fugitive Shortcuts
xnoremap <Space>ga :Git add
xnoremap <Space>gA :Git add --all<CR>
xnoremap <Space>gca :Git commit -a<CR>
xnoremap <Space>gcl :Git clone
xnoremap <Space>gcm :Git commit -m
xnoremap <Space>gl :Git pull<CR>
xnoremap <Space>gp :Git push -u origin main<CR>
xnoremap <Space>gs :Git status<CR>
xnoremap <Space>gd :Git diff<CR>
xnoremap <Space>gr :Git restore

" Firefox Shortcut
xnoremap <Space>rf :!firefox

" Python Shortcut
xnoremap <Space>rp :!python

" Ranger Shortcut
xnoremap <Space>rr :!ranger

" NERDTree Toggle
xnoremap <Space>n :NERDTreeToggle<CR>

" Airline Font and Theme
let g:airline_powerline_fonts=1
let g:airline_theme='tomorrow'

" UltiSnips Configuration
let g:UltiSnipsExpandTrigger="<Space>ss"
let g:UltiSnipsJumpForwardTrigger="<Space>st"
let g:UltiSnipsJumpBackwardTrigger="<Space>sT"

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
