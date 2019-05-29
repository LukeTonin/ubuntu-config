call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug '~/.fzf'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" Allows to copy between vim and other applications
set clipboard+=unnamedplus

" Make vim windows the same size when opening new splits
autocmd VimResized * wincmd =
set equalalways

" Add line numbers
set number
