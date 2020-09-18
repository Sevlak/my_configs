call plug#begin()
Plug 'morhetz/gruvbox' "meu tema do nvim
Plug 'terryma/vim-multiple-cursors' "pra usar multiplos cursores que nem no vscode
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } "fuzzy finder pra achar palavras no arquivo/pasta do projeto
Plug 'sheerun/vim-polyglot' "syntax highlight 
Plug 'ncm2/ncm2' "completion manager
Plug 'roxma/nvim-yarp' "requirement do ncm2
Plug 'ncm2/ncm2-bufword' "faz completion do que estiver no buffer
Plug 'ncm2/ncm2-path' "faz completion do que estiver no path do arquivo
Plug 'junegunn/fzf.vim' "pra poder usar o silversearch (:Ag e tal) junto com o fzf
Plug 'dense-analysis/ale/' "linter que usa o que já tem no pc pra lintar (foda!)
Plug 'udalov/kotlin-vim' "apoio ao kotlin
Plug 'ncm2/ncm2-jedi' "completion do python
Plug 'ncm2/ncm2-pyclang' "completion pra C
call plug#end()


"caminho pro language server do kotlin
let g:ale_kotlin_languageserver_executable = "/home/sevla/kotlin-language-server/server/build/install/server/bin/kotlin-language-server"

"caminho pro binario do clang (llvm)
let g:ncm2_pyclang#library_path = "/usr/lib/llvm-7/lib/libclang-7.so.1"

"NeoVim Completion Manager

" enable ncm2 for all buffer
autocmd BufEnter * call ncm2#enable_for_buffer()    

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

" Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"


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


