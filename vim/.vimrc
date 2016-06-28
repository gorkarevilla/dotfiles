" Gorka Revilla's vimrc based on https://github.com/danirod/vimrc/ 

" AUTHOR: Gorka Revilla <gorkarevilla@gmail.com> 

" TABLE OF CONTENTS:
" 1. Generic settings
" 2. Vim-Plug plugins
" 3. File settings
" 4. Specific filetype settings
" 5. Colors and UI
" 6. Maps and functions


" ===================
" 1. GENERIC SETTINGS
" ===================
set nocompatible " disable vi compatibility mode
set history=1000 " increase history size
runtime! debian.vim " ensures debian options works properly


" =================
" 2. VIM-PLUG PLUGINS
" =================



" ================
" 3. FILE SETTINGS
" ================

" 70s are over and swap files are part of the past.
" If you need to backup something, use Git, for God's sake.
set noswapfile
set nobackup

" Modify indenting settings
set autoindent              " autoindent always ON.
set expandtab               " expand tabs
set shiftwidth=4            " spaces for autoindenting
set softtabstop=4           " remove a full pseudo-TAB when i press <BS>

" Modify some other settings about files
set encoding=utf-8          " always use unicode (god damnit, windows)
set backspace=indent,eol,start " backspace always works on insert mode


" =============================
" 4. SPECIFIC FILETYPE SETTINGS
" =============================



" ================
" 5. COLORS AND UI
" ================

" Are we supporting colors?
if &t_Co > 2 || has("gui_running")
   syntax on
   set colorcolumn=80
endif

" Are we supporting a full color pallete?
if &t_Co >= 256 || has("gui_running")
    try
        color Tomorrow-Night-Bright
    catch /^Vim\%((\a\+)\)\=:E185/
    endtry
endif

" Identify trailing spaces
if &t_Co > 2 || has("gui_running")
    " We have color. Colorize those bastards!
    highlight ExtraWhitespace ctermbg=red guibg=red
    match ExtraWhitespace /\s\+$/
else
    " Fallback to listchars method.
    set listchars=trail:~
    set list
endif

set fillchars+=vert:\   " Remove unpleasant pipes from vertical splits
                        " Sauce on this: http://stackoverflow.com/a/9001540

set showmode            " always show which more are we in
set laststatus=2        " always show statusbar
set wildmenu            " enable visual wildmenu

set nowrap              " don't wrap long lines
set number              " show line numbers
" set relativenumber      " show numbers as relative by default
" set cursorline          " highlight line where the cursor is
" set cursorcolumn        " highlight column where the cursor is
set showmatch           " higlight matching parentheses and brackets

" =====================
" 6. MAPS AND FUNCTIONS
" =====================
