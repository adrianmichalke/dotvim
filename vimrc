"USEFUL COMMANDS

"SET GUI
":set guioptions-=m
":set guioptions-=T 
"
"SET WORKINGDIREKTORY TO CURRENT
":cd %:p:h

" basics
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands


augroup vimrcEx
  autocmd!

  " When editing a file, always jump to the last known cursor position.
  " Don't do it for commit messages, when the position is invalid, or when
  " inside an event handler (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set noexpandtab
set linebreak

"Make all Pretty
set guifont=Monospace\ 8
colorscheme solarized
set guioptions-=m
set guioptions-=T 
set listchars=tab:▸\

" Make it obvious where 80 characters is
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn','\%81v', 100)

" Get rid of my habbits
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>
" inoremap <BS> <Nop>

" Use relative Numberlines:
set relativenumber
set numberwidth=2
let s:pattern = '^\(.* \)\([1-9][0-9]*\)$'
let s:minfontsize = 6
let s:maxfontsize = 16
