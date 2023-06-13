# .dotfiles
This repo contains my dotfiles.  
  
The scripts 0 and 1 are intended to be run on a fedora machine.  
My current fedora version is ```Fedora Linux 38 (Workstation Edition)```  
  
The script 3 is intended towards Asus Zenbooks with numpads embedded in trackpads.  
My laptop hardware model is ```Asus ZenBook UX425JA```.  
  
The nvim version that I'm using this config for is ```NVIM v0.10.0-dev-436+ga8ee4c7a8``` (nightly build, from ```agriffis/neovim-nightly``` copr repo).  

## Procedure to install my dotfiles 
1. Clone the repo

```bash
git clone --recurse-submodules https://github.com/Ojas-bhagavath/.dotfiles.git $HOME/Dotfiles
```

2. `cd` into Dotfiles

```bash
cd $HOME/Dotfiles
```

3. Run first initial setup script, do review it once

```bash
chmod u+x ./0_initialize.sh
./0_initialize.sh
```

4. Run second script which installs packages

```bash
chmod u+x ./1_necessary_installations.sh
./1_necessary_installations.sh
```
  
The zsh version that I'm using this config for is ```zsh 5.9```.  
  
The qutebrowser version that I'm using this config for is ```qutebrowser v2.5.2```.  