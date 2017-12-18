function printColor {
    YELLOW='\033[0;33m'
    NC='\033[0m' # No Color
    printf "${YELLOW}$*${NC}\n"
}

function printLine {
    printColor "%`tput cols`s"|tr ' ' '#'
}

function install {
  printLine
  printColor $1
  yaourt -S $1 --needed --noconfirm
  # clear temp
  /bin/rm -rf /tmp/* /tmp/.* &>/dev/null
}

# utilities
sudo pacman -S git --needed
sudo pacman -S xterm --needed
sudo pacman -S yaourt --needed
install xclip
install vim
install imagemagick
install scrot
install insync
install ranger
install tree
install aspell
install aspell-en

# i3
yaourt -S i3-gaps --needed
sudo pacman -S i3status --needed
sudo pacman -S rofi --needed
yaourt -S i3lock-color-git --needed

# anaconda
yaourt -S anaconda --needed --tmp ~/Desktop

# applications
install qutebrowser
install texlive-most
install biber
install emacs
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
install slack-desktop
