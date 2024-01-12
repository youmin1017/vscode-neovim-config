local vscode = require("vscode-neovim")
local M = {}

M.general = {
  -- should no insert mode mappings
  -- i = {},
  n = {
    ----- VSCode -----
    ["<leader>fm"] = { function()
      vscode.call("editor.action.formatDocument")
    end },
    ["<leader>/"] = { function()
      vscode.call("editor.action.commentLine")
    end },
    ["<leader>x"] = { function()
      vscode.call("workbench.action.closeActiveEditor")
    end },
    ["<leader>X"] = { function()
      vscode.call("workbench.action.closeAllEditors")
    end },
    ["<leader>ff"] = { function()
      vscode.call("editor.toggleFold")
    end },

    ["<leader>h"] = { function()
      local inlay_hints_cfg = "editor.inlayHints.enabled"
      if vscode.get_config(inlay_hints_cfg) == "offUnlessPressed" then
        vscode.update_config(inlay_hints_cfg, "on")
      else
        vscode.update_config(inlay_hints_cfg, "offUnlessPressed")
      end
    end, "Toggle inlay hints" },

    ------ VIM -----
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<"] = { "<<", "indent forward easily", opts = { nowait = true } },
    [">"] = { ">>", "indent forward easily", opts = { nowait = true } },
    ["gh"] = { "g0", "Go to beginning" },
    ["gl"] = { "g$", "Go to end of line" },

    --- clipboard ---
    ["<leader>y"] = { '"+y', "Yank to system clipboard" },
    ["<leader>Y"] = { '"+yy', "Yank line to system clipboard" },
    ["<leader>p"] = { '"+p', "Paste from system clipboard" },
    ["<leader>P"] = { '"+P', "Paste from system clipboard before cursor" },
    ["<leader>d"] = { '"+d', "Delete to system clipboard" },

    -- line numbers
    ["<leader>n"] = { "<cmd> set nu! <CR>", "Toggle line number" },
    -- ["<leader>rn"] = { "<cmd> set rnu! <CR>", "Toggle relative number" },

    -- To move across wrapped lines, it is working but make some latency. Use `gj` and `gk` instead.
    -- ["j"] = { function()
    --   vscode.call("cursorMove", { args = { to = "down", by = "wrappedLine", value = vim.v.count1 } })
    -- end },
    -- ["k"] = { function()
    --   vscode.call("cursorMove", { args = { to = "up", by = "wrappedLine", value = vim.v.count1 } })
    -- end },

    -- If not working, try to add this to your keybindings.json
    -- { "key": "alt+j", "command": "vscode-neovim.send", "args": "<a-j>", "when": "editorTextFocus && neovim.init" },
    -- { "key": "alt+k", "command": "vscode-neovim.send", "args": "<a-k>", "when": "editorTextFocus && neovim.init" },
    ["<M-j>"] = { ":m .+1<CR>==", "move selected block up and stay in visual mode", opts = { silent = true } },
    ["<M-k>"] = { ":m .-2<CR>==", "move selected down and stay in visual mode", opts = { silent = true } },

    ["<Esc>"] = { "<cmd> noh <CR>", "Clear highlights" },

  },
  x = {
    ----- VSCode -----
    ["<leader>/"] = { function()
      vscode.call("editor.action.commentLine")
    end },
    ----- VIM -----
    ["<"] = { "<gv", "indent backword and stay in visual mode" },
    [">"] = { ">gv", "indent forward and stay in visual mode" },
    ["gh"] = { "g0", "Go to beginning" },
    ["gl"] = { "g$", "Go to end of line" },
    ["<M-j>"] = { ":move '>+1<CR>gv-gv", "move selected block up and stay in visual mode", opts = { silent = true } },
    ["<M-k>"] = { ":move '<-2<CR>gv-gv", "move selected down and stay in visual mode", opts = { silent = true } },

    --- clipboard ---
    ["<leader>y"] = { '"+y', "Yank to system clipboard in visual mode" },
    ["<leader>p"] = { '"+p', "Paste from system clipboard in visual mode" },
    ["<leader>P"] = { '"+P', "Paste from system clipboard before cursor in visual mode" },
    ["<leader>d"] = { '"+d', "Delete to system clipboard in visual mode" },
    ["p"] = { '"_dP', "Dont copy replaced text", opts = { silent = true } },
  }
}

return M
