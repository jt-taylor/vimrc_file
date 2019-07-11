" Current plugins :
"
let mapleader= '\'
" Some basic formatting for to make it look pretty
filetype	on
syntax		on
colorscheme	slate
set number relativenumber
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
highlight ColorColumn ctermbg=red


"Status line settings -- See :h laststatus
" default with ruler on :set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set laststatus=2
set statusline=
set statusline+=%#PmenuSel#
set statusline+=%{StatuslineGit()}
set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=%m\
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\

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
nnoremap <leader>js :w<cr>
nnoremap <leader>e :E<cr>
inoremap {} {<cr>}<esc>ko
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
"nmap <leader>ss :wa<Bar>exe "mksession! " . v:this_session<cr>
"nmap <leader>ls :source ~/.vim/sessions/
let g:sessions_dir = '~/.vim/sessions'
exec 'nnoremap <leader>ss :wa<CR> :mks! ' . g:sessions_dir . '/*.vim<C-D><BS><BS><BS><BS><BS>'
exec 'nnoremap <leader>sr :so ' . g:sessions_dir . '/*.vim<C-D><BS><BS><BS><BS><BS>'

" Some stuff for buffers
nnoremap <leader>b = :buffers<CR>

" Hotkeys for functions
nnoremap <leader>fill : call Fill_to_col_80_with_dash( '-' )<cr>

" Functions
function! Fill_to_col_80_with_dash( str )
	let tw = &textwidth
	if tw==0 | let tw = 80 | endif
	.s/[[:space:]]*$//
	let reps = (tw -col("$")) / len(a:str)
	if reps > 0
		.s/$/\=(' '.repeat(a:str, reps))/
	endif
endfunction

function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

" Misc
autocmd Filetype c nnoremap <buffer> <localleader>c :source$MYVIMRC<cr>i/*<cr>
call matchadd('ColorColumn', '\%81v', 100)
autocmd filetype php exec 'colo delek'
