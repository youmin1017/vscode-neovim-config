# My vscode-vim configs

## TODO
1. [ ] Include [lazy.nvim](https://github.com/folke/lazy.nvim)
2. [ ] Surround Extinsion

## Setup environment

1. Install [Neovim](https://neovim.io/)
2. Install [VSCode Neovim](https://marketplace.visualstudio.com/items?itemName=asvetliakov.vscode-neovim)
3. Download this repository and put config to your machine
    ```bash
    git clone https://github.com/youmin1017/vscode-neovim-config.git ~/.config/nvim-vscode
    ```
4. Set extension `VSCode Neovim` init.vim path to your init.lua (you download previously) path. E.g. `~/.config/nvim-vscode/init.lua`
5. Done

## Using JK to escape insert mode

Setting below to your `keybindings.json`

```json
{
    "command": "vscode-neovim.compositeEscape1",
    "key": "j",
    "when": "neovim.mode == insert && editorTextFocus",
    "args": "j"
}
```

to enable jk add also:

```json
{
    "command": "vscode-neovim.compositeEscape2",
    "key": "k",
    "when": "neovim.mode == insert && editorTextFocus",
    "args": "k"
}
```