" Remove vi old behavior
set nocompatible
filetype off

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=1000

" Enable filetype plugin
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vimrc

" Set default shell
set shell=/bin/zsh


""""""""""""""""""""""""""""""
" => Hotkeys
""""""""""""""""""""""""""""""
" Toggle paste mode with F2
set pastetoggle=<F2>

" Toggle numbers with F3
function! ToggleNumber()
  if &rnu == 1
     set nornu
     set nonu
  elseif &nu == 1
     set rnu
  else
     set nu
  endif
endfunc
noremap <F3> :call ToggleNumber()<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Always show the status line
set laststatus=2
set statusline=%f%m%r%h%=[%l:%L][%c]

" Show which mode we are in
set showmode

set wildmenu "Turn on WiLd menu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
  set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
else
  set wildignore+=.git\*,.hg\*,.svn\*
endif

set ruler "Always show current position

set cmdheight=1 "The commandbar height

set hid "Change buffer - without saving

" Set backspace config
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set ignorecase "Ignore case when searching
set smartcase

set hlsearch "Highlight search things

set incsearch "Make search act like search in modern browsers

set lazyredraw "Don't redraw while executing macros

set magic "Set magic on, for regular expressions

set showmatch "Show matching bracets when text indicator is over them
set mat=2 "How many tenths of a second to blink

" No sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"" Fold option
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent

" disable arrow keys
map     <up>    <nop>
map     <down>  <nop>
map     <left>  <nop>
map     <right> <nop>
imap    <up>    <nop>
imap    <down>  <nop>
imap    <left>  <nop>
imap    <right> <nop>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Enable syntax hl
syntax enable

"Set font
set background=dark

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8
try
  lang en_US
catch
endtry

" Set Unix as the standard file type
set ffs=unix,dos,mac "Default file types


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git anyway...
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" 1 tab == 4 spaces
set softtabstop=2
set shiftwidth=2
set tabstop=2

set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

