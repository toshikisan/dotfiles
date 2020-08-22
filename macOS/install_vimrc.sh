mkdir ~/.vim/
mkdir ~/.vim/autoload/
cd ~/.vim/autoload/
curl https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim > plug.vim
vim -c PlugInstall -c q -c q
