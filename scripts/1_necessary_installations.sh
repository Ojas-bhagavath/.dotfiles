#! /usr/bin/bash
 


# dnf installations
sudo dnf copr enable agriffis/neovim-nightly -y
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'



sudo dnf update --refresh -y
awk 'NR%3 == 0' < list.txt | xargs sudo dnf install -y --allowerasing



# flatpak installations
flatpak update
flatpak install flathub com.spotify.Client
flatpak install flathub com.mattjakeman.ExtensionManager
flatpak install flathub org.qbittorrent.qBittorrent
flatpak install flathub com.github.ahrm.sioyek
flatpak install flathub io.typora.Typora
flatpak install flathub net.ankiweb.Anki



echo ""
echo ""
echo "necessary installations complete!"
echo "stow nvim and zsh configs."
echo "your machine will reboot in 15 seconds!"
sleep 15
reboot
