" Map leader to which-key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

call which_key#register('<Space>', "g:which_key_map")

" Create map to add keys to
let g:which_key_map = {}
" Define a separator
let g:which_key_sep = '➜'
set timeoutlen=500

" Don't use floating window
let g:which_key_use_floating_win=0

" Single Mappings
let g:which_key_map['r'] = [ ':RnvimrToggle'    , 'Ranger']
let g:which_key_map['j'] = [ '%'                , 'Jump']
let g:which_key_map['n'] = [ ':Startify'        , 'Startify']
let g:which_key_map['v'] = [ '<C-v>'            , 'Visual Block']

" b is for buffers
let g:which_key_map.b = {
        \ 'name' : '+Buffers',
        \ 'd' : [':bdelete'         , 'Close'],
        \ 'l' : [':bnext'           , 'Next'],
        \ 'j' : [':bprevious'       , 'Prev']
      \ }

" e is for execution
let g:which_key_map.e = {
        \ 'name' : '+Execute',
        \ 'f' : [':!firefox'        , 'Firefox'],
        \ 'p' : [':!python'         , 'Python'],
        \ 'r' : [':!ranger'         , 'Ranger']
      \ }

" f is for find
let g:which_key_map.f = {
        \ 'name' : '+Find',
        \ 'f' : [':Files'       , 'Files'],
        \ 'b' : [':Buffers'     , 'Buffers'],
        \ 'g' : [':Rg'          , 'All'],
        \ 't' : [':Tags'        , 'Tags'],
        \ 'm' : [':Marks'       , 'Marks']
      \ }

" g is for git
let g:which_key_map.g = {
        \ 'name' : '+Git',
        \ 'a' : [':Git add'                 , 'Add'],
        \ 'A' : [':Git add --all'           , 'Add All'],
        \ 'ca' : [':Git commit -a'          , 'Commit Add All'],
        \ 'cl' : [':Git clone'              , 'Clone'],
        \ 'cm' : [':Git commit -m'          , 'Commit with Message'],
        \ 'l' : [':Git pull'                , 'Pull'],
        \ 'p' : [':Git push -u origin main' , 'Push'],
        \ 's' : [':Git status'              , 'Status'],
        \ 'd' : [':Git diff'                , 'Diff'],
        \ 'r' : [':Git restore'             , 'Restore']
      \ }

" k is for comment
let g:which_key_map.k = {
        \ 'name' : '+Comments',
        \ 'c' : [':call Comment()'      , 'Comment'],
        \ 'u' : [':call Uncomment()'    , 'Uncomment'],
      \ }

" l is for LaTeX
let g:which_key_map.l = {
        \ 'name' : '+LaTeX',
        \ 'l' : [':VimtexCompile'       , 'Compile']
      \ }

" m is for Movement
let g:which_key_map.m = {
        \ 'name' : '+Movement',
        \ 't' : ['H'    , 'Top'],
        \ 'm' : ['M'    , 'Middle'],
        \ 'b' : ['L'    , 'Bottom'],
        \ 'c' : ['zz'    , 'Center Screen'],
      \ }

" s is for Spellcheck and new splits
let g:which_key_map.s = {
        \ 'name' : '+Split/Spell',
        \ 'h' : [':split'   , 'Horizontal Split'],
        \ 'v' : [':vsplit'  , 'Vertical Split'],
        \ '.' : [']s'       , 'Next Misspelling'],
        \ ',' : ['[s'       , 'Prev Misspelling'],
        \ 'c' : ['z='       , 'Spelling Suggestions']
      \ }

" t is for tabs
let g:which_key_map.t = {
        \ 'name' : '+Tabs',
        \ 'n' : [':tabnew'          , 'New'],
        \ 'd' : [':tabclose<CR>'    , 'Close'],
        \ '.' : [':tabm +1<CR>'     , 'Move Right'],
        \ ',' : [':tabm -1<CR>'     , 'Move Left'],
        \ 'l' : ['gt'               , 'Next'],
        \ 'j' : ['gT'               , 'Prev']
      \ }

" w is for split windows
let g:which_key_map.w = {
        \ 'name' : '+Windows',
        \ 'd' : [':wincmd c'            , 'Close'],
        \ 'o' : [':wincmd o'            , 'Close Others'],
        \ 'h' : [':wincmd k'             , 'Down'],
        \ 'k' : [':wincmd j'             , 'Left'],
        \ 'j' : [':wincmd h'             , 'Up'],
        \ 'l' : [':wincmd l'             , 'Right'],
        \ 'H' : [':wincmd K'             , 'Move Down'],
        \ 'K' : [':wincmd J'             , 'Move Right'], 
        \ 'J' : [':wincmd H'             , 'Move Up'],
        \ 'L' : [':wincmd L'             , 'Move Right'],
        \ '-' : [':resize -2'            , 'Decrease Height'],
        \ '=' : [':resize +2'            , 'Increase Height'],
        \ ',' : [':vertical resize -2'   , 'Decrease Width'],
        \ '.' : [':vertical resize +2'   , 'Increase Width'],
        \ 'u' : [':split#'               , 'Reopen Last Closed']
      \ }
