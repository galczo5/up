sudo yaourt -S xorg xorg-xinit
sudo pacman -S xf86-input-keyboard xorg-xkbcomp
sudo pacman -S xorg-twm xorg-xclock xterm

yaourt -S lightdm
yaourt -S lightdm-gtk-greeter
echo "greeter-session=lightdm-gtk-greeter" | sudo tee --append /etc/lightdm/lightdm.conf
sudo systemctl enable lightdm.service
