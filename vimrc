
" general plugins setttings {{{
scriptencoding utf-8
let termencoding="utf-8"

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')
" Completions & snips
Plug 'Shougo/neocomplete'
Plug 'sbdchd/neoformat'
Plug 'apalmer1377/factorus', {'for': ['java', 'c', 'cpp']} 
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ap/vim-css-color', {'for': 'css'}
Plug 'othree/csscomplete.vim', { 'for': 'css'}
Plug 'shawncplus/phpcomplete.vim', {'for': 'php'}
Plug 'StanAngeloff/php.vim', {'for': 'php'} 
Plug 'othree/html5.vim', {'for': 'html'}
" Syntax & languages
Plug 'vim-latex/vim-latex', {'for': ['tex','bib']}
" Plug 'moll/vim-node'
Plug 'elzr/vim-json', {'for': 'json'} 
Plug 'plasticboy/vim-markdown', {'for': 'markdown'} 
Plug 'rhysd/vim-gfm-syntax'
Plug 'MaxMEllon/vim-jsx-pretty', {'for': 'javascript'}
Plug 'pangloss/vim-javascript', {'for': 'javascript'}
Plug 'heavenshell/vim-jsdoc', {'for': 'javascript'}
" Syntax & languages
" Plug 'ervandew/supertab'
Plug 'brooth/far.vim'
Plug 'artur-shaik/vim-javacomplete2', { 'for': 'java' }
Plug 'python-mode/python-mode', { 'for': 'python' }
Plug 'integralist/vim-mypy', { 'for': 'python' }
Plug 'tmhedberg/SimpylFold', { 'for': 'python' }
Plug 'davidhalter/jedi-vim', { 'for': 'python' }
Plug 'Shougo/echodoc.vim'
Plug 'edthedev/vim-todo' 
" Plug 'Shougo/context_filetype.vim'
Plug 'itchyny/vim-cursorword'
Plug 'scrooloose/syntastic'
Plug 'janko-m/vim-test'
Plug 'tpope/vim-dispatch'
Plug 'skywind3000/asyncrun.vim'
Plug 'mattn/emmet-vim'
" Utils
" Plug 'vim-scripts/restore_view.vim'
Plug 'vim-scripts/mru.vim'
Plug 'romainl/vim-cool'
Plug 'terryma/vim-expand-region'
Plug 'vim-scripts/ZoomWin', { 'on': '<Plug>ZoomWin' }
Plug 'AndrewRadev/sideways.vim', { 'on': ['SidewaysLeft', 'SidewaysRight'] }
Plug 'AndrewRadev/splitjoin.vim'
Plug 'AndrewRadev/dsf.vim'
Plug 'vim-scripts/matchit.zip'
" Plug 'kana/vim-textobj-function'
" Plug 'kana/vim-textobj-user'
Plug 'tpope/vim-sleuth'
Plug 'Shougo/vimproc.vim', { 'do' : 'make'}
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 't9md/vim-choosewin'
Plug 'terryma/vim-multiple-cursors'
Plug 'Lokaltog/vim-easymotion'
Plug 'junegunn/vim-easy-align'
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'jreybert/vimagit'
Plug 'sjl/gundo.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'itchyny/calendar.vim'
Plug 'tpope/vim-fugitive'
Plug 'gregsexton/gitv'
Plug 'tpope/vim-surround'
Plug 'kana/vim-niceblock'
Plug 'christoomey/vim-tmux-navigator'
" Plug 'wellle/tmux-complete.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kien/ctrlp.vim'
" tacahiroy/ctrlp-funky " ctrlp like function definition matching
Plug 'drmikehenry/vim-fixkey'
" Color themes
Plug 'sjl/badwolf'
Plug 'romainl/Apprentice'
Plug 'jonathanfilip/vim-lucius'
Plug 'morhetz/gruvbox'
call plug#end()
" }}}

"colorscheme {{{
colorscheme apprentice
set background=dark
let g:airline_theme='lucius'
" }}}

" General keybindings {{{
let mapleader = " "
let maplocalleader = ";"
nnoremap <Leader>q :q!<CR>
nnoremap <Leader>A :qa!<CR>
nnoremap <Leader>s :source $MYVIMRC<CR>
nnoremap <Leader>v :e! $MYVIMRC<CR>
nnoremap <Leader>vv :e! ~/.dotfiles/vimrc<CR>
nnoremap <Leader>c :Copen<CR>
nnoremap <Leader>t :put =strftime('%a, %d %b %Y, %H:%M:%S')<CR>
nnoremap <Leader>er :Errors <CR>
nnoremap <M-f> 0?)<CR>
map <leader>n :cn<cr>
map <leader>p :cp<cr>
" nnoremap <CR> o<ESC>
nnoremap <M-o> A<CR><ESC>

inoremap <c-s> <ESC>:w<CR>
nnoremap <c-s> :w<CR>
nmap -- <Plug>(choosewin)
map <C-w>+ <C-W>10+
map <C-w>- <C-W>10-
map <C-w>< <C-W>5<
map <C-w>> <C-W>5>
" nnoremap <CR> za

