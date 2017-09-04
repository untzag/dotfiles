#!/bin/bash

# create dotfiles_old in homedir
olddir=~/dotfiles_old
mkdir -p $olddir

# change to the dotfiles directory
dir=~/dotfiles/dotfiles
cd $dir

# move current files and link contained files
files=$(ls $dir)
for f in $files; do
    name=${f//+//}
    echo $name
    mv ~/.$name ~/dotfiles_old/
    ln -s $dir/$f ~/.$name
done

# password-store
ln -sf ~/dotfiles/password-store ~/.password-store

# i3
ln -sf ~/dotfiles/i3 ~/.config/i3
