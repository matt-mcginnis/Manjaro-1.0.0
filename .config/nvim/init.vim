""""""""""""""""""""""""""""
""" Neovim Configuration """
""""""""""""""""""""""""""""

" Source Plugin Manager
source ~/.config/nvim/plugs/vimplug.vim

" Source Plugin Configuration
source ~/.config/nvim/plugs/plugs-config/start-screen.vim
source ~/.config/nvim/plugs/plugs-config/airline.vim
source ~/.config/nvim/plugs/plugs-config/floaterm.vim
source ~/.config/nvim/plugs/plugs-config/rnvimr.vim

" Source Completion and Snippets
source ~/.config/nvim/completion/completion.vim

" Source General Settings
source ~/.config/nvim/general/general.vim

" Source these after general for custom colors to not be overwritten
source ~/.config/nvim/plugs/plugs-config/quickscope.vim

" Source Vim Scripts
source ~/.config/nvim/scripts/comments.vim

" Source Custom Keybindings
source ~/.config/nvim/keymaps/keymaps.vim

" Source easy-motion, fuzzy-finder, which-key and configuration after keymaps 
" (potentially conflicting keybinginds
source ~/.config/nvim/plugs/plugs-config/easy-motion.vim
source ~/.config/nvim/plugs/plugs-config/fuzzy-finder.vim
source ~/.config/nvim/plugs/plugs-config/which-key.vim
