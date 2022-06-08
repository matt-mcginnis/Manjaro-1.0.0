require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use {
        'goolord/alpha-nvim',
        requires = { 'kyazdani42/nvim-web-devicons' },
        config = function ()
            local alpha = require("alpha")
            local dashboard = require('alpha.themes.dashboard')
            dashboard.section.header.val = {
               "  ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓ ",
               "  ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒ ",
               " ▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░ ",
               " ▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██  ",
               " ▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒ ",
               " ░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░ ",
               " ░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░ ",
               "    ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░    ",
               "          ░    ░  ░    ░ ░        ░   ░         ░    ",
               "                                 ░                   "
            }
            -- Set menu
            dashboard.section.buttons.val = {
                dashboard.button( '<Space>e', '  > New file' , ':ene <BAR> startinsert <CR>'),
                dashboard.button( '<Space>f', '  > Find file', ':cd $HOME/Github | Telescope find_files<CR>'),
                dashboard.button( '<Space>r', '  > Recent'   , ':Telescope oldfiles<CR>'),
                dashboard.button( '<Space>s', '  > Settings' , ':e $MYVIMRC<cr>'),
                dashboard.button( '<Space>q', '  > Quit NVIM', ':qa<CR>')
            }
            alpha.setup(dashboard.opts)
            vim.cmd([[autocmd Filetype alpha setlocal nofoldenable]])
            vim.api.nvim_set_keymap('n', '<c-n>', ':Alpha<cr>', { noremap = true })
        end
    }
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'}, {'BurntSushi/ripgrep'} }
    }

    -- IDE
    use 'nvim-treesitter/nvim-treesitter'

    -- Other Plugins
    use 'tomasr/molokai'
    use 'easymotion/vim-easymotion'
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
    use 'tpope/vim-fugitive'
    use 'lervag/vimtex'
    use 'dylanaraps/wal.vim'
    use 'ryanoasis/vim-devicons'
end)
