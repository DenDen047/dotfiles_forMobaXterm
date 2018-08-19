set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,cp932,sjis,euc-jp

set number
set title
set ambiwidth=double
set tabstop=4
set expandtab
set shiftwidth=4
set smartindent
set list
set listchars=tab:>-,trail:-,extends:>,precedes:<,nbsp:%
set nrformats-=octal
set hidden
set history=50
set virtualedit=block
set whichwrap=b,s,[,],<,>
set backspace=indent,eol,start
set wildmenu





" $B0J2<$N;29M(BURL -> http://qiita.com/himinato/items/caf5a0b19ce893a75363
" -------- neobundle settings -------
if has('vim_starting')
    set nocompatible
    " neobundle $B$r%$%s%9%H!<%k$7$F$$$J$$>l9g$O<+F0%$%s%9%H!<%k(B
    if !isdirectory(expand("~/dotfiles/.vim/bundle/neobundle.vim/"))
        echo "install neobundle..."
        " vim $B$+$i%3%^%s%I8F$S=P$7$F$$$k$@$1(B neobundle.vim $B$N%/%m!<%s(B
        " :call system("git clone git://github.com/Shougo/neobundle.vim ~/dotfiles/.vim/bundle/neobundle.vim")
        :call system("git clone https://github.com/Shougo/neobundle.vim ~/dotfiles/.vim/bundle/neobundle.vim")
    endif
    " runtimepath $B$NDI2C$OI,?\(B
    set runtimepath+=~/dotfiles/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/dotfiles/.vim/bundle'))
let g:neobundle_default_git_protocol='https'

" neobundle#begin - neobundle#end $B$N4V$KF3F~$9$k%W%i%0%$%s$r5-:\$7$^$9!#(B
NeoBundleFetch 'Shougo/neobundle.vim'
" $B"-$3$s$J46$8$,4pK\$N=q$-J}(B
" --- plugin ---
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'jiangmiao/auto-pairs'
" NeoBundle 'terryma/vim-multiple-cursors' <- $BF0:n$,$*$+$7$$(B
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Shougo/vimproc', {
            \ 'build' : {
            \     'windows' : 'make -f make_mingw32.mak',
            \     'cygwin' : 'make -f make_cygwin.mak',
            \     'mac' : 'make -f make_mac.mak',
            \     'unix' : 'make -f make_unix.mak',
            \    },
            \ }
NeoBundleLazy 'Shougo/neocomplete.vim', {
            \ 'depends' : 'Shougo/vimproc',
            \ 'autoload' : { 'insert' : 1,}
            \ }
" --- colorscheme ---
NeoBundle 'tomasr/molokai'

" vimrc $B$K5-=R$5$l$?%W%i%0%$%s$G%$%s%9%H!<%k$5$l$F$$$J$$$b$N$,$J$$$+%A%'%C%/$9$k(B
NeoBundleCheck
call neobundle#end()
filetype plugin indent on
" colorscheme$B$rJQ99$9$k(B
set t_Co=256
syntax on
colorscheme molokai




" http://blog.remora.cx/2010/12/vim-ref-with-unite.html
""""""""""""""""""""""""""""""
" Unit.vim$B$N@_Dj(B
""""""""""""""""""""""""""""""
let g:unite_enable_start_insert=1
nmap <silent> <C-u><C-b> :<C-u>Unite buffer<CR>
nmap <silent> <C-u><C-f> :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nmap <silent> <C-u><C-r> :<C-u>Unite -buffer-name=register register<CR>
nmap <silent> <C-u><C-m> :<C-u>Unite file_mru<CR>
nmap <silent> <C-u><C-u> :<C-u>Unite buffer file_mru<CR>
nmap <silent> <C-u><C-a> :<C-u>UniteWithBufferDir -buffer-name=files buffer file_mru bookmark file<CR>
au FileType unite nmap <silent> <buffer> <expr> <C-j> unite#do_action('split')
au FileType unite imap <silent> <buffer> <expr> <C-j> unite#do_action('split')
au FileType unite nmap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
au FileType unite imap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
au FileType unite nmap <silent> <buffer> <ESC><ESC> q
au FileType unite imap <silent> <buffer> <ESC><ESC> <ESC>q
""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""
" neocomplete.vim$B$N@_Dj(B
""""""""""""""""""""""""""""""
let g:neocomplete#enable_at_startup               = 1
let g:neocomplete#auto_completion_start_length    = 3
let g:neocomplete#enable_ignore_case              = 1
let g:neocomplete#enable_smart_case               = 1
let g:neocomplete#enable_camel_case               = 1
let g:neocomplete#use_vimproc                     = 1
let g:neocomplete#sources#buffer#cache_limit_size = 1000000
let g:neocomplete#sources#tags#cache_limit_size   = 30000000
let g:neocomplete#enable_fuzzy_completion         = 1
let g:neocomplete#lock_buffer_name_pattern        = '\*ku\*'
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
""""""""""""""""""""""""""""""
