" Neovim Configuration
"
" TODO: Configure Startify

" Vim-Plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')
" The default plugin directory will be as follows:
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'lervag/vimtex'
Plug 'dylanaraps/wal.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'matt-mcginnis/vim-snippets'
Plug 'mhinz/vim-startify'

" Initialize plugin system
call plug#end()

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

" Use <CR>f for jump forward a placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<CR>f'

" Use <CR>b for jump backwards a placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<CR>b'

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
set clipboard+=unnamedplus

" Set Leader to Space
let mapleader=' '

" Source Vim Scripts
source ~/.config/nvim/scripts/comments.vim

" Comment/Uncomment
map <Leader>kc :call Comment()<CR>
map <Leader>ku :call Uncomment()<CR>
map <F1> :setlocal spell! spelllang=en_us<CR>

" Easy Motion Remappings
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
nnoremap <Leader>n :NERDTree <CR>

nnoremap <Leader>qq :q<CR>
nnoremap <Leader>qQ :q!<CR>

" Recording Macros
nnoremap <Leader>r q
nnoremap ' @

" Split Window Commands
nnoremap <Leader>wd :wincmd c<CR>
nnoremap <Leader>wo :wincmd o<CR>

nnoremap <Leader>wh :wincmd k<CR>
nnoremap <Leader>wk :wincmd j<CR>
nnoremap <Leader>wj :wincmd h<CR>
nnoremap <Leader>wl :wincmd l<CR>

nnoremap <Leader>wH :wincmd K<CR>
nnoremap <Leader>wK :wincmd J<CR>
nnoremap <Leader>wJ :wincmd H<CR>
nnoremap <Leader>wL :wincmd L<CR>

nnoremap <Leader>w- :resize -5<CR>
nnoremap <Leader>w= :resize +5<CR>
nnoremap <Leader>w, :vertical resize -5<CR>
nnoremap <Leader>w. :vertical resize +5<CR>

nnoremap <Leader>wu :split#<CR>

nnoremap <Leader>ww <C-w>w

nnoremap <Leader>wh :split
nnoremap <Leader>wv :vsplit

" Spellcheck
nnoremap <Leader>s. ]s
nnoremap <Leader>s, [s
nnoremap <Leader>sc z=

" Tab Commands
nnoremap <Leader>tn :tabnew
nnoremap <Leader>td :tabclose<CR>
nnoremap <Leader>t. :tabm +1<CR>
nnoremap <Leader>t, :tabm -1<CR>
nnoremap <Leader>tl gt
nnoremap <Leader>tj gT

" Remapping visual block
nnoremap <Leader>v <C-v>

nnoremap <Leader>ww :w<CR>
nnoremap <Leader>wW :wq<CR>

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
