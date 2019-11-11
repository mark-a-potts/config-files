set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
"
set guioptions-=T 
set guioptions-=m 
set hidden
" switch between header and cpp
map <F4> :e %:p:s,.hpp$,.X123X,:s,.cpp$,.hpp,:s,.X123X$,.cpp,<CR>

set tags+=$HOME/hpmi-project/icepic/tags
set tags+=$HOME/hpmi-project/farfieldApprox/tags
set tags+=$HOME/hpmi-project/ngspice/tags
set tags+=$HOME/hpmi-project/xdm/tags
command! -bar GenTags cd ~/hpmi-project/icepic | call system( 'ctags -R ' ) | cd ~/hpmi-project/xdm/ | call system( 'ctags -R' ) | cd ~/hpmi-project/farfieldApprox | call system( 'ctags -R' ) | cd ~/hpmi-project/ngspice | call system( 'ctags -R' ) 
let g:ctags_statusline=0
let g:ctags_title=0

let Grep_Default_Filelist='*.cpp *.hpp'
Plugin 'vim-scripts/genutils'
Plugin 'vim-scripts/mru.vim'
Plugin 'vim-scripts/grep.vim'
Plugin 'vim-scripts/SelectBuf'
"Plugin 'Valloric/YouCompleteMe'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"command! -bar -complete=dir -nargs=? Build cd ~/stellar/build/farfieldApprox/src | make -j 8 | cd -
command! -bar -complete=dir -nargs=? Build cd ~/Stellar/build/cmake/onestep/Debug | make  | cd -
"command! -bar -complete=dir -nargs=? Build cd ~/Stellar/Controlled/buildArea/cmake/onestep/Release/StellarPy | make -j 8 | cd -
syntax on
:set paste
