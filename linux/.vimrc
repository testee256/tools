source $VIMRUNTIME/vimrc_example.vim

set backupdir=~/temp,/temp,$TEMP
set undodir=~/temp,/temp,$TEMP
set directory=~/temp,/temp,$TEMP
colorscheme torte

" Enable line number
set number

" Setup tabstop and shiftwidth
set shiftwidth=4
set tabstop=4
set expandtab

" Disable vi compatible mode
set nocompatible
filetype off " required

" Enable true-color
set termguicolors

" Turn off scrolloff
let &scrolloff = 0

if has("gui_running")
    " Enable tear off menu
    set guioptions+=t
    " set lines=55
    " set columns=153
    " winpos 27 27
    set guifont=Lucida_Console:h9
    highlight LineNr guifg=#808080
else
    highlight LineNr ctermfg=grey
    " cannot change font
endif

" Setup windows-like CTRL-C and CTRL-V
if has("clipboard")
    " CTRL-X and SHIFT-Del are Cut
    vnoremap <C-X> "+x
    vnoremap <S-Del> "+x

    " CTRL-C and CTRL-Insert are Copy
    vnoremap <C-C> "+y
    vnoremap <C-Insert> "+y

    " CTRL-V and SHIFT-Insert are Paste
    map <C-V>		"+gP
    map <S-Insert>		"+gP

    cmap <C-V>		<C-R>+
    cmap <S-Insert>		<C-R>+
endif
if 1
    exe 'inoremap <script> <C-V> <C-G>u' . paste#paste_cmd['i']
    exe 'vnoremap <script> <C-V> ' . paste#paste_cmd['v']
endif

" Mini Buffer Explorer <minibufexpl.vim>
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 
let g:miniBufExplUseSingleClick = 1
let g:did_minibufexplorer_syntax_inits = 1  " prevent override of color settings
let g:winManagerWindowLayout = "FileExplorer,TagsExplorer"

" Set MBE colors (show all available groups with :hi)
hi MBEVisibleActiveNormal guibg=#0000FF guifg=#FFFF00
hi link MBEVisibleActive Title
hi link MBEVisibleChanged DiffText
hi link MBEChanged DiffChange
hi link MBEVisibleActiveChanged Error
hi MBEVisibleActiveNormal guifg=bg guibg=LightGreen

"Tag list
nnoremap <silent> <F8> :Tlist<CR>
nnoremap <silent> <F9> :TlistSync<CR>
set updatetime=1000

" :map <MiddleMouse> <Nop>
" :imap <MiddleMouse> <Nop>
" :map <2-MiddleMouse> <Nop>
" :imap <2-MiddleMouse> <Nop>
" :map <3-MiddleMouse> <Nop>
" :imap <3-MiddleMouse> <Nop>
" :map <4-MiddleMouse> <Nop>
" :imap <4-MiddleMouse> <Nop>

set mouse=a

" Set wildmenu for auto completion
set wildmenu

" Set cursor line
set cursorline
hi CursorLine guibg=#444444 gui=none

" Set makeprg
set makeprg=make2

" Set encoding
set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1,gbk,gb18030,gk2312
if has("win32")
 set fileencoding=chinese
else
 set fileencoding=utf-8
endif

" === Vundle setting start ===
" set the runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/Vundle.vim/
call vundle#begin('$HOME/.vim/bundle/')
Plugin 'VundleVim/Vundle.vim'
" Enable C-IDE
Plugin 'tristar2001/vim-cide'
" Enable airline
Plugin 'vim-airline/vim-airline'
" Enable tabbar
" Plugin 'majutsushi/tagbar'
" Enable vim markdown
Plugin 'plasticboy/vim-markdown'
" Enable mini buffer explorer
Plugin 'fholgado/minibufexpl.vim'
call vundle#end()            " required
filetype plugin indent on    " required
" === Vundle setting end ===

" C-IDE configuration
if has("win32")
    let g:cide_shell_find     = 'C:/Program Files/Git/usr/bin/find.exe'
    let g:cide_shell_date     = 'date /T'
else
    " let g:cide_shell_find     = 'C:/Program Files/Git/usr/bin/find.exe'
    " let g:cide_shell_date     = 'date /T'
endif
" let g:cide_shell_cscope   = 'cscope'
" let g:cide_shell_ag       = 'ag'
" let g:cide_grep_filespecs = ['-G "Makefile|\.(c|cpp|h|hpp|cc|mk)$"', "--cpp", "-cc", "--matlab", "--vim", "-a", '-G "\.(Po)$" --hidden', '-G "\.(d)$" --hidden']

packadd termdebug
let g:termdebugger='gdb2.bat'

