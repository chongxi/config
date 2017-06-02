" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
"if filereadable("/etc/vim/vimrc.local")
  "source /etc/vim/vimrc.local
"endif

set pastetoggle=<F2>
set clipboard=unnamed


" " Mouse and backspace
"set mouse=a  " on OSX press ALT and click
set bs=2     " make backspace behave like normal again
"
" " Rebind <Leader> key
let mapleader=";"
map <leader>n :sp<CR>
map <leader>v :vsp<CR>

"
"
" " Bind nohl
" " Removes highlight of your last search
" " ``<C>`` stands for ``CTRL`` and therefore ``<C-n>`` stands for ``CTRL+n``
noremap <C-n> :nohl<CR>
" "" vnoremap <C-n> :nohl<CR>
" "" inoremap <C-n> :nohl<CR>
"
"

" " Quicksave command
map <leader>s :w<CR>
map <leader>q :q<CR>
"
"
"
" " Quick quit command
" "" noremap <Leader>e :quit<CR>  " Quit current window
" "" noremap <Leader>E :qa!<CR>   " Quit all windows
"
"
" " bind Ctrl+<movement> keys to move around the windows, instead of using
" Ctrl+w + <movement>
" " Every unnecessary keystroke that can be saved is good for your health :)
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
"
"
" " easier moving between tabs
" "" map <Leader>n <esc>:tabprevious<CR>
" "" map <Leader>m <esc>:tabnext<CR>
"
"
" " map sort function to a key
" "" vnoremap <Leader>s :sort<CR>
"
"
" " easier moving of code blocks
" " Try to go into visual mode (v), thenselect several lines of code here and
" " then press ``>`` several times.
" "" vnoremap < <gv  " better indentation
" "" vnoremap > >gv  " better indentation
"
"
" " Show whitespace
" " MUST be inserted BEFORE the colorscheme command
" "" autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
" "" au InsertLeave * match ExtraWhitespace /\s\+$/
"
" " Vundle and Plugins 
set nocompatible	
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'scrooloose/nerdcommenter'   " commenter: \cc \cu:
Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'vhda/verilog_systemverilog.vim'
Plugin 'amal-khailtash/vim-xdc-syntax'
call vundle#end()            " required

" " Enable syntax highlighting and automatic indent
filetype plugin indent on
syntax on



" ColorScheme
set background=dark
set t_Co=256
highlight Normal ctermfg=grey ctermbg=black
syntax enable
let g:solarized_termcolors=256 
colorscheme PaperColor 
" solarized

" " Highlight current line
set cursorline
hi CursorLine term=bold cterm=bold
"
"
" " Showing line numbers and length
set number  " show line numbers
set relativenumber
set tw=79   " width of document (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
"set colorcolumn=90
"highlight ColorColumn ctermbg=233
"
"
" " easier formatting of paragraphs
" "" vmap Q gq
" "" nmap Q gqap
"
"
" " Useful settings
" "" set history=700
" "" set undolevels=700
"
"
" " Real programmers don't use TABs but spaces
" "" set tabstop=4
set softtabstop=4
set shiftwidth=4
" "" set shiftround
" "" set expandtab
"
"
" " Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase
"

" Youcompleteme
" let g:ycm_path_to_python_interpreter = '/usr/bin/python'
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_collect_identifiers_from_tags_files = 1
"map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
map <leader>g  :YcmCompleter GoTo<CR>


"
" Ctrl+N 打开/关闭
map <F7> :NERDTreeToggle<CR>
" " 当不带参数打开Vim时自动加载项目树
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" " 当所有文件关闭时关闭项目树窗格
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" " 不显示这些文件
let NERDTreeIgnore=['\.pyc$', '\~$', 'node_modules'] "ignore files in NERDTree
" " 不显示项目树上额外的信息，例如帮助、提示什么的
let NERDTreeMinimalUI=1


" Tagbar
nmap <F8> :TagbarToggle<CR>
let g:tagbar_autoshowtag = 1
let g:tagbar_autopreview = 1
let g:tagbar_silent = 1
autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx,*.py call tagbar#autoopen()

" ultisnips
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
"let g:UltiSnipsSnippetDirectories = ['/Users/laic/.vim/UltiSnips', 'UltiSnips']

map <F5> :call RunPython()<CR>
map <F6> :call DebugPython()<CR>
func! RunPython()
    exec "w"
    if &filetype == 'python'
	exec "!time /disk0/anaconda2/bin/python %"
    endif
endfunc
func! DebugPython()
    exec "w"
    if &filetype == 'python'
	exec "! /disk0/anaconda2/bin/python %"
    endif
endfunc

set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim
set laststatus=2
set t_Co=256
