!/bin/bash

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

# i3
ln -sf ~/dotfiles/i3/config ~/.config/i3/config
ln -sf ~/dotfiles/i3/lock.sh ~/.config/i3/lock.sh
ln -sf ~/dotfiles/i3/toggle_mouse.sh ~/.config/i3/toggle_mouse.sh
mkdir ~/.config/i3status
ln -sf ~/dotfiles/i3/i3status+config ~/.config/i3status/config
