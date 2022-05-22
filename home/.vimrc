"Vim Configuration
" TODO: Swap Nerdtree/Ranger for Netrw

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
Plugin 'easymotion/vim-easymotion'
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

let mapleader=' '

" Source Vim Scripts
source ~/.vim/comments.vim

" Comment/Uncomment
map <Leader>kc :call Comment()<CR>
map <Leader>ku :call Uncomment()<CR>
map <F1> :setlocal spell! spelllang=en_us<CR>

map <Leader><Leader> <Plug>(easymotion-prefix)
map <Leader><Leader>k <Plug>(easymotion-j)
map <Leader><Leader>h <Plug>(easymotion-k)

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

nnoremap gL g$
nnoremap gJ g0
nnoremap gk gj
nnoremap gh gk

nnoremap <Leader>mt H
nnoremap <Leader>mm M
nnoremap <Leader>mb L
nnoremap <Leader>mc zz

" Command
nnoremap <Leader>c :
nnoremap <Leader>C :!

" Firefox Shortcut
nnoremap <Leader>ef :!firefox

" Python Shortcut
nnoremap <Leader>ep :!python

" Ranger Shortcut
nnoremap <Leader>er :!ranger

" Folds
nnoremap <Leader>f z

" Fugitive Shortcuts
nnoremap <Leader>ga :Git add
nnoremap <Leader>gA :Git add --all<CR>
nnoremap <Leader>gca :Git commit -a<CR>
nnoremap <Leader>gcl :Git clone
nnoremap <Leader>gcm :Git commit -m
nnoremap <Leader>gl :Git pull<CR>
nnoremap <Leader>gp :Git push -u origin main<CR>
nnoremap <Leader>gs :Git status<CR>
nnoremap <Leader>gd :Git diff<CR>
nnoremap <Leader>gr :Git restore

" Match Parentheses/Brackets
nnoremap <Leader>j %

" TexLive Compilation
nnoremap <Leader>ll :VimtexCompile<CR>

" Vimgrep (Locate)
nnoremap <Leader>lv :vim /
nnoremap <Leader>lc :cope<CR>
nnoremap <Leader>ln :cnext<CR>
nnoremap <Leader>lp :cprev<CR>

" NERDTree Toggle
nnoremap <Leader>n :NERDTreeToggle<CR>

nnoremap <Leader>q :q<CR>
nnoremap <Leader>Q :q!<CR>

" Recording Macros
nnoremap <Leader>r q
nnoremap ' @

" Split Window Commands
nnoremap <Leader>sd :wincmd c<CR>
nnoremap <Leader>so :wincmd o<CR>

nnoremap <Leader>sh :wincmd k<CR>
nnoremap <Leader>sk :wincmd j<CR>
nnoremap <Leader>sj :wincmd h<CR>
nnoremap <Leader>sl :wincmd l<CR>

nnoremap <Leader>sH :wincmd K<CR>
nnoremap <Leader>sK :wincmd J<CR>
nnoremap <Leader>sJ :wincmd H<CR>
nnoremap <Leader>sL :wincmd L<CR>

nnoremap <Leader>s- :resize -5<CR>
nnoremap <Leader>s= :resize +5<CR>
nnoremap <Leader>s, :vertical resize -5<CR>
nnoremap <Leader>s. :vertical resize +5<CR>

nnoremap <Leader>su :split#<CR>

nnoremap <Leader>sw <C-w>w

nnoremap <Leader>sn :split
nnoremap <Leader>sv :vsplit

" Spellcheck
nnoremap <Leader>s. ]s
nnoremap <Leader>s, [s
nnoremap <Leader>sc z=

" Tab Commands
nnoremap <Leader>tn :tabnew
nnoremap <Leader>td :tabclose<CR>
nnoremap <Leader>t. :tabm +1
nnoremap <Leader>t, :tabm -1
nnoremap <Leader>tl gt
nnoremap <Leader>tj gT

" Remapping visual block
nnoremap <Leader>v <C-v>

nnoremap <Leader>w :w<CR>
nnoremap <Leader>W :wq<CR>

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

xnoremap gL g$
xnoremap gJ g0
xnoremap gk gj
xnoremap gh gk

xnoremap <Leader>mt H
xnoremap <Leader>mm M
xnoremap <Leader>mb L
xnoremap <Leader>mc zz

" Remapping paste to retain yanked content
xnoremap p pgvy
xnoremap P Pgvy

" Folds
xnoremap <Leader>f z

" Match Parentheses/Brackets
xnoremap <Leader>j %

" Spellcheck
xnoremap <Leader>s. ]s
xnoremap <Leader>s, [s

" Remapping visual block
xnoremap <Leader>v <C-v>

" Airline Font and Theme
let g:airline_powerline_fonts=1
let g:airline_theme='tomorrow'

" UltiSnips Configuration
let g:UltiSnipsExpandTrigger="<C-Leader>"
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
