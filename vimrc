" Current plugins :
"
let mapleader= '\'
map <leader>s :source ~/.vimrc<CR>
" Some basic formatting for to make it look pretty
filetype	on
syntax		on
colorscheme	torte
set number
set nocp
set showmatch
set history=150
set mouse=a
set formatoptions+=r
set comments =sl:/*,me:**,elx:*/
set ruler
set lazyredraw
set wildmenu
set cursorline
" Keybindings to edit ~/.vimrc in current vim session as well as
" the ability to source it without relaunching vim
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
" This makes use jk instead of escape to hopefully prevent finger cramps 
inoremap jk <esc>
inoremap <esc> <nop>
" Remap the Arrow keys to do nothing to make myself use vim's keyboard search
" functions
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
" :vex -> Vexplore , :sex -> Sexplore
noremap :vex :Vexplore
noremap :sex :Sexplore
