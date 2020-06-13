# Dotfiles : Linux configuration files

This repository contains all of my dotfiles that I used to configure various software with a small script to manage those file using git bare repository.💻

## Table of Content

1. [Installation](#installation)
2. [Configuration](#configuration)
3. [How to manage](#how-to-manage)

## Installation

```bash
git clone https://github.com/orionpax00/dotfiles.git
chmod 755 setup.sh
./setup.sh 
```

## Configuration
  * **Vim:** .vimrc
  * **tmux:** .tmux.conf
  * **bash and zsh:** .bashrc and .zshrc
  * **tilda:** .config/tilda
  * **vlc:** .config/vlc
  * **compton:** .config/vlc

## How to manage
  1. Add location of the files that you want to manage in manageDotfiles.sh file
  ```bash
  ./manageDotfiles.sh
  ```