source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set enc=utf8
set guifont=Ubuntu\ Mono\ 13
set nobackup
set noundofile
set hlsearch " search result highlighting
set nu
set autoindent
set scrolloff=2
set wildmode=longest,list
set ts=4 "tag select
set sts=4 "st select
set sw=1 " scroll width
set autowrite " store automatically when change to other file
set autoread " 작업 중인 파일 외부에서 변경됬을 경우 자동으로 불러옴
set cindent " C language auto indent
set bs=eol,start,indent
set history=256
set laststatus=2 " always show status bar
"set paste " remove stair phenomenon when paste
set shiftwidth=4 " width for automatic indent width
set showmatch " matched bracket highlighting
set smartcase " distinct case when search
set expandtab
set smarttab
set smartindent
set softtabstop=4
set tabstop=4
set ruler " show current cursor location
set incsearch
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
" locate cursor at last modified position
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif
" file encoding as Korean
if $LANG[0]=='k' && $LANG[1]=='o'
set fileencoding=korea
endif
" 
if has("syntax")
 syntax on
endif
" 
"colorscheme slate
colorscheme jellybeans
set sm
set exrc


autocmd BufNewFile,BufRead Makefile,makefile set noexpandtab

au BufNewFile,BufRead *.resc setfiletype resc
