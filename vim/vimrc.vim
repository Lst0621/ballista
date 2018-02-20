" ~/.vimrc
" vim config
""""""""""

"""""""""""Vundle"""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'derekwyatt/vim-scala'



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

""""""""""""""""""pathogen"""""""""""""""""
execute pathogen#infect()

filetype plugin indent on    " required

"""""""""""""""""conf""""""""""""""""""""""
" !!!
" send 'shift' from tmux to vim
set term=xterm-256color
set t_Co=256

set tabstop=4
set shiftwidth=4

set nohlsearch

set number relativenumber

" insert mode no relativenumber
" ref: https://jeffkreeftmeijer.com/vim-number/
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

colorscheme darkglass
"colorscheme morning
"colors default
"colors molokai

""""""""""""""""""""""""hot key""""""""""""""

map <F2> mzgg=G'z<CR>

" write 
" add shift to prevent silly action
nnoremap <F3>   <Esc>:w<CR>

"quit and force quit
nnoremap <F4>   <Esc>:q<CR>
nnoremap <S-F4>   <Esc>:!q<CR>

"refresh ( file may be modified in ide)
nnoremap <F5>   <Esc>:edit<CR>

"number 
nnoremap <F6>   <Esc>:set nonumber norelativenumber<CR>
nnoremap <S-F6>   <Esc>:set number relativenumber<CR>


nnoremap <F7>   <Esc>:set background=dark<CR>
nnoremap <S-F7>   <Esc>:set background=light<CR>

nnoremap <F10>   <Esc>:colors morning<CR>


"more hot key to be added 

