syntax on

set fileformat=unix
set encoding=UTF-8

" for python file the indentation is 4 spaces others are 2 spaces
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |

set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2
set autoindent
set smartindent
set smarttab

set nowrap
set list
set listchars=eol:.,tab:>-,trail:~,extends:>,precedes:<

set noshowmode
set number
set relativenumber
set cursorline
set cursorcolumn
hi cursorlineNr cterm=bold ctermfg=Yellow ctermbg=NONE
hi cursorLine cterm=bold ctermbg=242
hi cursorColumn ctermbg=242
set textwidth=79
set signcolumn

set showcmd
set scrolloff=10
set conceallevel=1

set noerrorbells visualbell t_vb=
set clipboard=unnamed

set ignorecase
set smartcase
set incsearch
set hlsearch
nnoremap <CR> :noh<CR><CR>:<backspace>

so ~/.vim/plugins.vim
so ~/.vim/plugin-config.vim
so ~/.vim/autoclose.vim

"-- some color setting
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
set termguicolors
let g:gruvbox_italic=1
colorscheme gruvbox
set background=dark
" hi Normal guibg=None ctermbg=NONE
let g:terminal_ansi_colors = [
            \ '#282828', '#cc241d', '#98971a', '#d79921', '#458588', '#b16286',
            \ '#689d6a', '#a89984', '#928374', '#fb4934', '#b8bb26', '#fabd2f',
            \ '#83a598', '#d3869b', '#8ec07c', '#ebdbb2',
            \]

