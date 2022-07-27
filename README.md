# Setup file for new installation of Ubuntu

### Author: Luke Tonin

This file contains all the steps required to setup a nice Ubuntu environment with all the correct tools.
It makes use of bash scripts to install things automatically.

The scripts in the "scripts" directory are:
- [setup.sh](scripts/setup.sh): This is the main script of the repo. It downloads useful packages and copies configuration files. This assumes you have a version of ubuntu-config repo at ~/files/ubuntu-config
- [generate_ssh_key.sh](scripts/generate_ssh_key.sh): This generates an ssh key pair that can be used to authenticate SSH connections with [Github](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
- [clone_repo.sh](scripts/clone_repo.sh): This clones this repo locally to ~/files/ubuntu-config (using HTTPS)

## Notes

### The Silver Searcher AG
ag "regex pattern"  
-g flag only returns filenames.
-G "regex" only looks in files with "regex" in the name.

### Tmux

#### Useful commands
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

### Neovim
#### Useful commands: From normal mode
: : The colon is used to enter a vim command.   
:w : Save current file.  
:x : Save and close current file.  
:q : Close file without saving.  
number f key: find the number next occurence of key (e.g f m finds next occurence of letter m in the file.)  
number w: Jump to beginning of next number word.  
gi: restart insert mode in the last insert point used before exiting insert mode.  

... Search the internet for useful vim/nvim commands.  

### VScode
#### vscodevim plugin.
See useful settings for vscode in the vscode/settings.json file.
** Example commands: **
- `<space> <space> s <any-key>`: find any key in the currently open file (this is an easymotion funcitonality.)
- `<ctrl+j>` or `<ctrl+k>`: Switch between left and right tab in VScode.