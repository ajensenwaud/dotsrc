#!/bin/sh
ln -sf ~/dotsrc/dot.zshrc ~/.zshrc 
ln -sf ~/dotsrc/dot.vimrc ~/.vimrc
ln -sf ~/dotsrc/dotvim ~/.vim
ln -sf ~/dotsrc/dot.emacs ~/.emacs

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


