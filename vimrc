filetype off
call pathogen#infect()
call pathogen#helptags()
nnoremap <leader>v <Plug>TaskList
syntax on
set foldmethod=indent
set foldlevel=99

"color
set background=dark
colorscheme kalisi
"colorscheme molokai
"highlight Comment cterm=bold
"set t_Co=256
"colorscheme sweater
syntax enable
"set background=dark
" or, for the light background mode:
" set background=light
" colorscheme base16-atelierdune
" or any of the other schemes:
" colorscheme base16-atelierforest
" colorscheme base16-atelierplateau
" colorscheme base16-atelierheath
" colorscheme base16-ateliercave
" colorscheme base16-ateliersulphurpool
" colorscheme base16-atelierlakeside
" colorscheme base16-ateliersavanna
" colorscheme base16-atelierseaside
" colorscheme base16-atelierdune
" colorscheme base16-atelierestuary

"set to primary color
"set t_Co=256
"set background=dark
"colorscheme primary

"set to PerfectDark Color
" colorscheme PerfectDark


"colorscheme molokai
"highlight Comment cterm=bold

set t_Co=256

" in case t_Co alone doesn't work, add this as well:
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
map <leader>td <Plug>TaskList
map <leader>g :GundoToggle<CR>
syntax on                           " syntax highlighing
filetype plugin indent on    " enable loading indent file for filetype
let g:pep8_map='<leader>8'
let g:pyflakes_use_quickfix = 0
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
map <leader>n :NERDTreeToggle<CR>
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>
nmap <leader>a <Esc>:Ack!

" Execute the tests
nmap <silent><Leader>tf <Esc>:Pytest file<CR>
nmap <silent><Leader>tc <Esc>:Pytest class<CR>
nmap <silent><Leader>tm <Esc>:Pytest method<CR>
" cycle through test errors
nmap <silent><Leader>tn <Esc>:Pytest next<CR>
nmap <silent><Leader>tp <Esc>:Pytest previous<CR>
nmap <silent><Leader>te <Esc>:Pytest error<CR>
" Add the virtualenv's site-packages to vim path
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir,'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF
