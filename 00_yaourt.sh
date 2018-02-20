pacman -S git

if [ ! -d "~/Dev" ]; then
    mkdir ~/Dev
fi

cd ~/Dev

git clone https://aur.archlinux.org/yaourt.git
cd yaourt

makepkg -si

echo "yaourt installed!"
