vim.o.tabstop = 4
vim.o.shiftwidth = 4
require("custom.remap")
require("custom.opts")
require("custom.util")
require("custom.commands")

-- Install package manager lazy
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system {
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        '--branch=stable', -- latest stable release
        lazypath,
    }
end
vim.opt.rtp:prepend(lazypath)
require('lazy').setup("custom.plugins", {})

-- The line beneath this is called `modeline`. See `:help modeline`
