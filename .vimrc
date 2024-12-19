set enc=utf8
set guifont=Ubuntu\ Mono\ 13
set nobackup
set noundofile
set hlsearch " 검색어 하이라이팅
set nu " 줄번호
set autoindent " 자동 들여쓰기
set scrolloff=2
set wildmode=longest,list
set ts=4 "tag select
set sts=4 "st select
set sw=1 " 스크롤바 너비
set autowrite " 다른 파일로 넘어갈 때 자동 저장
set autoread " 작업 중인 파일 외부에서 변경됬을 경우 자동으로 불러옴
set cindent " C언어 자동 들여쓰기
set bs=eol,start,indent
set history=256
set laststatus=2 " 상태바 표시 항상
"set paste " 붙여넣기 계단현상 없애기
set shiftwidth=4 " 자동 들여쓰기 너비 설정
set showmatch " 일치하는 괄호 하이라이팅
set smartcase " 검색시 대소문자 구별
set expandtab
set smarttab
set smartindent
set softtabstop=4
set tabstop=4
set ruler " 현재 커서 위치 표시
set incsearch
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
" 마지막으로 수정된 곳에 커서를 위치함
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif
" 파일 인코딩을 한국어로
if $LANG[0]=='k' && $LANG[1]=='o'
set fileencoding=korea
endif
" 구문 강조 사용
if has("syntax")
 syntax on
endif
" 컬러 스킴 사용
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
