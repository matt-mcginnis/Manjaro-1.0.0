require('keybindings')
require('packages')
if (vim.loop.os_uname().sysname == 'Linux') then
    require('config')
end

local configs = require'nvim-treesitter.configs'
configs.setup {
  ensure_install = {'css', 'dockerfile', 'http', 'javascript', 'json', 'latex', 'lua', 'python', 'vim'},
  highlight = { -- enable highlighting
    enable = true 
  },
  indent = {
    enable = false -- default is disabled anyways
  }
}

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

local function blah()
    print "hello world\n"
end
