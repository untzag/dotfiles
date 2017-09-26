# utilities
sudo pacman -S git --needed
sudo pacman -S xterm --needed
sudo pacman -S yaourt --needed
sudo pacman -S xclip --needed
sudo pacman -S vim --needed
sudo pacman -S imagemagick --needed
sudo pacman -S scrot --needed
yaourt -S insync --needed

# i3
yaourt -S i3-gaps --needed
sudo pacman -S i3status --needed
sudo pacman -S rofi --needed
yaourt -S i3lock-color-git --needed

# anaconda
yaourt -S anaconda --needed --tmp ~/Desktop

# applications
sudo pacman -S emacs --needed
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
yaourt -S slack-desktop --needed
