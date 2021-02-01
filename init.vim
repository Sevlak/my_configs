call plug#begin()
Plug 'morhetz/gruvbox' "meu tema do nvim
Plug 'terryma/vim-multiple-cursors' "pra usar multiplos cursores que nem no vscode
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } "fuzzy finder pra achar palavras no arquivo/pasta do projeto
Plug 'sheerun/vim-polyglot' "syntax highlight
Plug 'junegunn/fzf.vim' "funciona junto com o fzf
Plug 'jiangmiao/auto-pairs' "pra fazer pares de parenteses etc
call plug#end()

"Minhas configs

colorscheme gruvbox
set background=dark "necessario pra usar o gruvbox
set tabstop=4 "mostra as tabs feitas com 4 espaços"
set shiftwidth=4 "quando usamos >, identa 4 espaços
set expandtab "quando apertamos tab, insere 4 espaços"
set number "mostra os numeros na coluna
set relativenumber "mostra a distancia relativa da linha que estou pra qualquer outra linha
set mouse=a "ativa o mouse
set inccommand=split "ativa o preview das coisas


"tipo a tecla do i3wm
let mapleader = "\<space>"

"abrir o terminal
nnoremap <leader>t :sp term://bash<cr>
"sair do terminal
tnoremap <Esc> <C-\><C-n>
"abre a tela pra editar as configs do nvim
nnoremap <leader>ev :vsplit C:\Users\willo\AppData\Local\nvim\init.vim<cr>
"quita
nnoremap <leader>q :q<cr>
"procura arquivos na pasta do projeto
nnoremap <leader>f :FZF<cr>
"procura palavras no arquivo que está aberto
nnoremap <leader>g :Ag<cr>
"atualiza o arquivo de configuração sem precisar sair do nvim
nnoremap <leader>s :source C:\Users\willo\AppData\Local\nvim\init.vim<cr>
"divide a tela na vertical
nnoremap <leader>v :vnew<cr>
"divide a tela na horizontal
nnoremap <leader>h :new<cr>
"se move entre os buffers
nnoremap <leader><Right> <C-w><Right>
nnoremap <leader><Left>  <C-w><Left>
nnoremap <leader><Up>  <C-w><Up>
nnoremap <leader><Down>  <C-w><Down>
