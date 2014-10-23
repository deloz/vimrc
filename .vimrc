set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab


set wrap
set backspace=indent,eol,start
set smarttab
set smartindent
set cindent
set autoindent
set copyindent


set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.


set hlsearch
set incsearch
set showmatch
set smartcase
set ignorecase


set history=9999
set undolevels=1000
set noerrorbells
set visualbell
set title
set noswapfile
set number
set nobackup
set fenc=utf-8
set fencs=utf-8,gb18030,gbk,gb2312,cp936
set confirm
set shortmess=atI
set novisualbell
syntax on


set pastetoggle=<F2>
nnoremap j gj
nnoremap k gk



"NeoBundle Scripts-----------------------------
if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=/home/hehehaha/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/home/hehehaha/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'tacahiroy/ctrlp-funky'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'sheerun/vim-polyglot'
NeoBundle 'fatih/vim-go'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'bling/vim-airline'
NeoBundle 'jiangmiao/auto-pairs'


" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------



"-------------- ctrlP start -----
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

let g:ctrlp_extensions = ['funky']
let g:ctrlp_funky_syntax_highlight = 1
"-------------- ctrlP end   -----

"---------- vim-go start ---------
let g:go_fmt_command = "goimports"
let g:go_fmt_autosave = 1
"---------- vim-go end ---------


let g:syntastic_always_populate_loc_list = 1

"---- airline start ---------
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
set laststatus=2
"---- airline end ---------
