filetype off
call pathogen#runtime_append_all_bundles()

syntax on
colorscheme wombat256
filetype plugin indent on
set autoindent cindent
set autoread hidden nobackup
set cursorline number ruler visualbell
set incsearch hlsearch ignorecase smartcase
set laststatus=2 scrolloff=2 t_Co=256
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

set tabstop=2 expandtab shiftwidth=2 softtabstop=2
au BufRead,BufNewFile	*.go		setlocal noexpandtab
au BufRead,BufNewFile	*.cl		setlocal filetype=c
au BufRead,BufNewFile	SCons*	setlocal filetype=python
au BufWritePre		*		normal m`:%s/\s\+$//e``

if has("gui_running")
	set guifont=Inconsolata\ 14
	set lines=9999 columns=9999
endif
