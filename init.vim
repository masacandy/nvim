" https://qiita.com/nrk_baby/items/154e3fa15c48a39e3375

set number
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
set splitright
set clipboard=unnamed
set hls
set expandtab
set smartindent
filetype off
set t_Co=256
" エンコード, ファイルエンコード
set encoding=utf-8
set fileencoding=utf-8
" スクロールする時に下が見えるようにする
set scrolloff=5
" コマンドラインモードで<Tab>キーによるファイル名補完を有効にする
set wildmenu
" 入力中のコマンドを表示する
set showcmd
" .swapファイルを作らない
set noswapfile
" バックアップファイルを作らない
set nowritebackup
" バックアップをしない
set nobackup
" ビープ音を消す
set belloff=all
" OSのクリップボードを使う
set nocompatible
" 移動コマンドを使ったとき、行頭に移動しない
set nostartofline

" 対応括弧に<と>のペアを追加
" set matchpairs& matchpairs+=<:>

" 対応括弧をハイライト表示する
set showmatch
" 対応括弧の表示秒数を3秒にする
set matchtime=3
" ウィンドウの幅より長い行は折り返され、次の行に続けて表示される
set wrap
" 入力されているテキストの最大幅を無効にする
set textwidth=0
" 不可視文字を表示
set list
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%,eol:↲
" インデントをshiftwidthの倍数に丸める
set shiftround
" 補完の際の大文字小文字の区別しない
set infercase
" 行末1文字までカーソルを移動できるようにする
set virtualedit=onemore
" 変更中のファイルでも、保存しないで他のファイルを表示
set hidden
" 新しく開く代わりにすでに開いてあるバッファを開く
set switchbuf=useopen
" 小文字の検索でも大文字も見つかるようにする
set ignorecase
" ただし大文字も含めた検索の場合はその通りに検索する
set smartcase
" インクリメンタルサーチを行う
set incsearch
" 検索結果をハイライト表示
set hlsearch
" マウスモード有効
set mouse=a
" コマンドを画面最下部に表示する
set showcmd
" ◆や○文字が崩れる問題を解決"
set ambiwidth=double
" インサートモードでbackspaceを有効に
set backspace=indent,eol,start
" 入力モード中に素早くjjと入力した場合はESCとみなす
inoremap jj <Esc>

" シンタックスハイライトの最大行数
set synmaxcol=200

" .vueシンタックスハイライト
autocmd BufNewFile,BufRead *.vue set filetype=html
" 全角スペースのハイライト
function! ZenkakuSpace()
    highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
endfunction
if has('syntax')
    augroup ZenkakuSpace
        autocmd!
        autocmd ColorScheme * call ZenkakuSpace()
        autocmd VimEnter,WinEnter,BufRead * let w:m1=matchadd('ZenkakuSpace', '　')
    augroup END
    call ZenkakuSpace()
endif

" for lightline.vim
set laststatus=2
let g:lightline = { 'colorscheme': 'wombat', 'active': { 'left': [ ['mode', 'paste'], ['readonly', 'filename', 'modified', 'anzu'] ] }, 'component_function': { 'anzu': 'anzu#search_status' } }

" or accelerated-jk
nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)

nmap <Space>t :NERDTreeToggle<CR>

set completeopt+=noinsert

if &compatible
  set nocompatible
endif
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
  call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif
if dein#check_install()
  call dein#install()
endif
filetype plugin indent on
syntax on
