call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug '~/.fzf'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sudar/comments.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
call plug#end()

set clipboard+=unnamedplus " Allows to copy between vim and other applications
set number " Add line numbers.
set showmatch " Show matching brackets.
set expandtab " Inset spaces when TAB is pressed.
set tabstop=4 " Render TABs using this many spaces
set shiftwidth=4 " Indentation amount for < and > keys.
set smartindent " Improved automatic indentation.
set ignorecase          " Make searching case insensitive.
set smartcase           " ... unless the query has capital letters.
set updatetime=100 " Reduce update time for vim-gitgutter.

" Map FZF to useful shortcuts.
:map <C-t> :FZF<ENTER>
:map <C-f> :FZF ~<ENTER>