" let @f='zf}j'
" nnoremap  zff zf}jj

noremap <F1> :NERDTreeToggle<CR>
nmap <F2> :TagbarToggle<CR>
nnoremap <F3> :mksession! .vim_session<CR>
nnoremap <F4> :source .vim_session<CR>
nnoremap <F6> :w<CR>:!./%<CR>
" }}}

" vimdiff mappings TODO: test{{{
if &diff
    nnoremap [ [c
    nnoremap ] ]c
endif
" }}} 

" vim-todo {{{
let g:vim_todo_keys = 1
" }}} 

" Python mappings {{{
augroup filetype_python
    autocmd!
    nnoremap <F5> :w<CR>:!clear<CR>:!python %<CR>
    nnoremap <Leader>e :Dispatch !python3 %
    nnoremap <Leader>pl :PymodeLintAuto<CR>
augroup END
" }}}

" c, cppp mapping {{{
augroup filetype_cpp
    autocmd!
    autocmd FileType c,cpp nnoremap <F9> :w<CR>:!g++ -Wall -pedantic -Wunused -Wextra %<CR>
    autocmd FileType c,cpp nnoremap <F10> :!./a.out<CR>
augroup END
" }}}

" split window mappings {{{

" Window-control prefix
nnoremap  [Window]   <Nop>
nmap      s [Window]
nnoremap <F3> :mksession! .vim_session<CR>
nnoremap <F4> :source .vim_session<CR>

" Window-control prefix
nnoremap  [Window]   <Nop>
nmap      s [Window]
nnoremap <silent> [Window]v  :<C-u>split<CR>
nnoremap <silent> [Window]g  :<C-u>vsplit<CR>
nnoremap <silent> [Window]t  :tabnew<CR>
nnoremap <silent> [Window]o  :<C-u>only<CR>
nnoremap <silent> [Window]b  :b#<CR>
nnoremap <silent> [Window]c  :close<CR>
nnoremap <silent> [Window]x  :<C-u>call <SID>BufferEmpty()<CR>
" }}}

" Factorus refactoring mappings for python, c, cpp, java {{{
augroup refactor
    autocmd!
    autocmd FileType c,cpp,java map <Leader>fm :FMExtractMethod 
    autocmd FileType c,cpp,java map <Leader>fp :FAddParam
    autocmd FileType c,cpp,java map <Leader>fr :FRename
    autocmd FileType java map <Leader>fe :FEncapsulate 
    augroup END
" }}} 

" Sideways {{{
nnoremap <c-h> :SidewaysLeft<cr>
nnoremap <c-l> :SidewaysRight<cr>
" }}}

" Tabs mappings {{{
" From https://github.com/rafi/vim-config/
nnoremap <silent> g0 :<C-u>tabfirst<CR>
nnoremap <silent> g$ :<C-u>tablast<CR>
nnoremap <silent> gr :<C-u>tabprevious<CR>
nnoremap <silent> <A-j> :<C-U>tabnext<CR>
nnoremap <silent> <A-k> :<C-U>tabprevious<CR>
nnoremap <silent> <C-Tab> :<C-U>tabnext<CR>
nnoremap <silent> <C-S-Tab> :<C-U>tabprevious<CR>
" Uses g:lasttab set on TabLeave in MyAutoCmd
let g:lasttab = 1
nmap <silent> \\ :execute 'tabn '.g:lasttab<CR>
" }}}

" Remove spaces at the end of lines {{{
nnoremap <silent> <Leader><CR> :<C-u>silent! keeppatterns %substitute/\s\+$//e<CR>
" }}}

" Latex Suite {{{
imap <C-n> <Plug>IMAP_JumpForward
nmap <C-n> <Plug>IMAP_JumpForward
let g:Tex_DefaultTargetFormat="pdf"
" }}}

" css completion {{{
augroup filetype_css
    autocmd!
    autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS noci
augroup END
" }}}

" Sideways {{{
nnoremap <M-h> :SidewaysLeft<CR>
nnoremap <M-l> :SidewaysRight<CR>
" }}}

" NERDTree {{{
let NERDTreeIgnore = ['\.pyc$', '\.o$', '\.so$', '\.a$', '\.swp', '\.swo', '\.swn', '\.swm', '[a-zA-Z]*egg[a-zA-Z]*', '[a-zA-Z]*cache[a-zA-Z]*']
let NERDTreeShowHidden=1
let g:NERDTreeWinPos="left"
let g:NERDTreeDirArrows=0
" }}}

" NERDTree-git {{{
let g:NERDTreeShowGitStatus = 1
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
imap  <plug>NERDCommenterInsert 
" }}}

" Start interactive EasyAlign in visual mode (e.g. vipga){{{
vmap <Enter> <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
" }}}

" Gundo {{{
set undodir=~/.vim/tmp/undo/
set history=700
set undolevels=700
set undofile
" }}}

" Tagbar {{{
nmap <F2> :TagbarToggle<CR>
" }}}

