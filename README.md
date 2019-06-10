# Setup file for new installation of Ubuntu

This file contains all the steps required to setup a nice Ubuntu environment with all the correct tools.

### Author: Luke Tonin


## Install The Silver Searcher AG
This allows to search the contents of files. It is used by Fuzzy Finder.
```bash
sudo apt-get install silversearcher-ag
```

### Useful commands
ag "regex pattern"  
-g flag only returns filenames.

## Install Fuzzy Finder

``` bash
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

## Install Tmux
``` bash
sudo apt-get install tmux
```

Copy .tmux.conf file to the home directory (i.e ~)

### Useful commands
Ctrl-b : This tells tmux to expect a tmux command.  
Ctrl-b : : This allows to enter a text based tmux command.  
Ctrl-b c: Open new tmux window.  
Ctrl-b n: Move to next tmux window.  
Ctrl-b p: Move to previous tmux window.  
Ctrl-b %: Split current pane vertically.  
Ctrl-b ": Split current pane horizontally.  
Ctrl-b z: Toggle between zooming and dezooming current pane.  
Ctrl-b x: Close current pane.  
Ctrl-b &: Close current window.  
Ctrl-b !: Break current pane from its window and place it into a new window.  
Ctrl-b Alt-5: Reorganise panes in a reasonable way.
Ctrl-b space: Toggle between different pane organisations.
Ctrl-b :join-pane -t :0 -{vh} : Join current pane to another window horizontally or vertically.


## Install Neovim
Warning : neovim is in ubuntu repositories only since 18.04. For earlier versions of Ubuntu, neovim can be downloaded from a PPA.
``` bash
sudo apt-get install neovim
```

### Install neovim plugin manager (and curl)
``` bash
sudo apt-get install curl
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Copy neovim configuration (init.vim) to ~/.config/nvim/init.vim  

Install plugins decribed in init.vim with :PlugInstall  

### Useful commands
#### From normal mode
: : The colon is used to enter a vim command.   
:w : Save current file.  
:x : Save and close current file.  
:q : Close file without saving.  
number f key: find the number next occurence of key (e.g f m finds next occurence of letter m in the file.)  
number w: Jump to beginning of next number word.  
gi: restart insert mode in the last insert point used before exiting insert mode.  

... Search the internet for useful vim/nvim commands.  

## Configure .bashrc
Copy .bashrc file to home directory (i.e ~)

### Useful commands
Ctrl-z : Suspend current process.
fg : Awake suspended process.

## Install miniconda
Find installation instructions on the internet.

