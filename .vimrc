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
set t_Co=256


autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


set list
set listchars=tab:▸\.,trail:.,extends:#,nbsp:.
autocmd BufWritePre * :%s/\s\+$//e


set hlsearch
set incsearch
set showmatch
set smartcase
set ignorecase


set number
set cursorline
highlight clear CursorLine
highlight LineNr term=none ctermfg=115 ctermbg=235
highlight CursorLineNr term=bold cterm=none ctermfg=red ctermbg=none


set history=9999
set undolevels=1000
set noerrorbells
set visualbell
set title
set noswapfile
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
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle'))

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
"NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'sheerun/vim-polyglot'
NeoBundle 'fatih/vim-go'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'bling/vim-airline'
NeoBundle 'jiangmiao/auto-pairs'
NeoBundle 'stephpy/vim-php-cs-fixer'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'fatih/molokai'


" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------



"-------------- ctrlP start -----
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_mruf_max = 9999
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:50,results:50'
let g:ctrlp_extensions = ['funky']
let g:ctrlp_funky_syntax_highlight = 1
"-------------- ctrlP end   -----



"---------- vim-go start ---------
let g:go_fmt_command = "goimports"
let g:go_fmt_autosave = 1
"---------- vim-go end ---------


"---------- syntastic start -------
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_php_checkers = ['php']
"---------- syntastic end -------


"---------- php-cs-fixer start -------
let g:php_cs_fixer_level = "all"                  " which level ?
let g:php_cs_fixer_config = "default"             " configuration
let g:php_cs_fixer_php_path = "php"               " Path to PHP
" If you want to define specific fixers:
"let g:php_cs_fixer_fixers_list = "linefeed,short_tag,indentation"
let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                    " Return the output of command if 1, else an inline information.
"---------- php-cs-fixer end -------


"---- airline start ---------
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
set laststatus=2
"---- airline end ---------

"---- colorscheme start -------
colorscheme molokai
"---- colorscheme end ---------
