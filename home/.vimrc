" Vim Configuration
" TODO: Work on Spell Check Toggle
" TODO: Work on Search and Replace Shortcuts

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
set modifiable
set number relativenumber
set tabstop=4
set shiftwidth=0
set splitbelow

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

nnoremap <Space>mt H
nnoremap <Space>mm M
nnoremap <Space>mb L
nnoremap <Space>mc zz

" Command
nnoremap <Space>c :
nnoremap <Space>C :!

" Firefox Shortcut
nnoremap <Space>ef :!firefox

" Python Shortcut
nnoremap <Space>ep :!python

" Ranger Shortcut
nnoremap <Space>er :!ranger

" Folds
nnoremap <Space>f z

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

" Match Parentheses/Brackets
nnoremap <Space>j %

" TexLive Compilation
nnoremap <Space>ll :VimtexCompile<CR>

" NERDTree Toggle
nnoremap <Space>n :NERDTreeToggle<CR>

nnoremap <Space>q :q<CR>
nnoremap <Space>Q :q!<CR>

" Recording Macros
nnoremap <Space>r q
nnoremap ' @

" Split Window Commands
nnoremap <Space>sh :wincmd k<CR>
nnoremap <Space>sk :wincmd j<CR>
nnoremap <Space>sj :wincmd h<CR>
nnoremap <Space>sl :wincmd l<CR>

nnoremap <Space>sH :wincmd K<CR>
nnoremap <Space>sK :wincmd J<CR>
nnoremap <Space>sJ :wincmd H<CR>
nnoremap <Space>sL :wincmd L<CR>

nnoremap <Space>ss :split
nnoremap <Space>sv :vsplit

" Tab Commands
nnoremap <Space>tn :tabnew
nnoremap <Space>td :tabclose<CR>
nnoremap <Space>t> :tabm +1
nnoremap <Space>t< :tabm -1
nnoremap <Space>tl gt
nnoremap <Space>tj gT

" Remapping visual block
nnoremap <Space>v <C-v>

nnoremap <Space>w :w<CR>
nnoremap <Space>W :wq<CR>

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

xnoremap <Space>mt H
xnoremap <Space>mm M
xnoremap <Space>mb L
xnoremap <Space>mc zz

" Remapping paste to retain yanked content
xnoremap p pgvy
xnoremap P Pgvy

" Command
xnoremap <Space>c :
xnoremap <Space>C :!

" Firefox Shortcut
xnoremap <Space>ef :!firefox

" Python Shortcut
xnoremap <Space>ep :!python

" Ranger Shortcut
xnoremap <Space>er :!ranger

" Folds
xnoremap <Space>f z

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

" Match Parentheses/Brackets
xnoremap <Space>j %

" TexLive Compilation
xnoremap <Space>ll :VimtexCompile<CR>

" NERDTree Toggle
xnoremap <Space>n :NERDTreeToggle<CR>

xnoremap <Space>q :q<CR>
xnoremap <Space>Q :q!<CR>

" Recording Macros
xnoremap <Space>r q
xnoremap ' @

" Split Window Commands
xnoremap <Space>sh :wincmd k<CR>
xnoremap <Space>sk :wincmd j<CR>
xnoremap <Space>sj :wincmd h<CR>
xnoremap <Space>sl :wincmd l<CR>

xnoremap <Space>sH :wincmd K<CR>
xnoremap <Space>sK :wincmd J<CR>
xnoremap <Space>sJ :wincmd H<CR>
xnoremap <Space>sL :wincmd L<CR>

xnoremap <Space>ss :split
xnoremap <Space>sv :vsplit

" Tab Commands
xnoremap <Space>tn :tabnew
xnoremap <Space>td :tabclose<CR>
xnoremap <Space>t> :tabm +1
xnoremap <Space>t< :tabm -1
xnoremap <Space>tl gt
xnoremap <Space>tj gT

" Remapping visual block
xnoremap <Space>v <C-v>

xnoremap <Space>w :w<CR>
xnoremap <Space>W :wq<CR>

" Airline Font and Theme
let g:airline_powerline_fonts=1
let g:airline_theme='tomorrow'

" UltiSnips Configuration
let g:UltiSnipsExpandTrigger="<C-Space>"
let g:UltiSnipsJumpForwardTrigger="<C-e>"
let g:UltiSnipsJumpBackwardTrigger="<C-n>"

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
