" PLUGINS
" ----------

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'jiangmiao/auto-pairs'

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

set tabstop=2
set shiftwidth=2
" MAPS
" ----------

" NERDTREE BIND
nmap <C-n> :NERDTreeToggle<CR>
nmap <C-\> :PrettierAsync<CR>  

" FORMATTERS
" ---------- 

let g:prettier#config#tab_width = 2 
let g:prettier#config#semi = 'false'
let g:prettier#config#trailing_comma = 'none'
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
