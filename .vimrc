set encoding=utf-8

"---------------------------------------------------------------------------
" Bram氏の提供する設定例をインクルード (別ファイル:vimrc_example.vim)。これ
" 以前にg:no_vimrc_exampleに非0な値を設定しておけばインクルードはしない。
if 1 && (!exists('g:no_vimrc_example') || g:no_vimrc_example == 0)
    if &guioptions !~# "M"
    " vimrc_example.vimを読み込む時はguioptionsにMフラグをつけて、syntax on
    " やfiletype plugin onが引き起こすmenu.vimの読み込みを避ける。こうしない
    " とencに対応するメニューファイルが読み込まれてしまい、これの後で読み込
    " まれる.vimrcでencが設定された場合にその設定が反映されずメニューが文字
    " 化けてしまう。
        set guioptions+=M
        source $VIMRUNTIME/vimrc_example.vim
        set guioptions-=M
    else
        source $VIMRUNTIME/vimrc_example.vim
    endif
endif

"---------------------------------------------------------------------------
"NeoBundle
"if has('vim_starting')
"    set nocompatible               " Be iMproved
"
"    " Required:
"    set runtimepath+=~/.vim/bundle/neobundle.vim/
"endif
"
"" Required:
"call neobundle#begin(expand('~/.vim/bundle/'))
"
"" Let NeoBundle manage NeoBundle
"" Required:
"NeoBundleFetch 'Shougo/neobundle.vim'
"
"" My Bundles here:
"" Refer to |:NeoBundle-examples|.
"" Note: You don't set neobundle setting in .gvimrc!
"
"" プラグイン
"NeoBundle 'plasticboy/vim-markdown'
"NeoBundle 'kannokanno/previm'
"NeoBundle 'tyru/open-browser.vim'
"NeoBundle 'kannokanno/previm'
"" NeoBundle 'syui/cscroll.vim'
"
"call neobundle#end()
"
"" Required:
"filetype plugin indent on
"
"" If there are uninstalled bundles found on startup,
"" this will conveniently prompt you to install them.
"NeoBundleCheck
"
"" markdown設定
"au BufRead,BufNewFile *.md set filetype=markdown

"---------------------------------------------------------------------------

"--------- バックアップ
"if has("vms")
"  set nobackup		" do not keep a backup file, use versions instead
"else
"  set backup		" keep a backup file
"endif

" backupにすると[ファイル名.拡張子~]が残る
set nobackup
"--------- エディタ設定
set number
syntax on
colorscheme desert
" タイトルを表示
set title
" 常にコマンドをステータス行に表示
set laststatus=2
" コマンドをステータス行に表示
set cmdheight=1
" 括弧入力時に対応する括弧を表示 (noshowmatch:表示しない)
set showmatch
" コマンドライン補完するときに強化されたものを使う(参照 :help wildmenu)
set wildmenu


" タブ設定
set tabstop=4
set shiftwidth=4
" タブをスペースに展開しない (expandtab:展開する)
set expandtab
" 自動的にインデントする (noautoindent:インデントしない)
set autoindent
" バックスペースでインデントや改行を削除できるようにする
"set backspace=2
set backspace=indent,eol,start 
" 行の末尾に合わせて次の行のインデントを増減
set smartindent

" 検索時に大文字小文字を無視 (noignorecase:無視しない)
set ignorecase
set smartcase
set hlsearch
