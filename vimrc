if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" enable syntax highlighting and context-aware indenting
syntax on

" syntax-aware auto indent for python
filetype plugin indent on
set smartindent
set tabstop=4
set shiftwidth=4
set maxmempattern=5000

" use spaces instead of tabs by default
set expandtab

" enable status bar
set ruler

set background=dark

" vim-plug packages
"
" Install by running :PlugInstall from inside vim or
" vim +PlugInstall from the command line. If editing this file
" you must source it first before installing plugins :so % | PlugInstall
"
" see https://github.com/junegunn/vim-plug for more info
call plug#begin()
Plug 'scrooloose/nerdtree'                 " file tree browser
Plug 'kien/ctrlp.vim'                      " fuzzy file finder
Plug 'lepture/vim-jinja'                   " jinja
Plug 'vim-syntastic/syntastic'             " Linter
Plug 'vim-airline/vim-airline'             " Improved Statusline
Plug 'dkprice/vim-easygrep'                " Easy Grep Searching /vv
Plug 'tpope/vim-unimpaired'                " Fast naviating quicklists and buffers
Plug 'ajh17/VimCompletesMe'                " Tab Autocomplete
Plug 'mhinz/vim-signify'                   " Display GIT status of line in gutter. Requires save
Plug 'majutsushi/tagbar'                   " Requires CTags  - Activate with F8
Plug 'tpope/vim-fugitive'                  " GIT Branch on Statusline
Plug 'tommcdo/vim-fubitive'                " Gbrowse support for bitbucket in fugitive
Plug 'vim-airline/vim-airline-themes'      " Airline Theme
Plug 'tpope/vim-surround'                  " Change Surround cs
Plug 'easymotion/vim-easymotion'           " Easymotion searching with /
Plug 'haya14busa/incsearch.vim'            " Incremental Searching
Plug 'haya14busa/incsearch-easymotion.vim' " Incremental Searching with Easymotion
Plug 'tpope/vim-commentary'                " Easy commenting with gcc
Plug 'google/yapf'                         " Python code formatter pip install yapf
Plug 'chriskempson/base16-vim'             " vim colorscheme
Plug 'junegunn/goyo.vim'                   " distraction free writing
Plug 'scrooloose/nerdtree'                 " File explorer
Plug 'nathanaelkane/vim-indent-guides'     " Visual Indention guides
Plug 'git-time-metric/gtm-vim-plugin'      " git time metrics
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'Rykka/riv.vim'                       " vim rst plugin
Plug 'Rykka/InstantRst'                    " live viewer for rst files
Plug 'sirtaj/vim-openscad'                 " openscad syntax highlighting
Plug 'stevearc/vim-arduino'                " arduino
Plug 'leafgarland/typescript-vim'          " typescript higlighting
Plug 'neowit/vim-force.com'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-dadbod'                     " database plugin
Plug 'kristijanhusak/vim-dadbod-ui'         " database ui
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
" Plug 'morhetz/gruvbox'                   " colors
call plug#end()

" set colors
let g:catppuccin_flavour = "mocha" " latte, frappe, macchiato, mocha

lua << EOF
require("catppuccin").setup()
EOF

colorscheme catppuccin

" let base16colorspace=256
" colorscheme base16-ocean

let g:nord_uniform_status_lines = 1

" start nerdtree
autocmd vimenter * NERDTree

" use jinja filetype for .html files by default
au BufNewFile,BufRead *.html set ft=jinja

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_aggregate_errors = 1
let g:syntastic_python_flake8_args="--ignore=W504"
let g:syntastic_python_pylint_post_args="--max-line-length=120"
let g:syntastic_go_checkers = ['go', 'golint', 'errcheck']

" vim-go config
let g:go_autodetect_gopath = 1

" go to definition
au FileType go nmap <F12> <Plug>(go-def)

" highlighting
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_auto_sameids = 1


let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
" let g:airline_theme='base16_oceanicnext'
let g:airline_theme='deus'

" autocmd FileType python map <buffer> <F3> :call Flake8()<CRG
nmap <F7> :SyntasticCheck()<CR>
nmap <silent> <C-e> :SyntasticReset<CR>
nmap <F8> :TagbarToggle<CR>
nmap <F9> :NERDTreeToggle<CR>

" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)
" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" You can use other keymappings like <C-l> instead of <CR> if you want to
" use these mappings as default search and somtimes want to move cursor with
" EasyMotion.
function! s:incsearch_config(...) abort
   return incsearch#util#deepextend(deepcopy({
   \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
   \   'keymap': {
   \     "\<CR>": '<Over>(easymotion)'
   \   },
   \   'is_expr': 0
   \ }), get(a:, 1, {}))
endfunction

" clipboard
set clipboard+=unnamedplus

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

nmap s <Plug>(easymotion-overwin-f2)
" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

noremap <silent><expr> /  incsearch#go(<SID>incsearch_config())
noremap <silent><expr> ?  incsearch#go(<SID>incsearch_config({'command': '?'}))
noremap <silent><expr> g/ incsearch#go(<SID>incsearch_config({'is_stay': 1}))

autocmd FileType python nnoremap <LocalLeader>= :0,$!yapf<CR>

" F5 to remove trailing whitespace
:nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>
:noremap <silent> <F4> :set ts=2 sts=2 noet <Bar> :retab! <Bar> :set ts=4 sts=4 et <Bar> :retab <CR>
" :imap ii <Esc>

" " Disable Arrow keys in Escape mode
" map <up> <nop>
" map <down> <nop>
" map <left> <nop>
" map <right> <nop>
" 
" " Disable Arrow keys in Insert mode
" imap <up> <nop>
" imap <down> <nop>
" imap <left> <nop>
" imap <right> <nop>

" Enable indention Guide
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

:imap jk <Esc>

:tnoremap <Esc> <C-\><C-n>

" set filetypes as typescriptreact
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact
