set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'adrianolaru/vim-adio'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'chrisbra/Recover.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'junegunn/vim-easy-align'
Plugin 'rhysd/vim-clang-format'
Plugin 'xolox/vim-misc'
Plugin 'junegunn/goyo.vim' " Distraction free mode
Plugin 'freeo/vim-kalisi'
Plugin 'Valloric/YouCompleteMe'

" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set number
set mouse=a

set undolevels=1000  " How many undos
set undoreload=10000 " number of lines to save for undo

filetype plugin indent on
set autoindent
set tabstop=4 shiftwidth=4 expandtab

" Highlight search results
set hlsearch

" Window split default
set splitright
set splitbelow

" Set 256 colors
" set t_Co=256

" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Search selected text
vnoremap // y/<C-R>"<CR>

" Substitute selected text
vnoremap %s y:%s/<C-R>"/

let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"

if &term =~ '^screen'
    set ttymouse=xterm2
endif

let g:clang_format#command = "clang-format-3.6"

colorscheme kalisi
set background=light

