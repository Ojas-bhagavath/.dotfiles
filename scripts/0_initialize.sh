#! /usr/bin/bash


# add stuff to dnf.conf to make downloads fast and other things
if  sudo cat /etc/dnf/dnf.conf | grep -q "custom" 
then
    echo "Done!"
else
    echo "" | sudo tee -a /etc/dnf/dnf.conf
    echo "# custom lines to make life better" | sudo tee -a /etc/dnf/dnf.conf
    echo "fastestmirror=True" | sudo tee -a /etc/dnf/dnf.conf
    echo "max_parallel_downloads=10" | sudo tee -a /etc/dnf/dnf.conf
    echo "defaultyes=True" | sudo tee -a /etc/dnf/dnf.conf
    echo "keepcache=True" | sudo tee -a /etc/dnf/dnf.conf
fi


sudo dnf install git -y


# enable RPM Fusion repository and make it discoverable on GNOME Software
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf groupupdate core


# enable flatpak repositories to install other applications
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo


# update the system
sudo dnf update --refresh -y