" Echhodoc {{{
set noshowmode
" set cmdheight=2
let g:echodoc_enable_at_startup = 1
" }}}

" Indent guides {{{
let g:indent_guides_enable_on_vim_startup = 0
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
" }}}

" Noecomplete {{{
let g:acp_enableAtStartup = 1
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_auto_select = 0
let g:neocomplete#enable_auto_close_preview = 1
let g:neocomplete#enable_camel_case = 1
inoremap <expr><C-n> neocomplete#start_manual_complete()
" inoremap <expr><C-Space> neocomplete#undo_completion()
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" }}}

" javacomplete2 {{{
augroup filetype_java
    autocmd!
    autocmd FileType java setlocal omnifunc=javacomplete#Complete
    " F9/F10 compile/run default file.
    autocmd Filetype java set makeprg=javac\ %
    autocmd FileType java map <F9> :AsyncRun javac **/*.java
    autocmd FileType java  map <F10> :Dispatch java $(echo % \| cut -d. -f 1)
augroup END
set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#
map <F9> :make<Return>:copen<Return>
map <F10> :cprevious<Return>
map <F11> :cnext<Return>
" }}}

" python mode plugin {{{
let g:pymode = 1
let g:pymode_python = 'python3'
let g:pymode_run = 0
let g:pymode_lint = 1 " left only for autolint
let g:pymode_lint_on_write = 0
let g:pymode_lint_checkers = []
let g:pymode_lint_cwindow = 0
let g:pymode_doc = 0
let g:pymode_rope = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_lookup_project = 0
let g:pymode_syntax = 0
" }}}

" vim-jedi settings {{{
let g:jedi#auto_initialization = 1
" let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 1
let g:jedi#show_call_signatures = 2
if has('python3')
let g:jedi#force_py_version = 3
endif
setlocal completeopt-=preview
setlocal completeopt+=noinsert
setlocal omnifunc=jedi#completions "pythoncomplete#Complete
" set completeopt=longest,menu,menuone,noinsert,noselect
" augroup END
" }}}

" vim-test {{{
nmap <silent> <leader>tt :TestNearest<CR>
nmap <silent> <leader>tT :TestFile<CR>
nmap <silent> <leader>ta :TestSuite<CR>
nmap <silent> <leader>tl :TestLast<CR>
nmap <silent> <leader>tg :TestVisit<CR>
" make test commands execute using dispatch.vim
let test#strategy = "dispatch"
let test#python#runner = 'pytest'
" Runners available are 'pytest', 'nose', 'nose2', 'djangotest', 'djangonose' and Python's built-in 'unittest'
let g:test#python#pytest#options = "-vs "
" }}}

" airline bar plugin, fix git symbol {{{
let g:airline_powerline_fonts = 1
let g:airline_symbols_ascii = 0
let g:cb_no_default_brackets = 1
" }}}

" Ultisnippets  {{{
" custom snips
let g:UltiSnipsExpandTrigger="<c-o>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
set rtp+=~/.dotfiles/
" let g:UltiSnipsSnippetsDir="~/.dotfiles/UltiSnips"
let g:UltiSnipsEditSplit="vertical"
" }}}

" Multi cursor plugin {{{
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
let g:multi_cursor_start_word_key='g<C-n>'
" }}}

" tmux seamless navigation with vim-tmux-navigator {{{
let g:tmux_navigator_no_mappings = 1
let g:tmux_save_on_switch=1
nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
nnoremap <silent> <C-o> :TmuxNavigatePrevious<cr>
" au FocusGained * :redraw!
" au FocusLost * :wa
" }}}

" syntastic settings {{{
let g:syntastic_mode_map = { 'mode': 'active' }
			" \ 'passive_filetypes': ["python"] }
" nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_mri_args = "--config=$HOME/.jshintrc"
let g:syntastic_python_checkers = [ 'pylint', 'flake8', 'pep8', 'pyflakes', 'python', 'mypy']
let g:syntastic_yaml_checkers = ['jsyaml']
let g:syntastic_html_tidy_exec = 'tidy5'
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" }}}

" save folds {{{
augroup remember_folds
    autocmd!
    autocmd BufWrite,VimLeave ?* silent! mkview
    autocmd BufWinEnter ?* silent! loadview
augroup END
" }}}

" fuzzy file finding with :find *[name] {{{
augroup cursorline_toggle
    autocmd WinLeave * set nocursorline
    autocmd VimEnter,WinEnter * set cursorline
augroup END
" set cursorline
set path+=**
set t_Co=256
set backspace=2
set mouse=a
set shortmess=at
set autoindent
set clipboard=unnamed
set autoread
set colorcolumn=80
set expandtab
set ignorecase
set smartcase
set incsearch
set nobackup
set noswapfile
set nowritebackup
set wildmenu
set wildignore+=*.a,*.o,*pyc
set wildignore+=*.bmp,*.gif,*.ico,*.png,*.jpg
set wildignore+=*.git,*.tmp
set number
set relativenumber
set shiftround
set shiftwidth=4
set softtabstop=4
set tabstop=4
set showmatch
set so=5
set sol
" }}}
