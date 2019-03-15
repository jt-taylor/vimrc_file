" Current plugins :
"
let mapleader= '\'
" Some basic formatting for to make it look pretty
filetype	on
syntax		on
colorscheme	slate
set number
set nocp
set showmatch
set showcmd
set history=150
set mouse=a
set formatoptions+=r
set comments=sl:/*,me:**,elx:*/
set ruler
set lazyredraw
set wildmenu
set cursorline
set hidden
set visualbell
set title

"List ;
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
nnoremap <leader>nlst :set nolist<cr>
nnoremap <leader>lst :set list<cr>

" Keybindings to edit ~/.vimrc in current vim session as well as
" the ability to source it without relaunching vim
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
" This makes use jk instead of escape
inoremap jk <esc>
inoremap <esc> <nop>
" some misc bindings to spare my fingers 
nmap <leader>js :w<cr>
nmap <leader>e :E<cr>
inoremap {} {<cr>}<esc>ko
inoremap <?php <?php<cr><cr>?><esc>ki
" Remap the Arrow keys to do nothing to make myself use vim's keyboard search
" functions
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
" :vex -> Vexplore , :sex -> Sexplore
noremap :vex :Vexplore
noremap :sex :Sexplore
" Bindings for sessions
nmap <leader>ss :wa<Bar>exe "mksession! " . v:this_session<cr>
nmap <leader>ls :source ~/.vim/sessions/
" Some stuff for buffers
nnoremap <leader>b = :buffers<CR>
