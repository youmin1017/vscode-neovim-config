# My vscode-vim configs

## TODO
1. [X] Include [lazy.nvim](https://github.com/folke/lazy.nvim)
2. [X] Surround Extinsion

## Setup environment

1. Install [Neovim](https://neovim.io/)
2. Install [VSCode Neovim](https://marketplace.visualstudio.com/items?itemName=asvetliakov.vscode-neovim)
3. Download this repository and put config to your machine
    ```bash
    git clone https://github.com/youmin1017/vscode-neovim-config.git ~/.config/nvim-vscode
    ```
4. To seperate configurations from normal nvim, set extension `VSCode Neovim` APP_Name to your config path

    **Example**: If your config path is `~/.config/nvim-vscode`, set NVIM_APPNAME to `nvim-vscode`

    ```json
    {
      "vscode-neovim.NVIM_APPNAME": "nvim-vscode",
    }
    ```

    > [!TIP]
    > Optional information to help a user be more successful.


5. Done

> [!IMPORTANT]
> You should restart `vscode-neovim` extension after first init, since I could not close lazy.nvim running in background(?)

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