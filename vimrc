filetype off
call pathogen#infect()
call pathogen#helptags()
nnoremap <leader>v <Plug>TaskList
syntax on
set foldmethod=indent
set foldlevel=99

"color
"set backgroud=dark
colorscheme molokai

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
%{vim-fugitive#statusline()}

