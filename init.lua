local vscode = require("vscode-neovim")
local opt = vim.opt

-- set current directory to the directory of the current file for those who use
-- custom init.lua config file can't require other files correctly
local file_path = debug.getinfo(1, "S").source:sub(2)
local file_directory = file_path:match "(.*[/\\])"
vim.api.nvim_set_current_dir(file_directory .. "lua")

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
