" General
" -------
set spell spelllang=en_gb
set number
" Set PowerShell as shell
set shell=powershell.exe
set shellcmdflag=-NoProfile\ -NoLogo\ -NonInteractive\ -Command
set shellpipe=|
set shellredir=>
" Enable Windows clipboard copy/paste
source $VIMRUNTIME/mswin.vim
" Deoplete setup
let g:deoplete#enable_at_startup = 1
let g:python3_host_prog = 'C:\Python36\python.exe'
set completeopt-=preview

" Format code language
set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.

" Code Folding
" ---- -------
set foldenable
set foldlevelstart=2
set foldnestmax=5
set foldmethod=indent


" Indent
" ------
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab


" Key Map
" --- ---
nnoremap <space> za
inoremap <F5> <C-R>=strftime("%c")<CR>
" Esc to exit terminal mode
tnoremap <Esc> <C-\><C-n>
" Moving lines
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
" tab-complete (using deoplete)
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

