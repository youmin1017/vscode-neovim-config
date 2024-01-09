local vscode = require("vscode-neovim")
local opt = vim.opt

local utils = require("utils")

vim.g.mapleader = " "

local mappings = require("mappings")
utils.load_mappings(mappings)


----- VIM options -----
-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
opt.whichwrap:append "<>[]hl"
opt.timeoutlen = 400
opt.undofile = true

-- interval for writing swap file to disk, also used by gitsigns
opt.updatetime = 250

-- disable some default providers
for _, provider in ipairs { "node", "perl", "python3", "ruby" } do
    vim.g["loaded_" .. provider .. "_provider"] = 0
end


local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

-- bootstrap lazy.nvim!
if not vim.loop.fs_stat(lazypath) then
  require("bootstrap").lazy(lazypath)
end
vim.opt.rtp:prepend(lazypath)
require("plugins")
