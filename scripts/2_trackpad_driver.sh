#! /usr/bin/bash

sudo dnf install -y libevdev python-libevdev i2c-tools git

sudo modprobe i2c-dev

sudo i2cdetect -l

git clone https://github.com/mohamed-badaoui/asus-touchpad-numpad-driver $HOME/AsusTouchpadNumpad

cd asus-touchpad-numpad-driver

chmod +x install.sh

sudo ./install.sh

rm -rf $HOME/AsusTouchpadNumpad
