" utilizando fold method como fold-marker, onde os comentários podem indicar
" folds
" vim:fdm=marker

" configurações básicas {{{
set nocompatible  " não precisamos ser totalmente compatíveis com o Vi!
syntax on         " habilita syntax highlight
let mapleader=" "
set history=1000
" }}}

" tabs default {{{
set tabstop=2           " número de espaços da tabulação
set softtabstop=2     	" número de espaços de tabulação para edição
set shiftwidth=2        	" número de espaços para usar com a indentação automática
set expandtab          	" fim da guerra: use espaços ao invés de tabulações
" }}}

" plugin manager {{{
source ~/.vim/custom/vundle.vim
" }}}

" encoding {{{
set encoding=utf-8      " encoding utilizado dentro do editor
set fileencoding=utf-8  " encoding utilizado para os arquivos
" }}}

" filetype {{{
filetype plugin on      " carrega plugins do filetype
filetype indent on      " habilita indentação do filetype
" }}}

" visual {{{

set t_Co=256
set t_ut=
set background=dark

set number relativenumber      " número relativo da linha, salva a pátria!
set novisualbell        " sem ficar piscando, enche o saco
set smartindent         " indenta linhas novas
set foldmethod=indent   " método de fold (dobras) baseado em indentação
set ignorecase          " ignora maiúsculas e minúsculas
set hlsearch            " destaca os termos de pesquisa que foram encontrados
set incsearch           " mostra o termo de pesquisa enquanto ele é digitado
set laststatus=2        " sempre usar linhas de status
set textwidth=80        " comprimento máximo do texto inserido antes de quebrar a linha
set cursorline          " destaca a linha que o cursor está
set showmatch           " mostra os parenteses que 'casam'
set splitbelow          " posiciona janelas divididas sempre abaixo da atual
" }}}
"
set autoread            "Reload files changed outside vim
set noswapfile
set nobackup
set nowb
set visualbell
set t_vb=

" Enhancing % operator
runtime macros/matchit.vim

"  scrolling {{{
set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1
" }}}

" backup {{{
set nobackup      " não mantém arquivos .swp
set writebackup   " cria um arquivo de backup quando sobrescreve
" }}}

" sessões {{{
map ms :mksession!   /tmp/session.vim<CR> 
map rs :source       /tmp/session.vim<CR>
" }}}

" correção ortográfica {{{
map spon :set spell spelllang=pt<CR>
map spof :set nospell<CR>
" }}}

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>
" Mapping irb
nnoremap <leader>irb :VtrOpenRunner {'orientation': 'h', 'percentage': 50, 'cmd': 'irb'}<cr>

let g:rspec_command = "VtrSendCommandToRunner! rspec {spec}"

map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

highlight ColorColumn ctermbg=red
set colorcolumn=120

let g:vimrubocop_keymap = 0
nmap <Leader>r :RuboCop<CR>

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

" Set Gdiff to split vertically as default behavior
set diffopt+=vertical
" Fugitive Conflict Resolution
nnoremap <leader>gd :Gdiffsplit!<CR>
nnoremap gdh :diffget //2<CR>
nnoremap gdl :diffget //3<CR>

Plugin 'christoomey/vim-tmux-runner'
Plugin 'thoughtbot/vim-rspec'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-endwise'
Plugin 'ervandew/supertab'
Plugin 'ngmy/vim-rubocop'


source ~/.vim/custom/gui.vim
source ~/.vim/custom/nerdtree.vim
source ~/.vim/custom/tagbar.vim
source ~/.vim/custom/easyalign.vim
source ~/.vim/custom/theme.vim
source ~/.vim/custom/colorizer.vim
source ~/.vim/custom/tmux.vim
source ~/.vim/custom/maps.vim
source ~/.vim/custom/ale.vim
