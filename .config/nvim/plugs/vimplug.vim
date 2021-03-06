 " Vim-Plug
 let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
 if empty(glob(data_dir . '/autoload/plug.vim'))
   silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/jun    egunn/vim-plug/master/plug.vim'
   autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
 endif
 
 call plug#begin('~/.config/nvim/plugs/plugged')
 " The default plugin directory will be as follows:
 "   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
 " You can specify a custom plugin directory by passing it as the argument
 "   - e.g. `call plug#begin('~/.vim/plugged')`
 "   - Avoid using standard Vim directory names like 'plugin'
 
 " Make sure you use single quotes
 
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
 Plug 'easymotion/vim-easymotion'
 Plug 'tpope/vim-fugitive'
 Plug 'lervag/vimtex'
 Plug 'dylanaraps/wal.vim'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'matt-mcginnis/vim-snippets'
 Plug 'mhinz/vim-startify'
 Plug 'kevinhwang91/rnvimr'
 Plug 'unblevable/quick-scope'
 Plug 'mhinz/vim-signify'
 Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
 Plug 'junegunn/fzf.vim'
 Plug 'airblade/vim-rooter'
 Plug 'liuchengxu/vim-which-key'
 Plug 'voldikss/vim-floaterm'
 Plug 'preservim/nerdtree'
 Plug 'ryanoasis/vim-devicons'
 Plug 'Xuyuanp/nerdtree-git-plugin'
 Plug 'PhilRunninger/nerdtree-visual-selection'
  
 " Initialize plugin system
 call plug#end()
