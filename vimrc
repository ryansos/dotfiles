set nocompatible
set noswapfile
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
"Plugin 'yegappan/mru'

"Plugin 'scrooloose/syntastic'
Plugin 'w0rp/ale'

Plugin 'pangloss/vim-javascript'
Plugin 'wookiehangover/jshint.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'burnettk/vim-angular'

Plugin 'vim-perl/vim-perl'

Plugin 'klen/python-mode'

Plugin 'mattn/emmet-vim'

Plugin 'terryma/vim-multiple-cursors'
Plugin 'Yggdroot/indentLine'

Plugin 'wellle/tmux-complete.vim'
Plugin 'kien/ctrlp.vim'

Plugin 'christoomey/vim-tmux-navigator'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'} 
Plugin 'bling/vim-airline'

call vundle#end()

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

set backspace=2


set number
colorscheme molokaimod
syntax on
syntax enable

set guifont=Monaco:h14

let g:molokai_original = 1
let g:used_javascript_libs = 'angularjs, jquery, underscore, angularuirouter, jasmine, chai'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_enable_perl_checker = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['html'] }

let g:ale_lint_on_text_changed = 1
let g:ale_lint_on_save = 1

let g:tmuxcomplete#trigger = 'completefunc'

inoremap {<cr> {<cr>}<c-o>O
inoremap [<cr> [<cr>]<c-o>O
inoremap (<cr> (<cr>)<c-o>O

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

