set number
set title
set ruler
set showmatch
set visualbell

" tab setting
set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent

" status setting
set statusline=%n\:%y%F\ \|%{(&fenc!=''?&fenc:&enc).'\|'.&ff.'\|'}%m%r%=<%l/%L:%p%%>
set laststatus=2
highlight StatusLine term=NONE cterm=NONE ctermfg=black ctermbg=white

" cursol map on insert mode.
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
"Plug 'blueshirts/darcula'
Plug 'posva/vim-vue'
call plug#end()

" nerdtree
map <C-n> :NERDTreeToggle<CR>

" color setting
syntax enable
"colorscheme darcula

" vue
autocmd FileType vue syntax sync fromstart
