echo "!!! Installing package-query"
cd ~/Dev

git clone https://aur.archlinux.org/package-query.git >> 01.log
cd package-query
makepkg -si

cd ~/Dev
sudo rm -R package-query

echo "!!! Done, installing yaourt"

git clone https://aur.archlinux.org/yaourt.git >> 01.log
cd yaourt

makepkg -si

cd ~/Dev
rm -R yaourt

echo "!!! Done, check 01.log"
