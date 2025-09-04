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

""""" Tag file for Machine Learning in C
"set tags=/home/jskwon/PROJECT/2018-09-08_JSKWON/04_development/2020-12-03_ML_in_C/Learning-Lab-C-Library/tags

""""" Tag file for Renode
"set tags=/home/jskwon/PROJECT/2018-09-08_JSKWON/04_development/2020-11-13_Renode/renode/src/tags

""""" Particle Counter
set tags=./tags

autocmd BufNewFile,BufRead Makefile,makefile set noexpandtab

au BufNewFile,BufRead *.resc setfiletype resc
