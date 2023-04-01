" Lots of things require this - and it's gotta be first.
set nocompatible

" ------------------------------------------------------------ "
" Use Pathogen as a vim plugin manager
" https://github.com/tpope/vim-pathogen#installation
" ------------------------------------------------------------ "
execute pathogen#infect()

" ------------------------------------------------------------ "
" File Type Detection / Indentation
" ------------------------------------------------------------ "
" Enable type file detection. Vim will be able to try to detect the type of file in use.
" Load an indent file for the detected file type.
" Enable plugins and load plugin for the detected file type.
filetype indent plugin on

" Disable auto-comment-continuation on new line when hitting enter or using 'o'/'O'
au FileType * set fo-=r fo-=o

" ------------------------------------------------------------ "
" Editing
" ------------------------------------------------------------ "
" Enable mouse scrolling
set mouse=n

" highlight the line the cursor is on
set cursorline

set number " line numbers, yes
"set nuw=6  " number width to 6 makes things look a little neater

" Incremental Search
set incsearch
set hlsearch

" Configure tab completion for commands
set wildmenu
set wildmode=list:longest,full

" Avoid <esc>O delays
" https://stackoverflow.com/questions/2158516/delay-before-o-opens-a-new-line
"set timeoutlen=100

" ------------------------------------------------------------ "
" Theme
" https://github.com/mhartington/oceanic-next
" ------------------------------------------------------------ "
syntax enable

" for vim 7
set t_Co=256

" for vim 8
if (has("termguicolors"))
	set termguicolors
endif

colorscheme OceanicNext

" make json quotes white (15)
hi jsonQuote ctermfg=15
" make json quotes blue (68)
hi jsonKeyword ctermfg=68

" ------------------------------------------------------------ "
" lightline
" https://github.com/itchyny/lightline.vim
" ------------------------------------------------------------ "
set laststatus=2
set noshowmode

" ------------------------------------------------------------ "
" NERDTree
" ------------------------------------------------------------ "
nnoremap <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeWinSize=50

" ------------------------------------------------------------ "
" FZF
" https://www.youtube.com/watch?v=UM4ks_jWwfU
" ------------------------------------------------------------ "
noremap <C-p> <Esc><Esc>:Files!<CR>
noremap <C-f> <Esc><Esc>:Rg!<CR>
inoremap <C-f> <Esc><Esc>:BLines!<CR>
" need to install things (https://github.com/junegunn/fzf.vim)
"noremap <C-g> <Esc><Esc>BCommits!<CR>

" add -uu and -g flags to ignore node_modules but show hidden files
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case -uu -g "!.git" -g "!node_modules" -- '
	\   .shellescape(<q-args>), 1, fzf#vim#with_preview(), <bang>0)

" ------------------------------------------------------------ "
" Load shared configuration
" ------------------------------------------------------------ "
source ~/.vim/.sharedvimrc

" ------------------------------------------------------------ "
" Other
" ------------------------------------------------------------ "
" Use new regular expression engine
"https://jameschambers.co.uk/vim-typescript-slow
set re=0

" ------------------------------------------------------------ "
" Template Section Header 
" ------------------------------------------------------------ "
