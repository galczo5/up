echo "!!! Installing xorg and dependencies"

sudo yaourt -S xorg xorg-xinit --noconfirm >> 03.log
sudo pacman -S xf86-input-keyboard xorg-xkbcomp --noconfirm >> 03.log
sudo pacman -S xorg-twm xorg-xclock xterm --noconfirm >> 03.log

echo "!!! Done, installing lightdm with gtk-greeter"

yaourt -S lightdm --noconfirm >> 03.log
yaourt -S lightdm-gtk-greeter --noconfirm >> 03.log
echo "greeter-session=lightdm-gtk-greeter" | sudo tee --append /etc/lightdm/lightdm.conf
sudo systemctl enable lightdm.service

echo "!!! Done, check 03.log"
