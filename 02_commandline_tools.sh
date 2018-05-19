echo "!!! Installing fish"

yaourt -S fish --noconfirm >> 02.log

if [ ! -d ~/.config/fish ]; then
    mkdir -p ~/.config/fish
fi

if [ -f ~/.config/fish/config.fish ]; then
    rm ~/.config/fish/config.fish
fi

ln -s ~/Dev/dotfiles/FISH/config.fish ~/.config/fish/config.fish

echo fish >> ~/.bashrc

echo "!!! Done, installing mc, ranger and urxvt"

yaourt -S mc --noconfirm >> 02.log
yaourt -S ranger --noconfirm >> 02.log
yaourt -S rxvt-unicode --noconfirm >> 02.log

if [ -f ~/.Xdefaults ]; then
    rm ~/.Xdefaults
fi

ln -s ~/Dev/dotfiles/URXVT/.Xdefaults ~/.Xdefaults

echo "!!! Done, check 02.log"
