cd ~/Dev

git clone https://aur.archlinux.org/package-query.git
cd package-query
makepkg -si

cd ~/Dev
sudo rm -R package-query

git clone https://aur.archlinux.org/yaourt.git
cd yaourt

makepkg -si

cd ~/Dev
rm -R yaourt
