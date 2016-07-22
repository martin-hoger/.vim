filetype off
execute pathogen#infect()
filetype plugin indent on
 
let mapleader=","
let g:mapleader = ","

colorscheme default
syntax on
syntax sync minlines=200

"#################################################################################
"#################################################################################

set nocompatible
set modeline
set modelines=5
set hidden " Allows vim not tu save buffers, etc...
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors
set fileencodings=utf-8,cp1250
set lazyredraw
"set synmaxcol=128
set ttyscroll=3
set ttyfast                   " we have a fast terminal
" set clipboard=unnamed 
set clipboard=unnamedplus 
" Didn't work for me, didn't copy between vims and crtl+c a p
" if has('unnamedplus')
      " set clipboard=unnamed,unnamedplus
" endif
"set iskeyword=@,48-57,192-255
set iskeyword=@,48-57,_,192-255
set tabpagemax=150
" set grepprg=ack
set grepprg=ag\ --nogroup\ --nocolor

"Turn on the Wigtd menu (not give everything in autocomplete)
set wildmenu                    " show list instead of just completing
set wildmode=longest:full,list:full
set wildignore=*.swp,*.bak,*.pyc,*.jpg,*.png,*.xcf,*.ttf,*.svg,*.gif
set wildignorecase

"Vim settings
set autoread " Set to auto read when a file is changed from the outside
set ruler
set backspace=start,indent,eol
set whichwrap=b,s,<,>,[,]   " backspace and cursor keys wrap to
set mouse=v
"Numbers on the left side, color: gray
set number
set relativenumber

set hlsearch
set nowrap
set ignorecase " Ignore case when searching
set smartcase " When searching try to be smart about cases
set incsearch " Makes search act like search in modern browsers
set magic " For regular expressions turn magic on
set gdefault                    " the /g flag on :s substitutions by default
set showcmd " This shows what you are typing as a command.  I love this!
set showmatch " Show matching brackets when text indicator is over them
set mat=2 " how many tenths of a second to blink when matching brackets
set nofoldenable              " start files with folds
let g:DisableAutoPHPFolding = 1
set virtualedit=onemore         " allow for cursor beyond last character
set spell                       " spell checking on
set spellfile=~/.vim/spell/dict.add
set spelllang=en_us,cs
set mousemodel=popup
set scrolloff=5               " keep at least 5 lines above/below
set sidescrolloff=5           " keep at least 5 lines left/right
set cmdheight=1               " command line two lines high
set undolevels=1000           " 1000 undos
set updatecount=100           " switch every 100 chars
set updatetime=200           
set history=10000
set noswapfile
set noerrorbells              " No error bells please
set shell=zsh
"set shellcmdflag=-ci
"set cursorline                
set sessionoptions=blank,buffers,curdir,folds,tabpages,winsize
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
set fillchars=diff:⣿,vert:│
"set splitbelow
"set splitright

" Autocomplete
" http://vimdoc.sourceforge.net/htmldoc/options.html#'complete'
" set complete=.,w,b,u,U,t,i,d  " do lots of scanning on tab completion
set complete=.,w,b,t
set completeopt=longest,menuone

"Time out on key codes but not mappings.
"Basically this makes terminal Vim work sanely.
set notimeout
set ttimeout
set ttimeoutlen=10

"Nastavení tabů
set expandtab
set shiftwidth=4
set softtabstop=4
set smartindent
set smarttab
set shiftround

"Backup
set backup
set dir=~/.vim_backup,~/tmp,/var/tmp,/tmp
set backupdir=~/.vim_backup
silent! set undodir=~/.vim_backup
silent! set undofile
set viminfo=%100,'100,/100,h,\"500,:100,n~/.viminfo
"Status line gnarliness
set laststatus=2

"Activity log directory
let g:activity_log_location = '~/.vim_backup/activity-log/%Y-%m.log'

"#################################################################################
"#################################################################################
"http://vimdoc.sourceforge.net/htmldoc/intro.html#keycodes

"Uz zadne sipky  :)
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

"I want to swap some keys to deal with my CZ layout
"noremap z y
"noremap y z

