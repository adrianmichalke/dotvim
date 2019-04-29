"USEFUL COMMANDS

" Set Gui
":set guioptions-=m
":set guioptions-=T 

" Set workingdir to current
":cd %:p:h

" Start Tlist
" :TlistToogle

" Start Nerdtree
" <ctrl>+<n> 

" Show all Buffers
" :buffers :ls

" Go to Buffer 1
" :buffer 1 :b 1

" Close Current Buffer 1 
" :1bd

" Switch between windows
" <ctrl> + <w> -> arrow

"Start Clang Format 
" <ctrl>+<k>

" Set Marker
" <m> + <...>

" Goto Marker
" <'> + <...>

" Retrace Movement in File Backwards
" <ctrl>+O

" Retrace Movement in File Forwards
" <ctrl>+I

" Line completion
" insertion mode + <ctrl>+<x> + <ctrl>+<l>

" Word completion
" insertion mode + <ctrl>+<x> + <ctrl>+<p>

" If installed using git
set rtp+=~/.fzf

" Default encoding.
set encoding=UTF-8
scriptencoding UTF-8

" Turns on filetype detection.
filetype plugin indent on

" Enable syntax highlighting.
if !exists('g:syntax_on') | syntax enable | endif

" Enable True Color support for Neovim.
if has('nvim') | let $NVIM_TUI_ENABLE_TRUE_COLOR = 1 | endif

" Color options and scheme.
set background=dark " Choose dark colors if available.
set termguicolors " Enable True Color support.
colorscheme jellybeans " Color scheme.

" -------------------------------------------------------"
"  Intent information
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces

set relativenumber
set shiftround
set noexpandtab
set linebreak

" Turn on line numbers
set nu " turn of with set nonumber

" Plugin for clang format... see above.
syntax on
filetype plugin indent on
call plug#begin()
Plug 'rhysd/vim-clang-format'
call plug#end()

" Auto expanding
"inoremap (; (<CR>);<C-c>O
"inoremap (, (<CR>),<C-c>O
"inoremap {; {<CR>};<C-c>O
"inoremap {, {<CR>},<C-c>O
"inoremap [; [<CR>];<C-c>O
"inoremap [, [<CR>],<C-c>O
"
" -------------------------------------------------------"
" Addons
" -------------------------------------------------------"


" Enable Pathogen
execute pathogen#infect()

" Close NerdTree when its the only open 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif 

" Open Nerdtree with ctrl-n
map <C-n> :NERDTreeToggle<CR>

" Mao Clang-format with ctrl-k
 map <C-K> :pyf /usr/local/Cellar/clang-format/2018-01-11/share/clang/clang-format.py<cr>

" Fugitive
" Git client for vim https://github.com/scrooloose/vim-fugitive

" -------------------------------------------------------"


" basics
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands

" Jump to the last known cursor position
augroup vimrcEx
  autocmd!
  " Don't do it for commit messages, when the position is invalid, or when
  " inside an event handler (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

"Make all Pretty
set guifont=Monospace\ 8
set guioptions-=m
set guioptions-=T 
set listchars=tab:▸\

" Make it obvious where 80 characters is
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn','\%81v', 100)

" Get rid of my habbits
" nnoremap <Left> :echoe "Use h"<CR>
" nnoremap <Right> :echoe "Use l"<CR>
" nnoremap <Up> :echoe "Use k"<CR>
" nnoremap <Down> :echoe "Use j"<CR>
" inoremap <BS> <Nop>

" Use relative Numberlines:
set relativenumber
set numberwidth=2
let s:pattern = '^\(.* \)\([1-9][0-9]*\)$'
let s:minfontsize = 6
let s:maxfontsize = 16

" Enable Corsshair
set cursorcolumn 
set cursorline
"highlight CursorColumn cterm=NONE ctermbg=black ctermfg=NONE guibg=black guifg=NON
"highlight CursorLine   cterm=NONE ctermbg=black ctermfg=NONE guibg=black guifg=NON

" Make Backspace work
set backspace=2 " make backspace work like most other programs
