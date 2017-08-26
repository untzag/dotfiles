#!/bin/bash

# create dotfiles_old in homedir
olddir=~/dotfiles_old
mkdir -p $olddir

# change to the dotfiles directory
dir=~/dotfiles/dotfiles
cd $dir

# move current files and link contained files
files=$(ls $dir)
for name in $files; do
    mv ~/.$name ~/dotfiles_old/
    ln -s $dir/$name ~/.$name
done
