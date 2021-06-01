call plug#begin()
Plug 'morhetz/gruvbox' "meu tema do nvim
Plug 'terryma/vim-multiple-cursors' "pra usar multiplos cursores que nem no vscode
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } "fuzzy finder pra achar palavras no arquivo/pasta do projeto
Plug 'sheerun/vim-polyglot' "syntax highlight
Plug 'junegunn/fzf.vim' "funciona junto com o fzf
Plug 'preservim/nerdtree' "arvore de arquivos
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vimsence/vimsence' "discord rpc
Plug 'jiangmiao/auto-pairs'
call plug#end()


"Minhas config

colorscheme gruvbox
set updatetime=300 "coc.nvim
set shortmess+=c "coc.nvim
set pyxversion=3
set clipboard=unnamedplus
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

"ativar nerdtree
nnoremap <leader>n :NERDTreeToggle<cr>
"abrir o terminal na vertical
nnoremap <leader>t :vnew term://fish<cr>
"abrir terminal na horizontal
nnoremap <leader><S-t> :sp term://fish<cr>
"sair do terminal
tnoremap <Esc> <C-\><C-n>
"abre a tela pra editar as configs do nvim
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
"salva
nnoremap <leader>w :w<cr>
"quita
nnoremap <leader>q :q<cr>
"procura arquivos na pasta do projeto
nnoremap <leader>f :Files<cr>
"procura palavras no arquivo que está aberto
nnoremap <leader>g :Ag<cr>
"atualiza o arquivo de configuração sem precisar sair do nvim
nnoremap <leader>s :source ~/.config/nvim/init.vim<cr>
"divide a tela na vertical
nnoremap <leader>v :vnew<cr>
"divide a tela na horizontal
nnoremap <leader>h :new<cr>
"se move entre os buffers
nnoremap <leader><Right> <C-w><Right>
nnoremap <leader><Left>  <C-w><Left>
nnoremap <leader><Up>  <C-w><Up>
nnoremap <leader><Down>  <C-w><Down>
