" ======== Installation ========
" ======== Installation ========
" ======== Installation ========
" 1. Install Vim-Plug:
"    $ curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"         https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"    Using vim, then enter ":PlugInstall"
" 2. Install YouCompleteMe:
"    for Ubuntu 16.04 and Later:
"      $ sudo apt install build-essential cmake python3-dev
"      $ cd .vim/plugged/YouCompleteMe/
"      $ python3 install.py
"    for MacOS:
"      $ brew install cmake go npm macvim
"      $ cd .vim/plugged/YouCompleteMe/
"      $ ./install.py or ./install.py --all


" ======== Plugin Setting =======
" ======== Plugin Setting =======
" ======== Plugin Setting =======
" Vim Plugin Manager - https://github.com/junegunn/vim-plug
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" ======== My Plugin ========

" Retro groove color scheme for Vim: https://github.com/gruvbox-community/gruvbox
Plug 'morhetz/gruvbox'

" vim-airline: https://github.com/vim-airline/vim-airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" jedi autocompletion library for VIM: https://github.com/davidhalter/jedi-vim
" git clone --recursive https://github.com/davidhalter/jedi-vim.git ~/.vim/bundle/jedi-vim
Plug 'davidhalter/jedi-vim'

" python-mode for VIM: https://github.com/python-mode/python-mode
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

" A code-completion engine for Vim: https://github.com/ycm-core/YouCompleteMe
Plug 'Valloric/YouCompleteMe'

" Colors
Plug 'altercation/vim-colors-solarized'
Plug 'jnurmine/Zenburn'

Plug 'scrooloose/syntastic'
Plug 'nvie/vim-flake8'
Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plug 'jistr/vim-nerdtree-tabs'
Plug 'kien/ctrlp.vim'

" ======== My Plugin ========

" Initialize plugin system
call plug#end()


" ======== Configuration Setting ========
" ======== Configuration Setting ========
" ======== Configuration Setting ========

"set background=light   " Setting light mode
"set background=dark    " Setting dark mode

" colorscheme setting
if has('gui_running')
    set background=dark
    colorscheme solarized
else
    set background=dark
    colorscheme gruvbox
    "colorscheme zenburn
endif

set encoding=utf-8
set nu
set cursorline    " enable the horizontal line
set cursorcolumn  " enable the vertical line
set clipboard=unnamed
set backspace=2 " Enable 'Backspace' button in Insert Mode.

set tabstop=4
set shiftwidth=4
set mouse="" " Enable: set mouse=a , Disable: set mouse=""
set ruler
set history=100
set incsearch
set expandtab

" Support Python PEP8 style
autocmd BufNewFile,BufRead *.py call SetPythonFilesOptions()

function SetPythonFilesOptions()
    set tabstop=4
    set softtabstop=4
    set shiftwidth=4
    set textwidth=79
    set expandtab
    set autoindent
    set fileformat=unix
endfunction

" Flagging Unnecessary Whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
autocmd BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" 記住上次的編輯位置
autocmd BufReadPost * if line("'\"")>0&&line("'\"")<=line("$") | exe "normal g'\"" | endif

let python_highlight_all=1
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
syntax on

nnoremap <silent> [oh :call gruvbox#hls_show()<CR>
nnoremap <silent> ]oh :call gruvbox#hls_hide()<CR>
nnoremap <silent> coh :call gruvbox#hls_toggle()<CR>

nnoremap * :let @/ = ""<CR>:call gruvbox#hls_show()<CR>*
nnoremap / :let @/ = ""<CR>:call gruvbox#hls_show()<CR>/
nnoremap ? :let @/ = ""<CR>:call gruvbox#hls_show()<CR>?
