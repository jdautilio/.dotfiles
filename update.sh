#!/bin/bash

DOTS=/home/joel/.dotfiles

cp $HOME/.bashrc $DOTS/ &
cp $HOME/.config/kitty $DOTS/.config/ -r &
cp $HOME/.config/nvim $DOTS/.config/ -r &
cp $HOME/.config/xmonad/xmonad.hs $DOTS/.config/xmonad/ &
cp $HOME/.config/xmonad/scripts $DOTS/.config/xmonad/ -r &
cp $HOME/.config/polybar $DOTS/.config/ -r
