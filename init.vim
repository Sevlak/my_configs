call plug#begin()
Plug 'morhetz/gruvbox' "meu tema do nvim
Plug 'terryma/vim-multiple-cursors' "pra usar multiplos cursores que nem no vscode
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } "fuzzy finder pra achar palavras no arquivo/pasta do projeto
Plug 'sheerun/vim-polyglot' "syntax highlight 
Plug 'junegunn/fzf.vim' "pra poder usar o silversearch (:Ag e tal) junto com o fzf
Plug 'dense-analysis/ale/' "linter que usa o que já tem no pc pra lintar (foda!)
Plug 'udalov/kotlin-vim' "apoio ao kotlin
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()


"caminho pro language server do kotlin
let g:ale_kotlin_languageserver_executable = "/home/sevla/kotlin-language-server/server/build/install/server/bin/kotlin-language-server"

"Minhas configs

colorscheme gruvbox
set background=dark "necessario pra usar o gruvbox
set shiftwidth=4 "tab com 4 espaços
set number "mostra os numeros na coluna
set relativenumber "mostra a distancia relativa da linha que estou pra qualquer outra linha
set mouse=a "ativa o mouse
set inccommand=split "ativa o preview das coisas

"tipo a tecla do i3wm
let mapleader = "\<space>"

"coloca ponto e virgula no final
nnoremap <leader>; A;<esc> 
"abre a tela pra editar as configs do nvim
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
"procura arquivos na pasta do projeto
nnoremap <leader>f :FZF<cr>
"procura palavras no arquivo que está aberto
nnoremap <leader>g :Ag<cr>
"atualiza o arquivo de configuração sem precisar sair do nvim
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>


""Configs do coc.nvim

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup
"
" " Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" " delays and poor user experience.
set updatetime=300
"
" "Don't pass messages to |ins-completion-menu|.
set shortmess+=c


" Use tab for trigger completion with characters ahead and navigate.
" " NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" " other plugin before putting this into your config.

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction
