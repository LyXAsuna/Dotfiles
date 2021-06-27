#bin/bash

chmod +x .scripts/*
chmod +x .config/rofi/*
chmod +x .config/polybar/modules/*
chmod +x .config/polybar/launch.sh
cp -a Wallpapers $HOME/
cp -a .config $HOME/
cp -a .scripts $HOME/
cp -r .bash_profile $HOME/
cp -r .bashrc $HOME/
cp -r .xinitrc $HOME/
