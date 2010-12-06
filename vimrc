syntax on
colorscheme zenburn
filetype plugin indent on
set number
set hidden
set visualbell
set autoread nobackup
set autoindent cindent
set incsearch ignorecase smartcase
set scrolloff=2
if has("gui_running")
	set guifont=Inconsolata\ 14
	set lines=9999 columns=9999
endif
au BufRead,BufNewFile *.cl       setlocal filetype=c
au BufRead,BufNewFile *.py       setlocal tabstop=4 expandtab shiftwidth=4 softtabstop=4
au BufRead,BufNewFile SConstruct setlocal filetype=python tabstop=4 expandtab shiftwidth=4 softtabstop=4
au BufRead,BufNewFile SConscript setlocal filetype=python tabstop=4 expandtab shiftwidth=4 softtabstop=4
au BufWritePre        *          normal m`:%s/\s\+$//e``

nmap ,t :NERDTree<CR>
nmap ,f :FufFile<CR>
nmap ,b :FufBuffer<CR>
nmap ,n :bn<CR>
nmap ,p :bp<CR>
