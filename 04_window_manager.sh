echo "!!! Installing i3-gaps and i3-lock"

yaourt -S i3-gaps --noconfirm >> 04.log
yaourt -S i3lock-fancy-git --noconfirm >> 04.log

if [ ! -d ~/.config/i3 ]; then
    mkdir -p ~/.config/i3
fi

if [ -f ~/.config/i3/config ]; then
    rm ~/.config/i3/config
fi

ln -s ~/Dev/dotfiles/I3/config ~/.config/i3/config

echo "!!! Done, installing polybar"

sudo ln -s ~/Dev/dotfiles/POLYBAR/run_polybar.sh /usr/bin/run_polybar.sh

yaourt -S polybar --noconfirm >> 04.log

if [ -f ~/.polybar ]; then
    rm ~/.polybar
fi

ln -s ~/Dev/dotfiles/POLYBAR/.polybar ~/.polybar

echo "!!! Done, check ~/.polybar config (xrandr and binding with ~/.config/i3/config)"
echo "!!! Installing compton, redshift and nitrogen"

yaourt -S compton --noconfirm >> 04.log
yaourt -S redshift --noconfirm >> 04.log
yaourt -S nitrogen --noconfirm >> 04.log

echo "!!! Done, installing networkmanager with applet"

yaourt -S networkmanager --noconfirm >> 04.log
yaourt -S network-manager-applet --noconfirm >> 04.log

echo "!!! Done, check 04.log"
