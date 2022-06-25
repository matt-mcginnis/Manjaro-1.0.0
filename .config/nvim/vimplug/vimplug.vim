 " Vim-Plug
 let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
 if empty(glob(data_dir . '/autoload/plug.vim'))
   silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/jun    egunn/vim-plug/master/plug.vim'
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
