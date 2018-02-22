yaourt -S i3-gaps
yaourt -S i3lock-fancy-git

if [ ! -d ~/.config/i3 ]; then
    mkdir -p ~/.config/i3
fi

rm ~/.config/i3/config
ln -s ~/Dev/dotfiles/I3/config ~/.config/i3/config

yaourt -S polybar

rm ~/.polybar
ln -s ~/Dev/dotfiles/POLYBAR/.polybar ~/.polybar

yaourt -S compton
yaourt -S redshift
yaourt -S nitrogen

yaourt -S networkmanager
yaourt -S network-manager-applet
