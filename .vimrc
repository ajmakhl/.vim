" PLUGINS
" ----------

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

" SETS
" ---------- 

" insert viminfo into .vim dir
set viminfo+=n~/.vim/.viminfo

" show line numbers
set number relativenumber

" show commands
set showcmd

" CTRLP
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" NERDTREE BIND
nmap <C-n> :NERDTreeToggle<CR>