"Mappuju některé české zmanky, tak abych si ušetřil práci.
noremap ě @
noremap ěě @@
noremap š #
noremap č $
noremap ř %
noremap ž ^
noremap ý &
noremap á *
noremap í {
noremap é }
noremap ú (
"Visal mode
vnoremap ě @
vnoremap ěě @@
vnoremap š #
vnoremap č $
vnoremap ř %
vnoremap ž ^
vnoremap ý &
vnoremap á *
vnoremap í {
vnoremap é }
vnoremap ú (

"Quits insert mode
imap jj <Esc>
imap jk <Esc>

"Opens command window
"nnoremap : q:i
"nnoremap / q/i
"nnoremap ? q?i

"Regexpr as PHP
"nnoremap / /\v
"cnoremap %s/ %s/\v

"Nahoru a dolu jde po radcich na obrazovce (funguje i pri text wrap)
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

"Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv

"Remap the 0 (zero) key to put you to the first character of a line, ignoring preceding whitespace.
nmap 0 ^

"Don't move on *
nnoremap * *<c-o>

"Emacs bindings in command line mode
cnoremap <c-a> <home>
cnoremap <c-e> <end>

"Arrows substitution
cnoremap <c-h> <left>
cnoremap <c-l> <right>
cnoremap <c-j> <down>
cnoremap <c-k> <up>

"Insert fullpath of the current buffer in command line mode
cnoremap <expr> %% getcmdtype() == ':' ? expand('%%') : '%%'
"Insert the directory of the current buffer in command line mode
"cnoremap <expr> %%d getcmdtype() == ':' ? expand('%:h').'/' : '%%'

"Same when jumping around
map <C-j> g;
map <C-k> g,

"Reindent block
"Adds mark and return back on the mark
nnoremap <Space>= mr=iB`r

"Folding
nnoremap <Tab><Tab> zazz
nnoremap <Tab>j zMzjzvzz
nnoremap <Tab>k zMzkzv[zzz

"Hardtime - do not user hjkl 
"By default it is 0, changed in vimrc.local
let g:hardtime_default_on = 0
let g:hardtime_timeout = 1000
let g:hardtime_maxcount = 2
let g:hardtime_ignore_quickfix = 1

"Fold text function
function! MyFoldText()
    "for now, just don't try if version isn't 7 or higher
    if v:version < 701
        return foldtext()
    endif
    "clear fold from fillchars to set it up the way we want later
    let &l:fillchars = substitute(&l:fillchars,',\?fold:.','','gi')
    let l:numwidth = (v:version < 701 ? 8 : &numberwidth)
    if &fdm=='diff'
        let l:linetext=''
        let l:foldtext='---------- '.(v:foldend-v:foldstart+1).' lines the same ----------'
        let l:align = winwidth(0)-&foldcolumn-(&nu ? Max(strlen(line('$'))+1, l:numwidth) : 0)
        let l:align = (l:align / 2) + (strlen(l:foldtext)/2)
        "note trailing space on next line
        setlocal fillchars+=fold:\ 
    elseif !exists('b:foldpat') || b:foldpat==0
        let l:foldtext = ' '.(v:foldend-v:foldstart).' lines folded'.v:folddashes.'|'
        let l:endofline = (&textwidth>0 ? &textwidth : 80)
        let l:linetext = strpart(getline(v:foldstart),0,l:endofline-strlen(l:foldtext))
        let l:align = l:endofline-strlen(l:linetext)
        setlocal fillchars+=fold:-
    elseif b:foldpat==1
        let l:align = winwidth(0)-&foldcolumn-(&nu ? Max(strlen(line('$'))+1, l:numwidth) : 0)
        let l:foldtext = ' '.v:folddashes
        let l:linetext = substitute(getline(v:foldstart),'\s\+$','','')
        let l:linetext .= ' ---'.(v:foldend-v:foldstart-1).' lines--- '
        let l:linetext .= substitute(getline(v:foldend),'^\s\+','','')
        let l:linetext = strpart(l:linetext,0,l:align-strlen(l:foldtext))
        let l:align -= strlen(l:linetext)
        setlocal fillchars+=fold:-
    endif
    return printf('%s%*s', l:linetext, l:align, l:foldtext)
endfunction

"function! MyFoldText()
    "let line = getline(v:foldstart)

    "let nucolwidth = &fdc + &number * &numberwidth
    "let windowwidth = winwidth(0) - nucolwidth - 3
    "let foldedlinecount = v:foldend - v:foldstart

    "" expand tabs into spaces
    "let onetab = strpart('          ', 0, &tabstop)
    "let line = substitute(line, '\t', onetab, 'g')

    "let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
    "let fillcharcount = windowwidth - len(line) - len(foldedlinecount)
    "return line . '…' . repeat(" ",fillcharcount) . foldedlinecount . '…' . ' '
"endfunction

set foldtext=MyFoldText()

"Gundo
nnoremap <Space>u :GundoToggle<CR>

"Save
map <C-S> :w<CR>
imap <C-S> <Esc>:w<CR>
vmap <C-S> <Esc>:w<CR>
map <Space>s :w<CR>
"Sudo to write
cnoremap w!! w !sudo tee % >/dev/null

"Open a file in new tab
nnoremap gf <C-W>gf
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
" Substitute
nmap gs :s///<left>
nmap gS :%s///<left>
vmap gs :s///<left>

"Quit
"map <Space>q :CtrlSpace<CR>c<CR>
map <Space>q :call g:SmartClose()<CR>
cmap <Space>q <Esc>:q<CR>
"Close windows
function! g:SmartClose()
        "echo 3
    "echo &filetype
    "echo &buftype
        "echo 2
    "Improved version: if there is no file in the tab, close it. If it is
    "quickfix, etc close the window as well (:q)
    "If I am in the middle of the css block, go the front
    if &filetype == "" || &buftype != ""
        normal :q
        return
    "If there is only last tab.
    elseif tabpagenr('$') == 1
        normal :q
        return
    endif
    "Otherwise we close only file in CtrlSpace.
    normal :CtrlSpacec
endfunc

function! CountListedBuffers()
    let num_bufs = 0
    let idx = 1
    while idx <= bufnr("$")
        if buflisted(idx)
            let num_bufs += 1
        endif
        let idx += 1
    endwhile
    return num_bufs
endfunction

"Autocomplete
"imap <C-Space> <Tab>

"While search with vimgrep go next a prev item
nnoremap <Tab>n :cn<CR>zRzz
nnoremap <Tab>p :cN<CR>zRzz
nnoremap <Tab>P :cfirst<CR>zRzz
nnoremap <Tab>N :clast<CR>zRzz
"Map cursor keys
nmap <up> :cN<CR>zRzz
nmap <down> :cn<CR>zRzz
nmap <S-up> :cfirst<CR>zRzz
nmap <S-down> :clast<CR>zRzz
"Ctrl+down runs last macro saves and next
nmap <C-down> @@:w<CR>:cn<CR>zRzz
"Undo last change
nmap <C-up> :cN<CR>zRzzu:w<CR>

"Close tab
nnoremap <Tab>q <Esc>:tabclose<CR>:tabprev<CR>

"Windows
"map <C-j> <C-W>j<C-W>_
"map <C-k> <C-W>k<C-W>_
"map <C-h> <C-W>h<C-W>_
"map <C-l> <C-W>l<C-W>_
nnoremap <C-W>v <C-W>v<C-W><C-W>
nnoremap <C-W>s <C-W>s<C-W><C-W>

"Fix linewise visual selection of various text objects
nnoremap VV V
nnoremap Vit vitVkoj
nnoremap Vat vatV
nnoremap Vab vabV
nnoremap VaB vaBV
nmap Vj V<Space>j
nmap Vk V<Space>k
nmap <c-v>j <c-v><Space>j
nmap <c-v>k <c-v><Space>k

"Select (charwise) the contents of the current line, excluding indentation.
nnoremap vv ^vg_

"Visual search
function! s:VSetSearch()
  let temp = @@
  norm! gvy
  let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
  let @@ = temp
endfunction
vnoremap * :<C-u>call <SID>VSetSearch()<CR>//<CR><c-o>
vnoremap # :<C-u>call <SID>VSetSearch()<CR>??<CR><c-o>

"Search for first variable above cursor and copy it to current location
function! PhpVarSearch()
    norm mp
    exe "?\\$[^ )]\\+"
    norm "lyy
    let @l = substitute(@l, '^[^\$]*\(\$[^ )=]\+\).*', '\1', '')
    norm f$yW`p"lPl
endfunction
imap §v <C-o>:call PhpVarSearch()<CR>

"Ighlighting gets annoying, set a key to switch it off temporarily
nmap <silent> <leader>n :silent nohlsearch<CR>

"Redraw the screen
nnoremap <leader>r :syntax sync fromstart<cr>:redraw!<cr>

"Ctrlspace plugin
let g:ctrlspace_set_default_mapping = 0
let g:ctrlspace_project_root_markers = [] 
"Open ctrlspace with Enter, in quickfix window do Enter.
nnoremap <expr> <CR> (&buftype is# "" ? ":CtrlSpace<CR>" : "<CR>")
"Toggles between last two opened buffers in the tab.
map <Space><Tab> :CtrlSpace<CR>p<CR>

"Tabs
"Moving between tabs
nnoremap <Space>l :tabnext<CR>
nnoremap <Space>h :tabprev<CR>
nnoremap <Space>tj :tabfirst<CR>
nnoremap <Space>tk :tablast<CR>
nnoremap <Space>to :tabonly<cr>
nnoremap <Space>tc :tabclose<cr>
nnoremap <Space>tn :tabnew<CR>
"Duplicate tab
nnoremap <Space>tt :tab split<CR>
"nnoremap tn :tabnew \| FufFile **/<CR>
nnoremap <Space>th :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <Space>tl :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>

"Map tab to number
nnoremap <Space>+ 1gt
nnoremap <Space>ě 2gt
nnoremap <Space>š 3gt
nnoremap <Space>č 4gt
nnoremap <Space>ř 5gt
nnoremap <Space>ž 6gt
nnoremap <Space>ý 7gt
nnoremap <Space>á 8gt
nnoremap <Space>í 9gt
nnoremap <Space>é 10gt

"Indent
vnoremap < <gv
vnoremap > >gv
noremap <c-l>  ma>>`a4l
noremap <c-h>  mb<<`b4h
vmap <c-l>  >
vmap <c-h>  <
inoremap <c-l> <c-d>
inoremap <c-h> <c-t>

" Camelcase motion
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e

" "Delete to blakhole
nmap <Space>d "_d
nmap <Space>D "_D
nmap <Space>x "_x
nmap <Space>X "_X

"Do not yank when useing c
nnoremap c "_c

" "It is not needed since we use yankring.
" "If there are olny white chars on the line, delete it in to the blackhole
nnoremap <expr> dd ( !empty(matchstr(getline('.'), '\S')) ? "dd" : '"_dd' )
" "More intuaitive yank
map Y y$
    
"Quickly edit the vimrc file
nmap <Space>vv :tabnew<CR>:lcd ~/.vim<CR>:e ~/.vim/vimrc<CR>
"My cheatsheet
nmap <Space>vc :tabe ~/vim.txt<CR>
"snippets dir
nmap <Space>vn :tabnew<CR>:CtrlP ~/.vim/snippets/<CR>
"Hart to remember dir
nmap <Space>vr :tabnew<CR>:CtrlP ~/Dropbox/!hard-to-remember/<CR>

"Sessions
nmap <Space>vs :CtrlSpaceSaveWorkspace<CR>
"nmap <Space>va :let @/ = substitute(@/, "\\\\V", "", "")<CR>:AckFromSearch<CR>
"Ack (ag)
nmap <Space>va :tabnew<cr>:AckFromSearch<CR>
let g:ackprg = 'ag --nogroup --nocolor --column'

"PHP Doc
let g:pdv_cfg_Author = "Martin Höger <martin.hoger@gmail.com>"
nnoremap <Space>id :call PhpDoc()<CR>?\*\*<CR>jllC
"Insert filename
nnoremap <Space>if i<C-R>=expand("%:t:r")<CR><ESC>
"Disible enhanced jump, mapping had a conflict.
let g:phpcomplete_enhance_jump_to_definition = 0

"Go to mark
nnoremap <Space>m `

"Selecting your pasted text
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'
"Indent pasted text
nnoremap <Leader>p p`[v`]=
nnoremap <Leader>P P`[v`]=

" CtrlP
nnoremap <Space>ff :CtrlP<CR>
nnoremap <Space>fc :CtrlP <C-R>=expand("%:p:h") . "/" <CR><CR>
nnoremap <Space>fb :CtrlPBuffer<CR>
nnoremap <Space>fm :CtrlPMRU<CR>
nnoremap <Space>fa :CtrlPMixed<CR>
" CtrlP ignore
let g:ctrlp_custom_ignore = {
	\ 'dir':  '\v[\/]\.git)$',
	\ 'file': '\v\.(png|jpg|gif)$',
	\ }
" PyMatcher for CtrlP
if !has('python')
    echo 'In order to use pymatcher plugin, you need +python compiled vim'
else
    let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
endif
" Set delay to prevent extra search
" MH do i need it?
" let g:ctrlp_lazy_update = 350
" Do not clear filenames cache, to improve CtrlP startup
" You can manualy clear it by <F5>
let g:ctrlp_clear_cache_on_exit = 0
" MRU files are stored in ~/.cache/ctrlp/mru/cache.txt
let g:ctrlp_mruf_max = 3000
" Set no file limit, we are building a big project
let g:ctrlp_max_files = 0
" Take pwd from vim
let g:ctrlp_working_path_mode = ''
" If ag is available use it as filename list generator instead of 'find'
if executable("ag")
    set grepprg=ag\ --nogroup\ --nocolor
    let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --ignore ''.git'' --ignore ''.DS_Store'' --ignore ''node_modules'' --hidden -g ""'
endif

"Comments
nnoremap <Space>c :TComment<cr>
vnoremap <Space>c :TComment<cr>
let g:tcommentMaps = 0

"Easy motion
nmap s <Plug>(easymotion-s2)
"space+ge bylo vynecháno, protože space+g už používám
nnoremap <silent> <Space>w :call EasyMotion#WB(0, 0)<CR>
nnoremap <silent> <Space>b :call EasyMotion#WB(0, 1)<CR>
nnoremap <silent> <Space>e :call EasyMotion#E(0, 0)<CR>
"nnoremap <Space>ge :call EasyMotion#E(0, 1)<CR>
nnoremap <silent> <Space>W :call EasyMotion#WBW(0, 0)<CR>
nnoremap <silent> <Space>B :call EasyMotion#WBW(0, 1)<CR>
nnoremap <silent> <Space>E :call EasyMotion#EW(0, 0)<CR>
"nnoremap <silent> <Space>gE :call EasyMotion#EW(0, 1)<CR>
nmap <Space>j <Plug>(easymotion-j)
nmap <Space>k <Plug>(easymotion-k)
"EasyMotion visual mode
vnoremap <silent> <Space>w :<C-U>call EasyMotion#WB(1, 0)<CR>
vnoremap <silent> <Space>b :<C-U>call EasyMotion#WB(1, 1)<CR>
vnoremap <silent> <Space>e :<C-U>call EasyMotion#E(1, 0)<CR>
"vnoremap <silent> <Space>ge :<C-U>call EasyMotion#E(1, 1)<CR>
vnoremap <silent> <Space>W :<C-U>call EasyMotion#WBW(1, 0)<CR>
vnoremap <silent> <Space>B :<C-U>call EasyMotion#WBW(1, 1)<CR>
vnoremap <silent> <Space>E :<C-U>call EasyMotion#EW(1, 0)<CR>
"vnoremap <silent> <Space>gE :<C-U>all EasyMotion#EW(1, 1)<CR>
vmap <Space>j <Plug>(easymotion-j)
vmap <Space>k <Plug>(easymotion-k)
" let g:EasyMotion_keys = 'abcdefghijklmnopqrstuvwxyz'
let g:EasyMotion_keys = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
" keep cursor colum when JK motion
let g:EasyMotion_startofline = 0

"Vytoří novou řádku a vrátí se do normálního modu
nmap <Space>o o<Esc>k
nmap <Space>O O<Esc>j

"Open NERDTree
nmap <Space>n :NERDTreeFind<CR>
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$']
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=0
let NERDTreeKeepTreeInNewTab=1
let NERDTreeWinSize=80

"Git status - add, commit, etc..
map <F1><F1> :Gstatus<CR>15<C-W>+<C-N>
map <F1>s :Gstatus<CR>15<C-W>+<C-N>
"Adds and commits only current file - good for small fixes.
map <F1><CR> :!git add %%; git commit<CR>
map <F1>a :!git add %%<CR>
map <F1>c :Git commit<CR>
map <F1>C :Git commit -a<CR>
map <F1>p :Git push<CR>
map <F1>l :Git pull<CR>
map <F1>m :MerginalToggle<CR>
" map <F1>b :Git branch
" map <F1>h :Git checkout 

"shortcut to toggle spelling
"setup a custom dict for spelling
"zg = add word to dict
"zw = mark word as not spelled correctly (remove)
nmap <leader>s :setlocal spell!<CR>

"Execute last command
map <F2><F2> :<C-P><CR>
map <F2><CR> :!

"Zozrazení obsahu registrů
map <F3>w :set wrap!<CR>
map <F3>r :set relativenumber!<CR>
map <F3>n :set number!<CR>:set relativenumber!<CR>
map <F3>g :e!<CR>G

"Exit vim
"map <Space><F4> :call g:SessionExecute("SaveSession")<CR>:qa<CR>
map <Space><F4> :qa<CR>
"Paste toggle
map <F4> :set paste!<CR>
imap <F4> <Esc>:set paste!<CR>gi

"Deploy
map <F5><F5> :call g:WDeploy(expand('%:p'))<CR>
map <F5>p :call g:WDeploy(expand('%:p'))<CR>
"Run the current file
map <F5>s :!%:p<CR>
"Run current file in the background
map <F5>b :Shell! %:p<CR>
"Execute current line in bash
map <F5>l :exec '!'.getline('.')<CR>
"Execute the whole contant of the script
" map <F5>a :exec '!'.getline('.')<CR>

"Reloads file
map <C-F5> :e!<CR>

"Debugging
let g:vdebug_options = {
        \    "port"               : 49000,
        \    "server"             : '192.168.1.2',
        \    "timeout"            : 20,
        \    "on_close"           : 'detach',
        \    "break_on_open"      : 0,
        \    "ide_key"            : 'vim',
        \    "path_maps"          : {},
        \    "debug_window_level" : 0,
        \    "debug_file_level"   : 0,
        \    "debug_file"         : "",
        \    "watch_window_style" : 'expanded',
        \    "marker_default"     : '⬦',
        \    "marker_closed_tree" : '▸',
        \    "marker_open_tree"   : '▾',
        \    "continuous_mode"    : 1
        \}
" We need to map local directories to the remote ones.
let g:vdebug_options["path_maps"] = {
            \    "/var/www/client": "/home/www/fetview"
            \}
let g:vdebug_keymap = {
        \    "run"               : "<F6><F6>",
        \    "set_breakpoint"    : "<F6>p",
        \    "run_to_cursor"     : "<F6>c",
        \    "step_over"         : "<F6>j",
        \    "step_into"         : "<F6>l",
        \    "step_out"          : "<F6>h",
        \    "close"             : "<F6><cr>",
        \    "detach"            : "<F6>d",
        \    "get_context"       : "<F6>c",
        \    "eval_under_cursor" : "<F6>u",
        \}
let g:vdebug_options['watch_window_style'] = 'compact'
"let g:vdebug_features['max_depth'] = 2048
nmap <F6>b :BreakpointRemove *<CR>:Breakpoint<CR>
nmap <F6>x :BreakpointRemove *<CR>
"Insert debug_break() to the file
"nmap <F6><Space> Oxdebug_break();<Esc>:w<CR>

"Opens project
map <F9><F9> :ProjOpen<CR>
map <F9>m :ProjMenu<CR>

"EvalSelection
vmap <C-r>= ,eer
let g:evalSelectionRubyDir="~/.vim/bundle/eval-selection/ruby/"

" EasyAlign
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)
" vmap ,a <Plug>(LiveEasyAlign)
vmap ,a <Plug>(EasyAlign)
" If a delimiter is in a highlight group whose name matches
" any of the followings, it will be ignored.
" let g:easy_align_ignore_groups = ['Comment', 'String']
let g:easy_align_ignore_groups = ['Comment']
" My delimiters
let g:easy_align_delimiters = {
\  ' ': { 'pattern': ' ',  'left_margin': 0, 'right_margin': 0, 'stick_to_left': 0 },
\  '=': { 'pattern': '===\|<=>\|\(&&\|||\|<<\|>>\)=\|=\~[#?]\?\|=>\|[:+/*!%^=><&|.-]\?=[#?]\?',
\                          'left_margin': 1, 'right_margin': 1, 'stick_to_left': 0 },
\  ':': { 'pattern': ':',  'left_margin': 1, 'right_margin': 1, 'stick_to_left': 0 },
\  ',': { 'pattern': ',',  'left_margin': 0, 'right_margin': 1, 'stick_to_left': 1 },
\  '|': { 'pattern': '|',  'left_margin': 1, 'right_margin': 1, 'stick_to_left': 0 },
\  '.': { 'pattern': '\.', 'left_margin': 0, 'right_margin': 0, 'stick_to_left': 0 },
\  '-': { 'pattern': '-',  'left_margin': 0, 'right_margin': 0, 'stick_to_left': 0 },
\  '>': { 'pattern': '=>', 'left_margin': 1, 'right_margin': 1, 'stick_to_left': 0 },
\  '{': { 'pattern': '{',  'left_margin': 1, 'right_margin': 1, 'stick_to_left': 0 },
\  'g': { 'pattern': '=>', 'left_margin': 1, 'right_margin': 1, 'stick_to_left': 0 },
\  'a': { 'pattern': '[:={]', 'left_margin': 1, 'right_margin': 1, 'stick_to_left': 0 },
\ }

silent nmap <Leader>aa mpVka<CR>a`p
" silent nmap <Leader>aa mpvip<CR>a`p

"https://gist.github.com/tpope/287147
"MH: Interactively in insert mode, good example:
"
"inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a
"inoremap <Bar>   <Bar><Esc>:call g:BarAlign()<CR>
"function! g:BarAlign()
  "let p = '^\s*|\s.*\s|\s*$'
  "echo 0
  "if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
      "echo 1
    "let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    "let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    "Tabularize/|/l1
    "normal! 0
    "call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  "endif
"endfunction

"Neosnippet
"Plugin key-mappings.
"imap <C-k>     <Plug>(neosnippet_expand_or_jump)
"smap <C-k>     <Plug>(neosnippet_expand_or_jump)
"SuperTab like snippets behavior.
"SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
" imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
" \ "\<Plug>(neosnippet_expand_or_jump)"
" \: "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

"Error fix
"https://github.com/spf13/spf13-vim/issues/539
" let g:neosnippet#disable_runtime_snippets = 1

"Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/snippets'

" Disable default snippets which are not installed by default
" let g:neosnippet#disable_runtime_snippets = 1
let g:neosnippet#disable_runtime_snippets = { "_": 1, }

"Ctrl-K Konec - skočí na konec řádku
imap <C-k> <C-g>g


"Neo complcache

"Disable AutoComplPop.
let g:acp_enableAtStartup = 0
"Use neocomplete.
let g:neocomplete#enable_at_startup = 1
"Use smartcase.
let g:neocomplete#enable_smart_case = 1
"Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
"buffer file name pattern that locks neocomplcache. e.g. ku.vim or fuzzyfinder 
let g:neocomplete#lock_buffer_name_pattern = '\*fuzzyfinder\*'

"Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
    \ }

"Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

"Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

"Recommended key-mappings.
"<CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
  "For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
"<CR>: close popup and save indent.
inoremap <expr><CR>  pumvisible() ? "\<C-n>" : "\<CR>"
"<C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
"Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

"For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
"Or set this.
"let g:neocomplete#enable_cursor_hold_i = 1
"Or set this.
"let g:neocomplete#enable_insert_char_pre = 1

"AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

"Shell like behavior(not recommended).
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
" inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

"Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
      let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'

"VMATH count sum of numbers
vmap <expr>  ++  VMATH_YankAndAnalyse()
nmap         ++  ggVG++

"Syntastic
let g:syntastic_check_on_open = 1
let g:syntastic_enable_signs = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
"No checker for HTML
let g:syntastic_html_checkers=[]

"There was a conflict with my mapping for Neocomplcache autocomplete.
let g:AutoPairsMapCR = 0

"Go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
" let g:go_fmt_command = "goimports"
let g:syntastic_go_checkers = ['go', 'golint', 'govet']
let g:syntastic_aggregate_errors = 1
" let g:syntastic_go_checkers = []


"Show syntax highlighting groups for word under cursor
nmap <Space>vh :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

"Deletes hidden buffers
function! DeleteHiddenBuffers()
    let tpbl=[]
    call map(range(1, tabpagenr('$')), 'extend(tpbl, tabpagebuflist(v:val))')
    for buf in filter(range(1, bufnr('$')), 'bufexists(v:val) && index(tpbl, v:val)==-1')
        silent execute 'bwipeout' buf
    endfor
endfunction
command! DeleteHiddenBuffers :call DeleteHiddenBuffers()

"Open new tabs/windows form multiple files
"Example:
":Et *.html
command! -complete=file -nargs=+ Etabs call s:ETW('tabnew', <f-args>)
command! -complete=file -nargs=+ Ewindows call s:ETW('new', <f-args>)
command! -complete=file -nargs=+ Evwindows call s:ETW('vnew', <f-args>)
function! s:ETW(what, ...)
  for f1 in a:000
    let files = glob(f1)
    if files == ''
      execute a:what . ' ' . escape(f1, '\ "')
    else
      for f2 in split(files, "\n")
        execute a:what . ' ' . escape(f2, '\ "')
      endfor
    endif
  endfor
endfunction

"Vim airline
let g:airline_theme="powerlineish"
let g:airline_exclude_preview = 1
let g:airline#extensions#tabline#enabled = 0

"Function Input can be called in macros.
"   ^R=Input()
function! Input()
    call inputsave()
    let text = input('> ')
    call inputrestore()
    return text
endfunction
" Can be easily called by ctrl+R ctrl+R
inoremap  =Input()


  
"#################################################################################
"#################################################################################

"Autocomands need to by loaded only once.
augroup vimrc_all
    au!

    "Some extension are not so common
    au BufNewFile,BufRead *.phtml set filetype=phtml.html.php
    au BufNewFile,BufRead *.tpl.php set filetype=phtml.html.php
    au BufNewFile,BufRead *.module set filetype=php
    au BufNewFile,BufRead *.inc set filetype=php
    au BufNewFile,BufRead *.js set filetype=javascript.javascript-jquery
    " Ember
    au BufNewFile,BufRead */app/*.js set shiftwidth=2
        \| set softtabstop=2
    "Jquery syntax highlitings
    au BufNewFile,BufRead jquery.*.js set syntax=jquery
    "Automaticaly reload css if file changed
    au BufNewFile,BufRead *.css silent WatchForChanges 
    "Go
    au BufRead,BufNewFile *.go set filetype=go noet ts=4 sw=4 sts=4
        \| map <buffer> <F5>s :w<CR>:GoRun %%<CR>
        \| map <buffer> <F5>t :w<CR>:GoTest<CR>
    " Nginx config
    au BufNewFile,BufRead /etc/nginx/* set ft=nginx

    "Text files
    "Adding list bullets automatically:
    "http://stackoverflow.com/questions/9065967/markdown-lists-in-vim-automatically-new-bullet-on-cr
    au BufNewFile,BufRead *.txt set ft=markdown
        \| setlocal wrap
        \| setlocal linebreak
        \| setlocal com=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,b:-
        \| setlocal formatoptions=tcroqln

    "Autoload .vimrc
    au BufWritePost .vimrc source %
    
    "Autoload new snippets when snippets file is saved.
    au BufWritePost *.snippets :NeoSnippetSource %

    "Better autocomplete
    "Enable omni completion. Not required if they are already set elsewhere in .vimrc
    autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
    autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
                \| setlocal foldmethod=expr 
                \| setlocal foldexpr=(getline(v:lnum)!~'^/\\*\\*')?1:'>1' 
                \| setlocal foldtext=MyFoldText()
    autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
    autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
    autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

    "Correct comments for php.
    "PHP didn't want to extend comments on new lines.
    " au FileType php setlocal comments=s1:/*,mb:*,ex:*/,://,:#
    " au FileType php setlocal formatoptions+=cro

    "With SQL file we can execute the commands.
    autocmd FileType sql 
                \  nmap <buffer> <Tab><CR> :setlocal nowrapscan<CR>mr?;<CR>j^VN<Tab><CR>`r:silent nohlsearch<CR>
                \| vmap <buffer> <Tab><CR> :DBExecRangeSQL<CR>:resize 35<CR>

    "Folding for markdown
    function! FoldMarkdownLevel()
        if getline(v:lnum) =~ '^## '
            return ">1"
        endif
        return "=" 
    endfunction
    au BufEnter *.txt setlocal foldexpr=FoldMarkdownLevel()  
    au BufEnter *.txt setlocal foldmethod=expr

    "Hightlite active window
    " au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    " au WinLeave * setlocal nocursorline
            
    "Save on losing focus
    " au FocusLost * :wa

    "Opens vim on the last location where the file was closed
    au BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \     execute 'normal! g`"zvzz' |
            \ endif

    "Command window
    au CmdwinEnter * setlocal nonumber
    "au CmdwinEnter * setlocal nonumber | map <buffer> <F5> <CR>q:

    " Reload page when editing phtml or module file
    au BufWritePost *.phtml,*.module :BLReloadPage
    " au BufWritePost *.css :BLReloadCSS	
    
    "Opens/closes css block.
    function! <SID>CssBlockToggle()
        "If I am in the middle of the css block, go the front
        if getline('.')!~'{' 
            exe "normal ?{\<CR>"
        endif
        "If there are all the styles in one row
        if getline('.')=~'}' 
            exe "normal ^f{a \<CR>\<ESC>viB"
            exe "s/;/;\r/"
            exe "normal ^f{viB"
            exe "normal oj"
            exe "normal ="
        "If styles are in many rows:
        else
            exe "normal ^f{viB\<ESC>"
            "exe "'<,'>s/\\\%V\\n/ /"
            exe "'<,'>s/\\n/ /"
            exe "normal ^f{viB\<ESC>"
            exe "'<,'>s/\\\%V \\+/ /"
        endif
        exe "nohlsearch"
    endfunc
    autocmd FileType css nmap <buffer> <Tab><CR> :call <SID>CssBlockToggle()<CR>

    "Quickfix window to open after any grep invocation
    autocmd QuickFixCmdPost *grep* cwindow

augroup END



"#################################################################################
"#################################################################################

"Colors

" Color codes
" http://guns.github.io/xterm-color-table.vim/images/xterm-color-table-with-visible-rgb.png

hi Pmenu ctermfg=black ctermbg=white
hi PmenuSel ctermfg=black ctermbg=red
hi Search ctermfg=black ctermbg=11
hi MatchParen cterm=bold ctermfg=cyan ctermbg=black
hi CursorLine cterm=none ctermbg=235
hi Visual cterm=none ctermfg=black ctermbg=208
hi LineNr cterm=none ctermfg=236 ctermbg=none
hi Folded cterm=none ctermfg=white ctermbg=232
hi phpTodo cterm=bold ctermfg=black ctermbg=red
"Spelling
hi clear SpellBad
hi SpellBad ctermfg=black ctermbg=none ctermfg=162
"Marks on the left side
hi SignColumn ctermfg=red ctermbg=none cterm=bold 
" Git diff
hi DiffAdd      cterm=bold ctermbg=14 guibg=LightBlue
hi DiffChange   cterm=bold ctermbg=14 guibg=LightMagenta
hi DiffDelete   cterm=bold ctermfg=12 ctermbg=159 gui=bold guifg=Blue guibg=LightCyan
hi DiffText     cterm=reverse cterm=bold ctermbg=9 gui=bold guibg=Red

"#################################################################################
"#################################################################################

"Local config
if filereadable(glob("~/.vimrc.local"))
    source ~/.vimrc.local
endif
