local M = {}
local fn = vim.fn

local function shell_call(args)
    local output = fn.system(args)
    assert(vim.v.shell_error == 0, "External call failed with error code: " .. vim.v.shell_error .. "\n" .. output)
end

M.echo = function(str)
    vim.cmd "redraw"
    vim.api.nvim_echo({ { str, "Bold" } }, true, {})
end

M.lazy = function(install_path)
    -- source: NvChad/NcChad/lua/core/bootstrap.lua
    --------- lazy.nvim ---------------
    M.echo "  Installing lazy.nvim & plugins ..."
    local repo = "https://github.com/folke/lazy.nvim.git"
    shell_call { "git", "clone", "--filter=blob:none", "--branch=stable", repo, install_path }
    vim.opt.rtp:prepend(install_path)

    -- install plugins
    require "plugins"

    -- mason packages & show post_bootstrap screen
    -- require "nvchad.post_install" ()
end

return M
