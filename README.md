# .dotfiles-fedora

This repository contains my dotfiles.
    
[script 0](https://github.com/ojas-bhagavath/.dotfiles-fedora/blob/main/scripts/0_initialize.sh) is intended to be run on a Fedora machine, typically on fresh install; it adds a bunch of lines to dnf.conf to make dnf installations faster, enables RPM Fusion repositories, adds Flathub repositories, and updates the machine.  

[script 1](https://github.com/ojas-bhagavath/.dotfiles-fedora/blob/main/scripts/1_necessary_installations.sh) is intended to be run on a Fedora machine, it installs a bunch of packages listed in [packages.txt](https://github.com/ojas-bhagavath/.dotfiles/blob/main/scripts/list.txt), and installs a few flatpak applications such as Spotify. It also enables ```agriffis/neovim-nightly``` copr repo and installs latest nightly build of neovim.  
  
My current fedora version is ```Fedora Linux 38 (Workstation Edition)```.  
  
[script 2](https://github.com/ojas-bhagavath/.dotfiles-fedora/blob/main/scripts/2_trackpad_driver.sh) is intended to be run on Asus Zenbooks with numpads embedded in trackpads. It installs the driver for the trackpad numpad.  
  
My laptop hardware model is ```Asus ZenBook UX425JA```.  
  
------

## Installation: 
1. Clone this repo:  
```bash
git clone --recurse-submodules git@github.com:ojas-bhagavath/.dotfiles-fedora.git $HOME/.dotfiles/
```  
  
2. `cd` into .dotfiles:  
```bash
cd $HOME/.dotfiles/scripts/
```  
  
3. Run the [script 0](https://github.com/ojas-bhagavath/.dotfiles-fedora/blob/main/scripts/0_initialize.sh), do review it once:  
```bash
chmod u+x ./0_initialize.sh
./0_initialize.sh
```  
  
4. Run the [script 1](https://github.com/ojas-bhagavath/.dotfiles-fedora/blob/main/scripts/1_necessary_installations.sh), it installs packages:  
```bash
chmod u+x ./1_necessary_installations.sh
./1_necessary_installations.sh
```  

------

## Further Configurations:  
  
After the above installation, to install [my terminal config](https://github.com/ojas-bhagavath/terminal#terminal), run:
```bash
rm $HOME/.zshrc
rm $HOME/.config/starship.toml
rm -rf $HOME/.config/zsh/
rm -rf $HOME/.config/alacritty/
cd $HOME/.dotfiles/
stow zsh
```  
  
The zsh version that I'm using this config for is ```zsh 5.9 (x86_65-redhat-linux-gnu)```.  
  
------  
    
After the above installation, to install [my neovim config](https://github.com/ojas-bhagavath/nvim#nvim), run:  
```bash
rm -rf $HOME/.config/nvim/
rm -rf $HOME/.local/share/nvim/
cd $HOME/.dotfiles/
stow nvim
```  
  
The nvim version that I'm using this config for is ```NVIM v0.10.0-dev+520-gbc67bbe44``` (nightly build, from ```agriffis/neovim-nightly``` copr repo).  
  
------  
  
After the above installation, to install [my qutebrowser config](https://github.com/ojas-bhagavath/qutebrowser#qutebrowser), run:  
```bash
rm -rf $HOME/.config/qutebrowser/
cd $HOME/.dotfiles/
stow qutebrowser
```  
  
The qutebrowser version that I'm using this config for is ```qutebrowser v2.5.2```.  

------

## Credits:  
* Created this repo and all my setup with endless support of [Ajay Vishnu](https://github.com/ajay-vishnu).
