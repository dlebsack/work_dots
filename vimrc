if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" enable syntax highlighting and context-aware indenting
syntax on

" syntax-aware auto indent
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

if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif


" vim-plug packages
"
" Install by running :PlugInstall from inside vim or
" vim +PlugInstall from the command line. If editing this file
" you must source it first before installing plugins :so % | PlugInstall
"
" see https://github.com/junegunn/vim-plug for more info
call plug#begin()
Plug 'scrooloose/nerdtree'                      " file tree browser
Plug 'vim-airline/vim-airline'                  " Improved Statusline
Plug 'dkprice/vim-easygrep'                     " Easy Grep Searching /vv
Plug 'airblade/vim-gitgutter'                   " Display git status in gutter
Plug 'majutsushi/tagbar'                        " Requires CTags  - Activate with F8
Plug 'tpope/vim-fugitive'                       " GIT Branch on Statusline
Plug 'vim-airline/vim-airline-themes'           " Airline Theme
Plug 'tpope/vim-surround'                       " Change Surround cs
Plug 'easymotion/vim-easymotion'                " Easymotion searching with /
Plug 'haya14busa/incsearch.vim'                 " Incremental Searching
Plug 'haya14busa/incsearch-easymotion.vim'      " Incremental Searching with Easymotion
Plug 'tpope/vim-commentary'                     " Easy commenting with gcc
Plug 'google/yapf'                              " Python code formatter pip install yapf
Plug 'nathanaelkane/vim-indent-guides'          " Visual Indention guides
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'Rykka/riv.vim'                            " vim rst plugin
Plug 'Rykka/InstantRst'                         " live viewer for rst files
Plug 'sirtaj/vim-openscad'                      " openscad syntax highlighting
Plug 'stevearc/vim-arduino'                     " arduino
Plug 'leafgarland/typescript-vim'               " typescript higlighting
Plug 'neowit/vim-force.com'                     " salesforce apex plugin
" Plug 'plasticboy/vim-markdown'                  " markdown plugin
Plug 'neoclide/coc.nvim', {'branch': 'release'} " auto completion plugin
Plug 'tpope/vim-dadbod'                         " database plugin
Plug 'kristijanhusak/vim-dadbod-ui'             " database ui
Plug 'catppuccin/nvim', {'as': 'catppuccin'}    " colorscheme
Plug 'dense-analysis/ale'                       " async lint engine for proto linter
Plug 'bufbuild/vim-buf'                         " buf proto linter
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' } " telescope
" Plug 'tommcdo/vim-fubitive'                     " Gbrowse support for bitbucket in fugitive [BROKEN]
" Plug 'kien/ctrlp.vim'                         " fuzzy file finder
" Plug 'lepture/vim-jinja'                      " jinja syntax
" Plug 'vim-syntastic/syntastic'                " Linter
" Plug 'tpope/vim-unimpaired'                   " Fast naviating quicklists and buffers
" Plug 'ajh17/VimCompletesMe'                   " Tab Autocomplete
" Plug 'chriskempson/base16-vim'                " vim colorscheme
Plug 'junegunn/goyo.vim'                      " distraction free writing
" Plug 'git-time-metric/gtm-vim-plugin'         " git time metrics
" Plug 'godlygeek/tabular'                      " align things in tables
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
call plug#end()

" set colors
let g:catppuccin_flavour = "mocha" " latte, frappe, macchiato, mocha

lua require("catppuccin").setup()

colorscheme catppuccin

" let base16colorspace=256
" colorscheme base16-ocean

let g:nord_uniform_status_lines = 1

" start nerdtree
" autocmd vimenter * NERDTree

" use jinja filetype for .html files by default
au BufNewFile,BufRead *.html set ft=jinja

set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 0
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 1
" let g:syntastic_aggregate_errors = 1
" let g:syntastic_python_flake8_args="--ignore=W504"
" let g:syntastic_python_pylint_post_args="--max-line-length=120"
" let g:syntastic_go_checkers = ['go', 'golint', 'errcheck']

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

" set filetypes for apex
autocmd BufNewFile,BufRead *.cls set filetype=apexcode

" git gutter color config
highlight GitGutterAdd    guifg=#008000 ctermfg=2
highlight GitGutterChange guifg=#808000 ctermfg=3
highlight GitGutterDelete guifg=#800000 ctermfg=1

" git gutter update guter on save
autocmd BufWritePost * GitGutter

" hybrid line numbers
set nu rnu
"
" -------------------------------------------------------------------------------------------------
" coc.nvim default settings
" -------------------------------------------------------------------------------------------------

" if hidden is not set, TextEdit might fail.
set hidden
" Better display for messages
set cmdheight=2
" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300
" don't give |ins-completion-menu| messages.
set shortmess+=c
" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif


" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use U to show documentation in preview window
nnoremap <silent> U :call <SID>show_documentation()<CR>

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" disable vim-go :GoDef short cut (gd)
" this is handled by LanguageClient [LC]
let g:go_def_mapping_enabled = 0

" proto linting with buf
let g:ale_linters = {
\   'proto': ['buf-lint',],
\}
let g:ale_lint_on_text_changed = 'never'
let g:ale_linters_explicit = 1

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
