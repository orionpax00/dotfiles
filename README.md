# YADM : Yet Another Dotfile but with Manager

This repository contains all of my dotfiles that I used to configure various software with a small script to manage those file using git bare repository.💻

## Table of Content

1. [Installation](#installation)
    * Manual 
    * Automatic
2. [Configuration](#configuration)
3. [How to manage](#how-to-manage)
    * what is git bare repo
    * Configuring ```manageDotfiles.sh```
4. [How to use](#how-to-use)

## Installation
The below methods are tested on Ubuntu 18.04, WSL (having ubuntu 18.04), and MacOS Catalina

* ### Manual Installation
  ```bash
  git clone https://github.com/orionpax00/yadm 
  ```
  After cloning manually copy file of your intrest onto the desired location(take reference from the repository tree structure [here]("#).)

* ### Auto Install
  comming soon...🚅

## Configuration
  Respected dotfile contain configuration related to a particular piece of software like .vimrc for vim, .vscode/settins.json for vscode, etc.

  I mainly used Oh My ZSH and Oh My Tmux configuration with little tweaking for ZSH and TMUX
  
  for more information regarding configuration either look in the file or search on the web whatever you like.😊

## How to manage
  * ### what is git bare repo
    Repositories created with git init --bare are called bare repos. They are structured a bit differently from working directories. First off, they contain no working or checked out copy of your source files. And second, bare repos store git revision history of your repo in the root folder of your repository instead of in a .git subfolder. Note… bare repositories are customarily given a .git extension.[[1]](http://www.saintsjd.com/2011/01/what-is-a-bare-git-repository/)

    * ### Setup Git bare repo
      ```bash
      mkdir <BARE_FOLDER> #create folder like dotfiles
      cd <BARE_FOLDER>
      git init --bare
      ```
      open .bashrc or .zshrc and put these line in it.
      ```bash
      alias dotfile='/usr/bin/git --git-dir=<BARE_FOLDER_LOC> --work-tree=/'
      ```
      **OR** run
      ```bash
      echo "alias dotfile='/usr/bin/git --git-dir=<BARE_FOLDER_LOC> --work-tree=/'" >> ~/.zshrc
      ```
      Reset Source file
      ```bash
      source ~/.zshrc
      ```
      And finally run
      ```bash
      dotfile config --local status.showUntrackedFiles no
      ```

    

  * ### How to configure
    * Add files that to be tracked in files array
      ```bash
      declare -a files=(
                  ~/.zshrc
                  ~/.bashrc
                  ~/.tmux.conf
                  ~/.vimrc
                  /mnt/c/Users/durge/Desktop/setting.json
                  ) 
      ```

    * Change these line with your git executable and bare directory path

      ```bash
      dotfileadd='/usr/bin/git --git-dir=/mnt/d/projects/dotfiles_bare --work-tree=/ add '
      #In all 3 lines
      ```
* ### How to use
   *  After changing dotfiles just run the manageDotfiles.sh script like
      ```bash
      bash manageDotfiles.sh "<Commit message>"
      ```
    

## Acknowledgement
1.  [**OhymyZsh**](https://github.com/ohmyzsh/ohmyzsh) : A delightful community-driven framework for managing your zsh configuration.
2. [**.tmux**](https://github.com/gpakosz/.tmux) : Oh My Tmux! Pretty & versatile tmux configuration made with ❤️
