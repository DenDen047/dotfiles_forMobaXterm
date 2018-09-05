" 最初に読み込む
source ~/dotfiles_forMobaXterm/.vim/.vimrc
" conf.d内にあるファイルを全部読み込む
set runtimepath+=~/dotfiles_forMobaXterm/.vim/
runtime! conf.d/*.vim
