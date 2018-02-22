yaourt -Syu
yaourt -S fish

if [ ! -d ~/.config/fish ]; then
    mkdir -p ~/.config/fish
fi

rm ~/.config/fish/config.fish
ln -s ~/Dev/dotfiles/FISH/config.fish ~/.config/fish/config.fish

echo fish >> ~/.bashrc

yaourt -S mc
yaourt -S ranger
yaourt -S rxvt-unicode

rm ~/.Xdefaults
ln -s ~/Dev/dotfiles/URXVT/.Xdefaults ~/.Xdefaults
