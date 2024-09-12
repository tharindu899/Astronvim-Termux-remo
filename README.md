# AstroNvim Template For Termux

**NOTE:** This is for AstroNvim v4+

A template for getting started with [AstroNvim](https://github.com/AstroNvim/AstroNvim)

## 🛠️ Installation

#### Install termux required packages

```shell
apt update && yes | apt upgrade && apt update && apt install neovim lua-language-server ripgrep lazygit yarn python python-pip ccls clang rust-analyzer git -y
```

#### Make a backup of your current nvim and shared folder

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

#### Create a new user repository from this template

Press the "Use this template" button above to create a new repository to store your user configuration.

You can also just clone this repository directly if you do not want to track your user configuration in GitHub.

#### Clone the repository

```shell
git clone https://github.com/remo7777/Astronvim-Termux.git ~/.config/nvim
```

#### Start Neovim

```shell
nvim
```
