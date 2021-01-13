call plug#begin()
Plug 'liuchengxu/space-vim-dark' "meu tema do nvim
Plug 'terryma/vim-multiple-cursors' "pra usar multiplos cursores que nem no vscode
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } "fuzzy finder pra achar palavras no arquivo/pasta do projeto
Plug 'sheerun/vim-polyglot' "syntax highlight
Plug 'junegunn/fzf.vim' "funciona junto com o fzf
Plug 'jiangmiao/auto-pairs' "pra fazer pares de parenteses etc
call plug#end()

"Minhas configs

colorscheme space-vim-dark
set background=dark "necessario pra usar o gruvbox
set shiftwidth=4 "tab com 4 espaços
set number "mostra os numeros na coluna
set relativenumber "mostra a distancia relativa da linha que estou pra qualquer outra linha
set mouse=a "ativa o mouse
set inccommand=split "ativa o preview das coisas

"tipo a tecla do i3wm
let mapleader = "\<space>"

"abre a tela pra editar as configs do nvim
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
"quita
nnoremap <leader>q :q<cr>
"procura arquivos na pasta do projeto
nnoremap <leader>f :FZF<cr>
"procura palavras no arquivo que está aberto
nnoremap <leader>g :Ag<cr>
"atualiza o arquivo de configuração sem precisar sair do nvim
nnoremap <leader>s :source ~/.config/nvim/init.vim<cr>
"divide a tela na vertical
nnoremap <leader>v :vsplit<cr>
"divide a tela na horizontal
nnoremap <leader>h :split<cr>
"se move entre os buffers
nnoremap <leader><Right> <C-w><Right>
nnoremap <leader><Left>  <C-w><Left>
nnoremap <leader><Up>  <C-w><Up>
nnoremap <leader><Down>  <C-w><Down>
