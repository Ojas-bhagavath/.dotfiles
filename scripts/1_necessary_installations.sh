#! /usr/bin/bash
 


# dnf installations
sudo dnf update --refresh -y
cat list.txt | xargs sudo dnf install -y --allowerasing



# flatpak installations
flatpak install flathub com.spotify.Client
flatpak install flathub com.visualstudio.code
flatpak install flathub com.mattjakeman.ExtensionManager
flatpak install flathub org.qbittorrent.qBittorrent
flatpak install flathub com.github.ahrm.sioyek
flatpak install flathub io.typora.Typora


# install latest nightly build of neovim
sudo dnf copr enable agriffis/neovim-nightly -y
sudo dnf install neovim -y



echo "necessary installations complete!"
echo "stow nvim and zsh configs."


echo "your machine will reboot in 10 seconds!"
sleep 10
reboot
