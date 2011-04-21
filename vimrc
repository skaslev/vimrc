syntax on
set background=light
if !has('gui_running')
	let g:solarized_termcolors=256
endif
colorscheme solarized
filetype plugin indent on
set ruler, visualbell
set autoindent cindent
set autoread hidden nobackup
set incsearch hlsearch ignorecase smartcase
set scrolloff=2
set listchars=tab:>-,trail:·,eol:$
let mapleader=" "

vmap <leader>x "+x
vmap <leader>c "+y
nmap <leader>v "+gP
nmap <leader>j <C-d><C-d>
nmap <leader>k <C-u><C-u>
nmap <leader>n :bn<CR>
nmap <leader>p :bp<CR>
nmap <leader>d :bd<CR>
nmap <leader>D :bd!<CR>
nmap <leader>w :set list!<CR>
nmap <leader>l :set number!<CR>
nmap <leader>f :FufFile<CR>
nmap <leader>b :FufBuffer<CR>
nmap <leader>t :NERDTree<CR>
cmap w!! %!sudo tee > /dev/null %

au BufRead,BufNewFile	*.cl		setlocal filetype=c
au BufRead,BufNewFile	*.py		setlocal tabstop=4 expandtab shiftwidth=4 softtabstop=4
au BufRead,BufNewFile	SCons*		setlocal filetype=python tabstop=4 expandtab shiftwidth=4 softtabstop=4
au BufWritePre		*		normal m`:%s/\s\+$//e``

if has("gui_running")
	set guifont=Inconsolata\ 14
	set lines=9999 columns=9999
endif
