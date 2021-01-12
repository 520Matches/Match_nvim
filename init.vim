syntax on

set ts=4
set softtabstop=4
set shiftwidth=4
set mouse=a
set encoding=utf-8

" set langmenu=zh_CN.UTF-8
" language message zh_CN.UTF-8
" set termencoding=utf-8

set scrolloff=5

set autoindent
set number
set nohlsearch
"set relativenumber

"system
set clipboard=unnamedplus
set wildmenu

"environmental
set sessionoptions="blank,buffers,globals,localoptions,tabpages,sesdir,folds,help,options,resize,winpos,winsize"
set undodir=~/.vim/.vim_undo_history/
set undofile

set clipboard+=unnamedplus

let mapleader=" "
map <leader>h <C-w>h
map <leader>l <C-w>l
map <leader>j <C-w>j
map <leader>k <C-w>k

map <F5> :source ~/.vimrc<CR>

map sh :vsplit<CR>
map sl :vsplit<CR><C-w>l
map sj :split<CR><C-w>j
map sk :split<CR>


map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>


inoremap <C-l> <Right>
inoremap <C-h> <Left>
inoremap <C-k> <Up>
inoremap <C-j> <Down>

nnoremap <silent> g0 :?^{<CR>
nnoremap <silent> g9 :/^}<CR>

" vnoremap <leader>y "+y
" nmap <leader>p "+p

" map <leader>ss :mksession! ~/.vim/my.vim<cr> :wviminfo! ~/.vim/my.viminfo<cr>
" map <leader>rs :source ~/.vim/my.vim<cr> :rviminfo ~/.vim/my.viminfo<cr>

map <F2> <Plug>(wildfire-fuel)
vmap <F3> <Plug>(wildfire-water)
let g:wildfire_objects=["i'", 'i"', "i)", "i]", "i}", "i>", "ip"]

call plug#begin('~/.vim/plugged')

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } , 'for' : ['markdown' , 'vim-plug'] }
Plug 'iamcco/mathjax-support-for-mkdp'
" Plug 'iamcco/markdown-preview.vim'

Plug 'dhruvasagar/vim-table-mode'

Plug 'preservim/nerdtree'

Plug 'majutsushi/tagbar'

Plug 'junegunn/vim-peekaboo'

Plug 'preservim/nerdcommenter'

" Plug 'SpaceVim/cscope.vim'

Plug 'godlygeek/tabular'

Plug 'airblade/vim-gitgutter'

" Plug 'tpope/vim-fugitive'

" Plug 'ycm-core/YouCompleteMe' , { 'do' : './install.py' }

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Plug 'kdheepak/lazygit.vim'

Plug 'junegunn/fzf',{'do':'./install --bin'}
Plug 'junegunn/fzf.vim'

Plug 'vim-scripts/DfrankUtil'
Plug 'vim-scripts/vimprj'
Plug 'vim-scripts/indexer.tar.gz'

Plug 'gcmt/wildfire.vim'

Plug 'vim-scripts/VisIncr'

" Plug 'dhruvasagar/vim-open-url'

Plug '520Matches/vim-open-url'

Plug 'ianva/vim-youdao-translater'

" float terminal
Plug 'voldikss/vim-floaterm'

" indentLine
" Plug 'Yggdroot/indentLine'

" vim-easymotion
Plug 'easymotion/vim-easymotion'

" vim-buffet
Plug 'bagrat/vim-buffet'

" vim-devicons
Plug 'ryanoasis/vim-devicons'

" Plug 'airline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" defx
" Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'kristijanhusak/defx-icons'

Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" Plug 'lyokha/vim-xkbswitch'

Plug '520Matches/fcitx5.vim'

Plug 'matze/vim-move'

call plug#end()

"cscope================================================
"set cscopequickfix=s-,c-,d-,i-,t-,e-

"tabularize============================================
map <leader>= :Tabularize /=<CR>
map <leader>, :Tabularize /,<CR>
map <leader>; :Tabularize /;<CR>
map <leader>( :Tabularize /(<CR>
map <leader>: :Tabularize /:<CR>
map <leader><Space> :Tabularize /<Space><CR>


"nerdtree===============================================
map <C-n> :NERDTreeToggle<CR>

"tagbar==================================================
nmap <F8> :TagbarToggle<CR><C-w>l

"nerdcommenter
source ~/.vim/config/nerdcommenter.conf

"markdown-preview========================================
source ~/.vim/config/markdown-preview.conf 

"vim-table-mode
source ~/.vim/config/vim-table-mode.conf

"vim-scripts============================================
" indexer
let g:indexer_ctagsCommandLineOptions="--c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q"

"junegunn/fzf==========================================
nnoremap <silent> <Leader>F :Files<CR>
nnoremap <silent> <Leader>b :Buffers<CR>

"Ag===================================================
" command! -bang -nargs=* Ag
  " \ call fzf#vim#ag(<q-args>,
  " \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  " \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  " \                 <bang>0)
nnoremap <silent> <Leader>a :Ag<CR>

" lazygit==============================================
" nnoremap <silent> <Leader>zg :! lazygit<CR>

" vim-scripts/VisIncr==================================
source ~/.vim/config/visincr.conf

" vim-youdao-translater================================
vnoremap <silent> <C-T> :<C-u>Ydv<CR>
nnoremap <silent> <C-T> :<C-u>Ydc<CR>
noremap <Leader>yd :<C-u>Yde<CR>

" float terminal
source ~/.vim/config/floaterm.conf

" coc
source ~/.vim/config/coc.conf

" source ~/.vim/config/indentLine.conf

" easymotion
source ~/.vim/config/easymotion.conf

" vim-buffet
source ~/.vim/config/buffet.conf
" use command 'bd' to close current buffer

" defx
" nmap <silent> <leader>e :Defx -columns=icons:indent:filename:type<CR>

" vim-visual-multi
let g:VM_maps = {}
let g:VM_maps['Find Under']         = '<C-m>'
let g:VM_maps['Find Subword Under'] = '<C-m>'

