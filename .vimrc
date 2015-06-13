set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugins start

Plugin 'tpope/vim-sensible'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'nathanaelkane/vim-indent-guides'

" Plugins end

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

:set number "enable line numbers
:set background=light
:colorscheme shine
