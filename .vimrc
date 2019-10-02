syntax on
set hidden
set wildmenu
set showcmd
set hlsearch
set ignorecase
set smartcase
set autoindent
set nostartofline
set ruler
set laststatus=2
set confirm
set mouse=a
set cmdheight=2
set number
set shiftwidth=4
set softtabstop=4
set expandtab
set incsearch

execute pathogen#infect()
filetype plugin indent on
let NERDTreeHijackNetrw=1

map <C-o> :NERDTreeToggle<CR>
map ; :Files<CR>
nmap <Leader>b :Buffers<CR>
nmap <Leader>h :History<CR>
nmap <Leader>l :BLines<CR>
nmap <Leader>' :Marks<CR>
nmap <Leader>/ :Ag<Space>
nmap <Leader>H :Helptags!<CR>
"nmap <Leader>/ <Plug>AgRawSearch

set background=dark

source ~/.vim/colorscheme.vim

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" Plug configuration
call plug#begin('~/.vim/plugged')

" defx
if has('nvim')
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/defx.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" FZF
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'jesseleite/vim-agriculture'

call plug#end()
