"nvim settings
set smarttab "タブで空白を挿入できるようになる 
set expandtab "タブ入力を複数の空白入力に置き換える
set tabstop=4 "画面上でタブ文字が占める幅
set shiftwidth=4 "自動インデントでずれる幅
set autoindent "改行時に前の行のインデントを継続する
set smartindent "改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set clipboard=unnamed,unnamedplus "クリップボードを有効化

" カッコやクォートの自動補完
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
vnoremap { "zdi^V{<C-R>z}<ESC>
vnoremap [ "zdi^V[<C-R>z]<ESC>
vnoremap ( "zdi^V(<C-R>z)<ESC>
vnoremap " "zdi^V"<C-R>z^V"<ESC>
vnoremap ' "zdi'<C-R>z'<ESC>

" dein settings {{{
if &compatible
  set nocompatible
endif

let s:dein_dir = expand('~/.cache/nvim/dein')
let s:dein_repo_dir = s:dein_dir . 'repos/github.com/Shougo/dein.vim'

if !isdirectory(s:dein_repo_dir)
  execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
endif

execute 'set runtimepath^=' . s:dein_repo_dir

call dein#begin(s:dein_dir)

"if dein#load_state(s:dein_dir)
"    call dein#begin(s:dein_dir)
"
"   let s:toml = '~/.config/nvim/dein/plugins.toml'
"    let s:lazy_toml = '~/.config/nvim/dein/plugins_lazy.toml'
"    call dein#load_toml(s:toml, {'lazy': 0})
"    call dein#load_toml(s:lazy_toml, {'lazy': 1})

"    call dein#end()
"    call dein#save_state()
"endif

if dein#check_install(['vimproc'])
  call dein#install(['vimproc'])
endif

if dein#check_install()
    call dein#install()
endif
" }}}'
