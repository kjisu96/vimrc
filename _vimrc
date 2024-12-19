source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set enc=utf8
set guifont=JetBrains_Mono:h11
set nobackup
set noswapfile
set noundofile
set hlsearch " �˻��� ���̶�����
set nu " �ٹ�ȣ
set autoindent " �ڵ� �鿩����
set scrolloff=2
set wildmode=longest,list
set ts=4 "tag select
set sts=4 "st select
set sw=1 " ��ũ�ѹ� �ʺ�
set autowrite " �ٸ� ���Ϸ� �Ѿ �� �ڵ� ����
set autoread " �۾� ���� ���� �ܺο��� ������� ��� �ڵ����� �ҷ���
set cindent " C��� �ڵ� �鿩����
set bs=eol,start,indent
set history=256
set laststatus=2 " ���¹� ǥ�� �׻�
"set paste " �ٿ��ֱ� ������� ���ֱ�
set shiftwidth=4 " �ڵ� �鿩���� �ʺ� ����
set showmatch " ��ġ�ϴ� ��ȣ ���̶�����
set smartcase " �˻��� ��ҹ��� ����
set expandtab
set smarttab
set smartindent
set softtabstop=4
set tabstop=4
set ruler " ���� Ŀ�� ��ġ ǥ��
set incsearch
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\

"set encoding=cp949
set fileencodings=utf-8,euc-kr
"set langmenu=cp949


" ���������� ������ ���� Ŀ���� ��ġ��
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

" ���� ���� ���
if has("syntax")
 syntax on
endif
" �÷� ��Ŵ ���
colorscheme slate
set sm
set exrc

autocmd BufNewFile,BufRead Makefile,makefile set noexpandtab
