:set number
:syntax on
:set tabstop=4
:set shiftwidth=4
:set expandtab
:filetype indent on
:colorscheme desert
:filetype plugin on

" remap
nnoremap # *N
nnoremap =' gg=G''
nnoremap \ :nohls<enter>
nnoremap <A-Left> <c-w>H
nnoremap <A-Down> <c-w>J
nnoremap <A-Up> <c-w>K
nnoremap <A-Right> <c-w>L


" Indentar antes de salvar
autocmd FileType cpp,c autocmd BufWritePre <buffer> :normal gg=G''
" FIM

" Auto Completar                                                        
 function AutoComplete(way)
     let position = col(".") - 1
     if ! position || getline(".")[position - 1] !~ '\k'
         return "\<Tab>"
     elseif a:way == "next"
         return "\<C-n>"
     else
         return "\<C-p>"
 endfunction

 inoremap <TAB> <C-R>=AutoComplete("next")<CR>
 inoremap <S-TAB> <C-R>=AutoComplete("back")<CR>
 " Fim

"funcoes para retornar nome e caminho do arquivo
function! FileName()
    return expand('%:t')
endfu

function! PathName()
    return expand('%:p:h')
endfu
"Fim

"Condicao makefile
if (FileName() == "makefile")
    :set noexpandtab
endif 
"fim

"Copia para clipboard
map <C-c> :!xclip -sel clip<CR>u


set nobackup
set noswapfile
set hlsearch
set magic


set encoding=utf8
"fim
