echo "Limpando tudo"
sudo rm -r ~/dotFiles
sudo rm -r ~/.vim ~/.vimrc
echo "clonando os repos"
sudo git clone https://github.com/franklinjavier/dotFiles.git ~/dotFiles
sudo git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
sudo git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim
echo "movendo os arquivos"
sudo mv ~/dotFiles/.vim ~
sudo mv ~/dotFiles/vimrc ~/.vimrc