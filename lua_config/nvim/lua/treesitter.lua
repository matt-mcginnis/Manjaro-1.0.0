local configs = require'nvim-treesitter.configs'
configs.setup {
  ensure_install = {'css', 'dockerfile', 'html', 'javascript', 'json', 'latex', 'lua', 'python', 'vim'},
  highlight = { -- enable highlighting
    enable = true
  },
  indent = {
    enable = true -- default is disabled anyways
  },
  incremental_selection = {
    enable = true,
    keymaps = {
        init_selection = "<Space>in",
        node_incremental = "<Space>in",
        scope_incremental = "<Space>is",
        node_decremental = "<Space>id",
    }
  }
}

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
