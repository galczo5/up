echo "!!! Installing emacs"

yaourt -S emacs --noconfirm >> 05.log

if [ -f ~/.emacs ]; then
    rm ~/.emacs
fi

ln -s ~/Dev/dotfiles/EMACS/.emacs ~/.emacs

echo "!!! Done, run emacs first not in daemon mode, check 05.log"
