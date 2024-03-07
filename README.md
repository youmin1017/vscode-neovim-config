# My vscode-vim configs

## TODO
1. [X] Include [lazy.nvim](https://github.com/folke/lazy.nvim)
2. [X] Surround Extinsion

## Setup environment

1. Install [Neovim](https://neovim.io/)
2. Install [VSCode Neovim](https://marketplace.visualstudio.com/items?itemName=asvetliakov.vscode-neovim)
3. Download this repository and put config to your machine
    <details>
    <summary>If you are using linux/macOS</summary>
        
    ```bash
    git clone https://github.com/youmin1017/vscode-neovim-config.git ~/.config/nvim-vscode
    ```
    
    </details>
    <details>
    <summary>If you are using Windows</summary>
        
    ```powershell
    git clone https://github.com/youmin1017/vscode-neovim-config.git $ENV:USERPROFILE\AppData\Local\nvim-vscode
    ```
 
    </details>

   
 
5. To seperate configurations from normal nvim, set extension `VSCode Neovim` APP_Name to your config path

    **Example**: If your config path is `~/.config/nvim-vscode`, set NVIM_APPNAME to `nvim-vscode`

    ```json
    {
      "vscode-neovim.NVIM_APPNAME": "nvim-vscode",
    }
    ```

    > [!TIP]
    > Optional information to help a user be more successful.


6. Done

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
