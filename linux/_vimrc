set nocompatible
source $VIMRUNTIME/vimrc_example.vim
" source $VIMRUNTIME/mswin.vim
" behave mswin

set backupdir=~/temp,/temp,$TEMP
set undodir=~/temp,/temp,$TEMP
set directory=~/temp,/temp,$TEMP

":colo darkblue
:colo torte
":colo koehler

" " Mini Buffer Explorer <minibufexpl.vim>
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 
let g:miniBufExplUseSingleClick = 1
let g:did_minibufexplorer_syntax_inits = 1  " prevent override of color settings
let g:winManagerWindowLayout = "FileExplorer,TagsExplorer"
" Set MBE colors (show all available groups with :hi)
" hi link MBEVisibleActiveNormal SpecialKey
" hi link MBEVisibleActive Title
" hi link MBEVisibleChanged StatusLine
" hi link MBEVisibleActiveChanged Error


hi MBEVisibleActiveNormal guibg=#0000FF guifg=#FFFF00
hi link MBEVisibleActive Title
hi link MBEVisibleChanged DiffText
hi link MBEChanged DiffChange
hi link MBEVisibleActiveChanged Error

" :nnoremap <silent> <F7> :WMToggle<CR>
" 
" "Tag list
" :nnoremap <silent> <F8> :Tlist<CR>
" :nnoremap <silent> <F9> :TlistSync<CR>
" set updatetime=1000
" 
" :map <MiddleMouse> <Nop>
" :imap <MiddleMouse> <Nop>
" :map <2-MiddleMouse> <Nop>
" :imap <2-MiddleMouse> <Nop>
" :map <3-MiddleMouse> <Nop>
" :imap <3-MiddleMouse> <Nop>
" :map <4-MiddleMouse> <Nop>
" :imap <4-MiddleMouse> <Nop>

set sw=4
set ts=4
set expandtab
set nu

if has("gui_running")
    set lines=55
    set columns=153
    winpos 27 27
    set guifont=Lucida_Console:h12
    set guifont=Fixedsys:h8
else
    highlight LineNr ctermfg=green
endif

set mouse=a

"hi HL_HiCurLine ctermfg=blue ctermbg=cyan guifg=blue guibg=cyan
"let HL_HiCurLine= "HL_HiCurLine"

set wildmenu
" hi CursorLine guibg=#444444 gui=none
" set cursorline
" set makeprg=ba2.bat

" set guifont=Fixedsys:h8:cANSI
" set encoding=utf-8

set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1,gbk,gb18030,gk2312
if has("win32")
 set fileencoding=chinese
else
 set fileencoding=utf-8
endif




set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/Vundle.vim/
call vundle#begin('$HOME/.vim/bundle/')
Plugin 'VundleVim/Vundle.vim'
Plugin 'tristar2001/vim-cide'
" Plugin 'itchyny/lightline.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'majutsushi/tagbar'
" Plugin 'ap/vim-buftabline'
Plugin 'fholgado/minibufexpl.vim'
call vundle#end()            " required
filetype plugin indent on    " required

" C-IDE configuration
" let g:cide_shell_cscope   = 'cscope'
" let g:cide_shell_ag       = 'ag'
let g:cide_shell_find     = 'C:/Program Files/Git/usr/bin/find.exe'
let g:cide_shell_date     = 'date /T'
let g:cide_grep_filespecs = ['-G "Makefile|\.(c|cpp|h|hpp|cc|mk)$"', "--cpp", "-cc", "--matlab", "--vim", "-a", '-G "\.(Po)$" --hidden', '-G "\.(d)$" --hidden']


" let g:airline#extensions#tabline#enabled = 1

" set showtabline=2
" let g:lightline = { 'colorscheme': 'PaperColor' }
" let g:lightline.tabline = {
"             \ 'left': [ [ 'tabs' ] ],
"             \ 'right': [ [ 'bufnum'] ] }
" let g:lightline.separator = { 'left': '', 'right': '' }
" let g:lightline.subseparator = {'left': '', 'right': '' }


" let g:buftabline_show=2
