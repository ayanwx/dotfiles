mkdir -p $HOME/dotfiles/config/

# GUI
cp -r $HOME/.config/{kitty, polybar, bspwm, rofi, picom} config/

# CLI
cp -r $HOME/.config/{fish, fontconfig, neofetch, sxhkd} config/

# X
cp -r $HOME/{.xinitrc, .xprofile} config/

pacman -Q > pacman_list.txt
