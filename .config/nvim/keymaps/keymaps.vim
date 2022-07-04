"""""""""""""""
""" Keymaps """
"""""""""""""""

" Set Leader to Space
let mapleader=' '

" Comment/Uncomment
map <Leader>kc :call Comment()<CR>
map <Leader>ku :call Uncomment()<CR>
map <F1> :setlocal spell! spelllang=en_us<CR>

""""""""""""""""""""""""
" Normal Mode Remappings
""""""""""""""""""""""""
" Moving Between Buffers
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>

" Easy Uppercase
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwUi<ESC>

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

" Ranger
nmap <Leader>d :RnvimrToggle<CR>

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

" Quit
nnoremap <Leader>qq :q<CR>
nnoremap <Leader>qQ :q!<CR>

" Recording Macros
nnoremap <Leader>r q
nnoremap q <Nop>
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

nnoremap <Leader>w- :resize -2<CR>
nnoremap <Leader>w= :resize +2<CR>
nnoremap <Leader>w, :vertical resize -2<CR>
nnoremap <Leader>w. :vertical resize +2<CR>

nnoremap <Leader>wu :split#<CR>

nnoremap <Leader>sh :split
nnoremap <Leader>sv :vsplit

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

" Better Tabbing
vnoremap < <gv
vnoremap > >gv

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
