call plug#begin("$XDG_CONFIG_HOME/nvim/plugged")
    Plug 'chrisbra/csv.vim'
    Plug 'moll/vim-bbye'
    Plug 'simeji/winresizer'
    Plug 'junegunn/fzf.vim'
    Plug 'simnalamburt/vim-mundo'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'zchee/deoplete-jedi'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'jiangmiao/auto-pairs'
    Plug 'scrooloose/nerdcommenter'
    Plug 'sbdchd/neoformat'
    Plug 'davidhalter/jedi-vim'
    Plug 'scrooloose/nerdtree'
    Plug 'neomake/neomake'
    Plug 'machakann/vim-highlightedyank'
    Plug 'morhetz/gruvbox'
call plug#end()

set clipboard+=unnamedplus

" disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" no swap file
set noswapfile

" set undo-trees in files
set undofile
set undodir=$HOME/.config/nvim/undo

" number of undo saved
set undolevels=10000
set undoreload=10000

" set line numbers
set number

" use 4 spaces instead of tab()
" copy indent from current line when starting a new line
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" CSV
autocmd BufRead,BufWritePost *.csv :%ArrangeColumn!
autocmd BufWritePre *.csv :%UnArrangeColumn

" deoplete
let g:deoplete#enable_at_startup = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" airline
let g:airline_theme='solarized'
let g:airline_solarize_bg='dark'

" neoformat
" let g:neoformat_basic_format_align = 1
" let g:neoformat_basic_format_retab = 1
" let g:neoformat_basic_format_trim = 1

" jedi-vim
let g:jedi#completions_enabled = 0
let g:jedi#use_splits_not_buffers = "right"

" nerdtree
nnoremap <silent> <C-f> :NERDTreeToggle<CR>

" neomake
let g:neomake_python_enabled_makers = ['pylint']

" highlightedyank
hi HighlightedyankRegion cterm=reverse gui=reverse
let g:highlightedyank_highlight_duration = 5000

" gruvbox
colorscheme gruvbox
set background=dark
