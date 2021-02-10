#!/bin/bash
USERHOME=configuration/home
SYSTEM=configuration/system
mkdir -p ~/.scripts; rsync -av $USERHOME/.scripts/* ~/.scripts/
mkdir -p ~/.xmonad; rsync -av $USERHOME/.xmonad/* ~/.xmonad/
mkdir -p ~/.config/i3; rsync -av $USERHOME/.config/i3/* ~/.config/i3/
mkdir -p ~/.config/polybar; rsync -av $USERHOME/.config/polybar/* ~/.config/polybar/
mkdir -p ~/.config/systemd; rsync -av $USERHOME/.config/systemd/* ~/.config/systemd/
rsync -av $USERHOME/.Xresources ~/.Xresources
rsync -av $USERHOME/.xinitrc ~/.xinitrc
rsync -av $USERHOME/.Xmodmap ~/.Xmodmap
rsync -av $USERHOME/.xmobarrc ~/.xmobarrc
sudo rsync -v $SYSTEM/etc/profile.conf /etc/profile.conf
sudo rsync -v $SYSTEM/etc/gdm/custom.conf /etc/gdm/custom.conf
sudo rsync -v $USERHOME/.config/i3/i3status.conf /etc/i3status.conf
sudo mkdir -p /usr/share/backgrounds/arch; sudo rsync -rv $SYSTEM/usr/share/backgrounds/arch/* /usr/share/backgrounds/arch
sudo mkdir -p /etc/default; sudo rsync -v $SYSTEM/etc/default/grub /etc/default/grub
sudo mkdir -p /etc/X11/xorg.conf.d; sudo rsync -v $SYSTEM/etc/X11/xorg.conf.d/* /etc/X11/xorg.conf.d/
sudo mkdir -p /etc/X11; sudo rsync -v $SYSTEM/etc/X11/xorg.conf /etc/X11/xorg.conf

# home dirs
#mkdir -p ~/.screenlayout; rsync -av $USERHOME/.screenlayout/* ~/.screenlayout/
## home files
## system files
#/etc root
#/etc sub
#sudo mkdir -p /etc/X11; sudo rsync -v $SYSTEM/etc/X11/xorg.conf /etc/X11/xorg.conf
#
#sudo mkdir -p /etc/profile.d; sudo rsync -v $SYSTEM/etc/profile.d/hidpi.sh /etc/profile.d/hidpi.sh
#sudo mkdir -p /etc/lightdm; sudo rsync -v $SYSTEM/etc/lightdm/lightdm-gtk-greeter.conf /etc/lightdm/lightdm-gtk-greeter.conf
#/usr sub