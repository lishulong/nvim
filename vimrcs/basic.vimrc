" basic vim configuration

" general setting 
set nocompatible                 " not compatible with the old-fashion vi mode
set bs=2                         " allow backspacing over everything in insert mode
set history=50                   " keep 50 lines of command line history
set ruler                        " show the cursor position all the time
set autoread                     " auto read when file is changed from outside
syntax enable                    " syntax highlight
filetype on                      " Enable filetype detection
filetype indent on               " Enable filetype-specific indenting
filetype plugin on               " Enable filetype-specific plugins

set hlsearch                     " search highlighting
noremap <C-h> :noh<CR>
set t_Co=256                     " 256 color mode
set cc=80                        " do not exceed 80 chars
set cursorline                   " highlight current line
set cursorcolumn

if $TMUX == ''
    set clipboard=unnamed        " yank to the system register (*) by default
endif

set showmatch                    " Cursor shows matching ) and }
set showmode                     " Show current mode
set wildchar=<TAB>               " start wild expansion in the command line using <TAB>
set wildmenu                     " wild char completion menu

set wildignore=*.o,*.class,*.pyc " ignore these files while expanding wild chars

set autoindent                   " auto indentation
set incsearch                    " incremental search
set nobackup                     " no *~ backup files
set noswapfile
set copyindent                   " copy the previous indentation on autoindenting
set ignorecase                   " ignore case when searching
set smartcase                    " ignore case if search pattern is all lowercase,case-sensitive otherwise
set nu                           " display line number
set nowrap                       " no wrap line

" disable sound on errors
set noerrorbells
set visualbell
set tm=500

set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,gb2312,latin1

set listchars=trail:☠,extends:<,precedes:> " handle space and trial

set ts=4
set softtabstop=4
set shiftwidth=4
set expandtab                    " replace <TAB> with spaces
let mapleader = ","              " rebind map

let $NVIM_TUI_ENABLE_TRUE_COLOR=1 " neovim true color

colorscheme solarized
let g:solarized_termcolors=256

" colorscheme gruvbox
" set background=light
" let g:gruvbox_contrast_light="soft"


set previewheight=8             " preview window height

" make log colorful
autocmd BufNewFile,BufReadPost *.out :set filetype=messages
autocmd BufNewFile,BufReadPost *.log :set filetype=messages
au BufRead,BufNewFile /etc/nginx/*,/usr/local/s2/current/nginx/conf/*,*nginx.conf :set filetype=nginx

set hidden                       " if hidden is not set, TextEdit might fail.
set nowritebackup
set cmdheight=2                  " Better display for messages
set updatetime=300               " Smaller updatetime for CursorHold & CursorHoldI
set shortmess+=c                 " don't give |ins-completion-menu| messages.
set signcolumn=yes               " always show signcolumns

autocmd FileType go setlocal noexpandtab
let g:loaded_python3_provider = 1
