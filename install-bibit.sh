echo "Install everything (pacman)"
sudo pacman -Syyu --noconfirm git mecurial curl wget tree sc cmus espeak cowsay youtube-dl yaourt tmux zsh powerline-fonts neovim nodejs npm python ruby rubygems go php g++ qterminal gimp inkscape blender code telegram-desktop xfce4-screenshooter texlive-bin texlive-core texlive-fontsextra texlive-formatsextra texlive-bibtexextra typescript eslint python-jedi mesa mesa-demos jdk-openjdk jre-openjdk jre-openjdk-headless jdk8-openjdk jre8-openjdk scala scala-docs docker docker-compose minikube virtualbox arduino openvpn networkmanager-openvpn wireshark-qt nmap steam

echo "Install everything (yaourt)"
yaourt -Syu --noconfirm ruby-neovim python-neovim nodejs-neovim anaconda spotify slack-desktop brave-bin ulauncher tslint

echo "Fix brave"
echo kernel.unprivileged_userns_clone = 1 | sudo tee /etc/sysctl.d/00-local-userns.conf

echo "Install tmux plugin"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "Install dein"
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer-dein.sh
sh ./installer-dein.sh ~/.cache/dein

echo "Install zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Set configurations"
cp ./bibit/config/nvim/init.vim ~/.config/nvim/init.vim
cp ./bibit/tmux.conf ~/.tmux.conf
cp ./bibit/rmux.sh ~/.rmux.sh
cp ./bibit/zshrc.sh ~/.zshrc.sh

