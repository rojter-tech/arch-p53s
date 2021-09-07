#!/bin/bash
GIT_USER_HOME=configuration/home
GIT_SYSTEM=configuration/system
mkdir -p ~/.scripts; rsync -av $GIT_USER_HOME/.scripts/* ~/.scripts/
mkdir -p ~/.xmonad; rsync -av $GIT_USER_HOME/.xmonad/* ~/.xmonad/
mkdir -p ~/.config/i3; rsync -av $GIT_USER_HOME/.config/i3/* ~/.config/i3/
mkdir -p ~/.config/polybar; rsync -av $GIT_USER_HOME/.config/polybar/* ~/.config/polybar/
mkdir -p ~/.config/systemd; rsync -av $GIT_USER_HOME/.config/systemd/* ~/.config/systemd/
mkdir -p $GIT_USER_HOME/.config/autostart; mkdir -p ~/.config/autostart; \
  rsync -av $GIT_USER_HOME/.config/autostart/* ~/.config/autostart/
rsync -av $GIT_USER_HOME/.Xresources ~/.Xresources
rsync -av $GIT_USER_HOME/.xinitrc ~/.xinitrc
rsync -av $GIT_USER_HOME/.Xmodmap ~/.Xmodmap
rsync -av $GIT_USER_HOME/.xmobarrc ~/.xmobarrc
sudo rsync -v $GIT_SYSTEM/etc/profile.conf /etc/profile.conf
sudo rsync -v $GIT_SYSTEM/etc/gdm/custom.conf /etc/gdm/custom.conf
sudo rsync -v $GIT_USER_HOME/.config/i3/i3status.conf /etc/i3status.conf
sudo mkdir -p /usr/share/backgrounds/arch; sudo rsync -rv $GIT_SYSTEM/usr/share/backgrounds/arch/* /usr/share/backgrounds/arch
sudo mkdir -p /etc/default; sudo rsync -v $GIT_SYSTEM/etc/default/grub /etc/default/grub
sudo mkdir -p /etc/X11/xorg.conf.d; sudo rsync -vr $GIT_SYSTEM/etc/X11/xorg.conf.d/* /etc/X11/xorg.conf.d/
sudo mkdir -p /etc/X11; sudo rsync -v $GIT_SYSTEM/etc/X11/xorg.conf /etc/X11/xorg.conf
sudo mkdir -p /etc/lightdm; sudo rsync -vr $GIT_SYSTEM/etc/lightdm/* /etc/lightdm/

# home dirs
#mkdir -p ~/.screenlayout; rsync -av $GIT_USER_HOME/.screenlayout/* ~/.screenlayout/
## home files
## system files
#/etc root
#/etc sub
#sudo mkdir -p /etc/X11; sudo rsync -v $GIT_SYSTEM/etc/X11/xorg.conf /etc/X11/xorg.conf
#
#sudo mkdir -p /etc/profile.d; sudo rsync -v $GIT_SYSTEM/etc/profile.d/hidpi.sh /etc/profile.d/hidpi.sh
#
#/usr sub
