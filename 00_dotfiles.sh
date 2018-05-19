echo "!!! Cloning github.com/galczo5/dotfiles"

if [ ! -d ~/Dev ]; then
    mkdir ~/Dev
fi

cd ~/Dev
git clone https://github.com/galczo5/dotfiles.git >> 00.log

echo "!!! Done, check 00.log"
