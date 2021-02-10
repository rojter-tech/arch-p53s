#!/bin/bash
# Home config
GIT_USER_HOME=configuration/home
# Dirs
mkdir -p $GIT_USER_HOME/.scripts; mkdir -p ~/.scripts; \
  rsync -av ~/.scripts/* $GIT_USER_HOME/.scripts/
mkdir -p $GIT_USER_HOME/.xmonad; mkdir -p ~/.xmonad; \
  rsync -av ~/.xmonad/* $GIT_USER_HOME/.xmonad/
mkdir -p $GIT_USER_HOME/.config/i3; mkdir -p ~/.config/i3; \
  rsync -av ~/.config/i3/* $GIT_USER_HOME/.config/i3/
mkdir -p $GIT_USER_HOME/.config/polybar; mkdir -p ~/.config/polybar; \
  rsync -av ~/.config/polybar/* $GIT_USER_HOME/.config/polybar/
mkdir -p $GIT_USER_HOME/.config/systemd; mkdir -p ~/.config/systemd; \
  rsync -av ~/.config/systemd/* $GIT_USER_HOME/.config/systemd/
mkdir -p $GIT_USER_HOME/.config/autostart; mkdir -p ~/.config/autostart; \
  rsync -av ~/.config/autostart/* $GIT_USER_HOME/.config/autostart/
# Files
touch ~/.Xresources; touch $GIT_USER_HOME/.Xresources
touch ~/.xinitrc; touch $GIT_USER_HOME/.xinitrc
touch ~/.Xmodmap; touch $GIT_USER_HOME/.Xmodmap
touch ~/.xmobarrc; touch $GIT_USER_HOME/.xmobarrc
rsync -av ~/.Xresources $GIT_USER_HOME/.Xresources
rsync -av ~/.xinitrc $GIT_USER_HOME/.xinitrc
rsync -av ~/.Xmodmap $GIT_USER_HOME/.Xmodmap
rsync -av ~/.xmobarrc $GIT_USER_HOME/.xmobarrc

# System config
GIT_SYSTEM=configuration/system
# ---------------------------------------- #
RELPATH=usr/share/backgrounds/arch

CONFPATH=$GIT_SYSTEM/$RELPATH
SYSTEMPATH=/$RELPATH
sudo mkdir -p $CONFPATH;
sudo mkdir -p $SYSTEMPATH;
sudo rsync -rv \
  $SYSTEMPATH/* \
  $CONFPATH/
# ---------------------------------------- #
RELPATH=etc/X11/xorg.conf.d

CONFPATH=$GIT_SYSTEM/$RELPATH
SYSTEMPATH=/$RELPATH
sudo mkdir -p $CONFPATH;
sudo mkdir -p $SYSTEMPATH;
sudo rsync -rv \
  $SYSTEMPATH/* \
  $CONFPATH/
# ---------------------------------------- #
RELPATH=etc/default
FILENAME=grub

CONFPATH=$GIT_SYSTEM/$RELPATH
SYSTEMPATH=/$RELPATH

sudo mkdir -p $CONFPATH
sudo mkdir -p $SYSTEMPATH
sudo touch $SYSTEMPATH/$FILENAME
sudo touch $CONFPATH/$FILENAME
sudo rsync -v \
  $SYSTEMPATH/$FILENAME \
  $CONFPATH/$FILENAME
# ---------------------------------------- #
RELPATH=etc/X11
FILENAME=xorg.conf

CONFPATH=$GIT_SYSTEM/$RELPATH
SYSTEMPATH=/$RELPATH

sudo mkdir -p $CONFPATH
sudo mkdir -p $SYSTEMPATH
sudo touch $SYSTEMPATH/$FILENAME
sudo touch $CONFPATH/$FILENAME

sudo rsync -v \
  $SYSTEMPATH/$FILENAME \
  $CONFPATH/$FILENAME
# ---------------------------------------- #
# Files
rsync -v /etc/profile.conf $GIT_SYSTEM/etc/profile.conf
rsync -v /etc/gdm/custom.conf $GIT_SYSTEM/etc/gdm/custom.conf
rsync -v /etc/i3status.conf $GIT_USER_HOME/.config/i3/i3status.conf

# home dirs
#mkdir -p ~/.screenlayout; rsync -av $GIT_USER_HOME/.screenlayout/* ~/.screenlayout/
## home files
## system files
#/etc root
#/etc sub
#sudo mkdir -p /etc/X11; sudo rsync -v $GIT_SYSTEM/etc/X11/xorg.conf /etc/X11/xorg.conf
#
#sudo mkdir -p /etc/profile.d; sudo rsync -v $GIT_SYSTEM/etc/profile.d/hidpi.sh /etc/profile.d/hidpi.sh
#sudo mkdir -p /etc/lightdm; sudo rsync -v $GIT_SYSTEM/etc/lightdm/lightdm-gtk-greeter.conf /etc/lightdm/lightdm-gtk-greeter.conf
#/usr sub
